#!/usr/bin/perl

use Getopt::Std;

my $version = "1.40.01";

my $bobcatSwap = "/usr/include/bobcat/fswap";

my %options = ();
getopts("cx", \%options);

sub getYes
{
    print("@_ [y/n]? ");
    <STDIN> =~ /^\s*y\s*$/;
}

sub existing
{
    -e $_[0] && !getYes("$_[0] exists. Overwrite");
}

sub makeDefaultConstructor
{
    $defaultconstructor = 1;

    local $file = "${dirname}1.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<C1;
#include "$dirname.ih"

${classname}::$classname()
//:
{
}
C1
    close(FILE);
}

sub makeCopyConstructor
{
    $copyconstructor = 1;

    local $file = "${dirname}2.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<CPCONS;
#include "$dirname.ih"

${classname}::$classname($classname const \&other)
//:
{
}
CPCONS
    close(FILE);
}

sub makeMoveConstructor
{
    $moveconstructor = 1;

    local $file = "${dirname}3.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }    

    print FILE <<MVCONS;
#include "$dirname.ih"

${classname}::$classname($classname \&\&tmp)
//:
{
    //swap(tmp);
    // When using swap, ensure that tmp's destructor detects that
    // it may immediately return, e.g., by setting one of tmp's
    // data members to 0
}
MVCONS
    close(FILE);
}

sub makeDestructor
{
    $destructor = 1;

    local $file = "destructor.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<D;
#include "$dirname.ih"

${classname}::~$classname()
{
    // move operations must allow the destructor to decide that no
    // destruction should be performed, e.g. by setting a pointer data
    // member to 0, returning immediately if this data member equals 0
}
D
    close(FILE);
}

sub makeAssignmentOperator
{
    $assignmentoperator = 1;

    local $file = "operatorassign1.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<OP1;
#include "$dirname.ih"

$classname \&${classname}::operator=($classname const \&other)
{
    $classname tmp(other);
    swap(tmp);
    return *this;
}
OP1
    close(FILE);
}


sub makeMoveAssignmentOperator
{
    $moveassignmentoperator = 1;

    local $file = "operatorassign2.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<OP1;
#include "$dirname.ih"

$classname \&${classname}::operator=($classname \&\&tmp)
{
    swap(tmp);
    return *this;
}
OP1
    close(FILE);
}


sub makeSwap
{
    $swap = 1;

    local $file = "swap.cc";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<OP1;
#include "$dirname.ih"

void ${classname}::swap($classname \&other)
{
    char buffer[sizeof($classname)];
    memcpy(buffer, this,   sizeof($classname));
    memcpy(static_cast<void *>(this),   \&other, sizeof($classname));
    memcpy(static_cast<void *>(\&other), buffer, sizeof($classname));
}
OP1
    close(FILE);
}

sub selectSwap()
{
    if (-e $bobcatSwap && getYes("use Bobcat's Swap"))
    {
        $useBobcatSwap = 1;
    }
    else
    {
        makeSwap();
    }
}

sub makeInternalHeader
{
    local $file = "$dirname.ih";

    return if existing $file;

    local $ns = $namespace ? "using namespace $namespace;" : "";

    open(FILE, ">$file") || die "Can't write $file: $!";

    print FILE "#include \"$dirname.h\"\n";

    if (defined $options{x})
    {
        print FILE "#include \"../xerr/xerr.ih\"\n";
    }
    else
    {
        print FILE "\n" ;
    }

    print FILE "#include <cstring>\n" if ($swap);
    print FILE "#include <utility>\n" if ($moveconstructor ||
                                          $moveassignmentoperator);

    print FILE "\n" .
               "using namespace std;\n";
               "//using namespace filesystem;\n";
    print FILE "using namespace FBB;\n" if ($useBobcatSwap);
    print FILE "$ns\n";
    close(FILE);
}

sub makeMemberFrame
{
    return if existing "frame";

    open(FILE, ">frame") || die "Can't write `frame': $!";

    if (defined $options{x})
    {
        print FILE "#define XERR\n";
    }

    print FILE <<FRAME;
#include "$dirname.ih"

${classname}::
{
}
FRAME
    close(FILE);
}


sub makeHeader
{
    local $file = "$dirname.h";

    return if existing $file;

    open(FILE, ">$file") || die "Can't write $file: $!";

    local $nsbegin;
    local $nsend;

    if ($namespace)
    {
        $nsbegin = "\nnamespace $namespace\n{\n";
        $nsend = "} // $namespace";
    }
    
    local $caps = uc $classname;

    print FILE <<H1;
#ifndef INCLUDED_${caps}_
#define INCLUDED_${caps}_

H1

    if ($useBobcatSwap)
    {
        print FILE "#include <bobcat/fswap>\n" .
                   "$nsbegin\n" .
                   "class $classname\n";
    }
    else
    {
        print FILE "$nsbegin\n" .
                   "class $classname\n";
    }


    print FILE <<H1;
{
    public:
H1

    print FILE <<H2 if $defaultconstructor;
        $classname();
H2

    print FILE <<H3 if $copyconstructor;
        $classname($classname const \&other);
H3

    print FILE <<H3a if $moveconstructor;
        $classname($classname \&\&tmp);
H3a

    print FILE <<H4 if $destructor;
        ~$classname();
H4
    
    print FILE <<H5 if $assignmentoperator;
        $classname \&operator=($classname const \&other);
H5

    print FILE <<H5a if $moveassignmentoperator;
        $classname \&operator=($classname \&\&tmp);
H5a

    print FILE <<H5 if $swap || $useBobcatSwap;
        void swap($classname \&other);
H5

    print FILE <<HP;

    private:
};
HP

    if ($useBobcatSwap)
    {
        print FILE <<HP0;

inline void $classname\::swap($classname \&other)
{
    FBB::fswap(*this, other);
}
HP0
    }

    print FILE <<HP2;
$nsend        
#endif
HP2

    close(FILE);
}

@ARGV || die "makeclass V $version.\n"                                      .
        "Usage: makeclass [-c] [-x] class [namespace]\n"                    .
        "Where: makeclass class.\n"                                         .
        "   -c: (opt.) append the class name to the file ./CLASSES.\n"      .
        "   -x: (opt.) write xerr.ih in the subdirectory xerr.\n"           .
        "       the class's internal header file contains\n"                .
        "           #include \"../xerr/xerr.ih\"\n"                         .
        "       and the frame file contains\n"                              .
        "           #define XERR\n"                                         .
        "   class: the name of the class to create in a subdir.\n"          .
        "          Capitals (and underscores) in \`class' are\n"            .
        "          transformed to lower case when creating the directory\n" .
        "          Capitals in the class name itself are kept.\n"           .
        "   [namespace]: (opt.) namespace to define the class in.\n"        .
        "\n"                                                                .
        "Bobcat's fswap header expected in $bobcatSwap\n"                   .
        "\n";

$classname = $ARGV[0];
$namespace = $ARGV[1];

$dirname = lc $classname;
$dirname =~ s/_//g;

if (defined $options{c})
{
    open(FILE, ">>CLASSES") || die "Can't append to CLASSES: $!";
    print FILE "$dirname\n";
    close(FILE);
}    

if (defined $options{x} and ! -e "xerr/xerr.ih") 
{
    print "writing `xerr.ih' in xerr\n";
    mkdir "xerr";
    open(FILE, ">xerr/xerr.ih") || die "Can't write xerr/xerr.ih: $!";
    print FILE <<XER;
// define XERR to activate the xerr/xerr(2) macros:
//      xerr(insertion) 
//          inserts the '<<' concatenated elements into std::cerr
//          preceded by the name of the source file, and ended by '\\n'
//      xerr2(insertion, code) 
//          performs the insertion if X is defined, and (unconditionally)
//          executes the statement(s) in `code'. `code' must be valid
//          C(++) code. 
//  
#ifdef XERR
    #include <iostream>
    #define xerr(insertion)  std::cerr << __FILE__": " << insertion << '\\n'
    #define xerr2(insertion, code) \\
                { std::cerr << __FILE__": " << insertion << '\\n';  code;  }
#else
    #define xerr(insertion) 
    #define xerr2(insertion, code) code
#endif

XER
    close(FILE);
}

print "constructing class $classname in directory $dirname\n";

if (-e $dirname && !getYes("$dirname exists. Continue"))
{
    exit(1);
}

mkdir($dirname);

chdir($dirname) || die "Can't chdir to $dirname: $!";

makeDefaultConstructor()    if getYes("make $classname()");

if (getYes("Allocation support"))
{
    makeCopyConstructor();
    makeDestructor();
    makeAssignmentOperator();

    if (getYes("Move support"))
    {
        makeMoveConstructor();
        makeMoveAssignmentOperator();
    }

    selectSwap();
}
elsif (getYes("swap support"))
{
    selectSwap();
}

makeHeader();
makeInternalHeader();
makeMemberFrame();

exit(0);