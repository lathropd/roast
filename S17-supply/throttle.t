use v6;
use lib 't/spec/packages';

use Test;

plan 37;

dies-ok { Supply.throttle(1,1) }, 'can not be called as a class method';

diag "**** scheduling with {$*SCHEDULER.WHAT.perl}";

{
    my $min = 0;
    my $max = 10;
    my @seen;
    my $before = now;
    (1..10).Supply.throttle(1,.5).tap: {
        @seen.push($_);
        my $diff = now - $before;
        $max     = $max min now - $before;
        $min     = $min max now - $before;
        $before  = now;
    };
    sleep 6;
    is @seen, (1..10), 'did we see all of the element';
    ok $min > .5, 'difference between each at least .5 seconds';
    ok $max < .8, 'difference between each at most .8 seconds';
}

{
    my $min = 0;
    my $max = 10;
    my @seen;
    my $control = Supplier.new;
    my $before = now;
    (1..10).Supply.throttle(0,.5,:$control).tap: {
        @seen.push($_);
        my $diff = now - $before;
        $max     = $max min now - $before;
        $min     = $min max now - $before;
        $before  = now;
    };
    sleep 1;
    $control.emit( "limit:2" );
    sleep 3;
    is @seen, (1..10), 'did we see all of the element';
    ok $min >  0, 'difference between each at least something';
    ok $max < .5, 'difference between each at most .5 seconds';
}

for 1..10 -> $n {
    my @a; @a[9] = 0; # pre-size array to allow seamless multi-thread updates
    (1..10).Supply.throttle( $n, { @a[$_] = 1 } ).wait;
    is @a.sum, 10, "ok with $n at a time";
}

for 1..10 -> $n {
    my @a; @a[9] = 0; # pre-size array to allow seamless multi-thread updates
    my $before = now;
    (1..10).Supply.throttle( $n, { sleep rand; @a[$_] = 1 } ).wait;
    ok now < $before + ((12 - $n) * .6), "parallelism as expected with $n";
    is @a.sum, 10, "ok with $n at a time with random delay";
}

# vim: ft=perl6 expandtab sw=4
