# Patterns for the Bello orthography
const bello_patterns = Tuple{Regex, Union{Char, Nothing}}[
    (r"y(?=\b)"i      , 'i')  # /i/   *Y  ->  *I
    (r"g(?=[eéií])"i  , 'j')  # /x/   G   ->  J
    (r"gu(?=[eéií])"i , 'g')  # /g/   GU  ->  G*
    (r"ü"i            , 'u')  # /gu/  GÜ  ->  GU
    (r"qu"i           , 'q')  # /k/   QU  ->  Q
    (r"c(?=[^eéiíh])"i, 'q')  # /k/   C   ->  Q
    (r"c(?=[eéií])"i  , 'z')  # /θ/   C   ->  Z, distinción
    (r"(?<=[^c])h"i, nothing) # / /   H   ->  Ø
]

# Patterns for the Korreas orthography
# This one is actually much more complex, and includes a lot on
# the simplification of consonant clusters. These are only the basics.
const korreas_patterns  = Tuple{Regex, Union{Char, Nothing}}[
    (r"y"i            , 'i')  # /i/   Y   ->  I. This one happens everywhere
    (r"j"i            , 'x')  # /x/   J   ->  X
    (r"g(?=[eéií])"i  , 'x')  # /x/   G   ->  X
    (r"gu(?=[eéií])"i , 'g')  # /gu/  GU  ->  G*
    (r"qu"i           , 'k')  # /k/   QU  ->  K
    (r"c(?=[^eéiíh])"i, 'k')  # /k/   C   ->  K
    (r"c(?=[eéií])"i  , 'z')  # /θ/   C   ->  Z, distinción
    (r"(?<=[^c])h"i, nothing) # / /   H   ->  Ø
]

# Patterns for the Vallejo orthography
# Note that this is the most Latin America-centric of the three
const vallejo_patterns = Tuple{Regex, Union{Char, Nothing}}[
    (r"y(?=\b)"i      , 'i')  # /i/   *Y  ->  *I
    (r"g(?=[eéií])"i  , 'j')  # /x/   G   ->  J
    (r"gu(?=[eéií])"i , 'g')  # /g/   GU  ->  G*
    (r"ü"i            , 'u')  # /gu/  GÜ  ->  GU
    (r"qu"i           , 'k')  # /k/   QU  ->  K
    (r"c(?=[^eéiíh])"i, 'k')  # /k/   C   ->  K
    (r"c(?=[eéií])"i  , 's')  # /s/   C   ->  S, seseo
    (r"z"i            , 's')  # /s/   Z   ->  S, seseo
    (r"ch"i           , 'ṣ')  # /tʃ/  CH  ->  Ṣ, "ese rara"
    (r"(?<=[^c])h"i, nothing) # / /   H   ->  Ø
    (r"ll"i           , 'ḷ')  # /ʎ/   LL  ->  Ḷ, "ele rara"
    (r"\br|rr"i       , 'ṛ')  # /r/   RR  ->  Ṛ, "erre rara"
    (r"v"i            , 'b')  # /β/   B   ->  V, betacismo
]
