// Imagine you work for Crayola and your boss just told you that the Crayola1990 API needs a url slug generated for all of the color names.
// To do this, you need to lowercase and hyphenate each color in the list below:  'Sunset Orange' -> 'sunset-orange'
// You cannot edit the values in the list by hand as your boss wants code that can be applied to any set of crayola boxes in the future.
//
// Rules
//  - lowercase everything
//  - join the words with a single hyphen (watch out for extra spaces)
//  - remove apostrophes
//  - return a NEW list, leave the original untouched
//
// Expected: scarlet, sunset-orange, macaroni-and-cheese, robins-egg-blue, wild-blue-yonder, purple-mountains-majesty,
//           tickle-me-pink, pink-sherbert, jazzberry-jam, granny-smith-apple, mango-tango, tickle-me-pink
//
// BONUS (only if time remains): when two names produce the same slug, add a numeric suffix to the later ones
//           (the last item becomes tickle-me-pink-2)

const crayola1990 = [
  'Scarlet',
  'Sunset Orange',
  'Macaroni and Cheese',
  "Robin's Egg Blue",
  '  Wild Blue Yonder ',
  "Purple Mountains' Majesty",
  'Tickle Me Pink',
  'Pink  Sherbert',
  'Jazzberry Jam',
  'Granny Smith Apple',
  'Mango Tango',
  'TICKLE ME PINK',
];

List<String> slugify(List<String> names) {
  final seen = <String, int>{};

  return names.map((name) {
    final slug = name
        .toLowerCase()
        .replaceAll("'", '')
        .trim()
        .split(RegExp(r'\s+'))
        .join('-');

    // BONUS: suffix repeated slugs with -2, -3, ...
    final count = (seen[slug] ?? 0) + 1;
    seen[slug] = count;
    return count == 1 ? slug : '$slug-$count';
  }).toList();
}

void main() {
  print(slugify(crayola1990));
}
