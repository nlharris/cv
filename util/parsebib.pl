#!/usr/bin/perl
my $t = shift;
while(<>) {
    if (m/^@(\w+)\{(.*),/) {
        if ($1 eq $t) {
            my $id = $2;
            if ($id =~ m/(\d+)/) {
                printf ' %s & \bibentry{%s} \\\\', $1, $id;
                print "\n";
            }
            else {
                die "no year for $id";
            }
        }
    }
}
