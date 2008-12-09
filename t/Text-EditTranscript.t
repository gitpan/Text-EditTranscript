
use Test::More tests => 4;
BEGIN { use_ok('Text::EditTranscript',qw(EditTranscript)) };

my $string = "foo";
my $string2 = "fo0";

my $res = EditTranscript($string,$string2);

ok($res eq "--S","Testing substitution");

$string2 = "fo";

$res = EditTranscript($string,$string2);

ok($res eq "-D-","Testing deletion");

$string2 = "fooo";

$res = EditTranscript($string,$string2);

ok($res eq "-I--","Testing insertion");
