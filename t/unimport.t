use Test::More tests => 3;
BEGIN {
    require re::engine::LPEG;
    re::engine::LPEG->import;
    ok(exists $^H{regcomp}, '$^H{regcomp} exists');
    cmp_ok($^H{regcomp}, '!=', 0);
    re::engine::LPEG->unimport;
    ok(!exists $^H{regcomp}, '$^H{regcomp} deleted');
}
