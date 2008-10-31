BEGIN { %ENV = () }

use strict;
use Test::More tests => 4;
use re::engine::LPEG;

ok("Hello, world" !~ m{ ( "Moose" / "Mo" ) ", " { "world" } });
is($1, undef);

no re::engine::LPEG;
is(eval '"Hello, world" =~ /(?<=Moose|Mo), (world)/', undef);

SKIP:
{
    skip('fork? on Windows', 1) if ($^O eq 'MSWin32');
if (fork) {
    ok(1);
}
}

