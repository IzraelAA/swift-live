void main() {
  // 1. Replace the existing values with your own information, then add a new property named city.
  final me = <String, dynamic>{
    'name': 'Panca Adnan Andrian',
    'age': 27,
    'hair color': 'black',
  };
  me['city'] = 'Jakarta';

  // 2. Iterate over the object and print the property (key) names.
  //    Expected: name, age, hair color, city (order may vary)
  for (final key in me.keys) {
    print(key);
  }
}
