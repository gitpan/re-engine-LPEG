
use strict;
use warnings;

use Test::More;
eval { use Test::Warn; };
if ($@) {
    plan skip_all => "Test::Warn required";
}
else {
    plan tests => 1;
}
use re::engine::LPEG;

TODO: {
local $TODO = "warn from XS";

warning_is { 'aaa' =~ m{'a'}i }
   "flags not supported by re::engine::LPEG"
}
