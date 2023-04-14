import 'dart:convert';

const jsonString = 'assets/data/output.json';
final json = jsonDecode(jsonString);

final categories = json['categories'] as List<dynamic>;
final categoryNames =
    categories.map((category) => category['name'] as String).toList();

final characters = categories.fold<Map<String, List<Map<String, dynamic>>>>({},
    (map, category) {
  final categoryName = category['name'] as String;
  final characters = category['characters'] as List<dynamic>;
  map[categoryName] = characters.cast<Map<String, dynamic>>().toList();
  return map;
});
