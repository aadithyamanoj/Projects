use strict;
use warnings;
use Text::CSV;

my $csv_file = "test_out";
my $result_dir = "results";
my $vsim_command = "vsim -c -do";
my $testbench = "regfile_tb"

mkdir $result_dir unless -d $result_dir;

my $csv = Text::CSV->new({binary => 1, autho_dag =>1});