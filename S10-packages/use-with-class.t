use v6;
use Test;

plan 1;

# test that 'use' imports class names defined in importet packages

BEGIN { @*INC.unshift('t/spec/packages/'); };
use UseTest;

eval_lives_ok 'Stupid::Class.new()', 'can instantiate object of "imported" class';

# vim: ft=perl6
