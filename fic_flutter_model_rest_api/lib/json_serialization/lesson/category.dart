import 'dart:convert';

// {
//     "id": 1,
//     "name": "Clothes",
//     "image": "https://picsum.photos/640/640?r=3936",
//     "creationAt": "2023-05-31T00:14:31.000Z",
//     "updatedAt": "2023-05-31T00:14:31.000Z"
// }

class Category {
  final int id;
  final String name;
  final String image;
  final String creationAt;
  final String updatedAt;
  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'creationAt': creationAt,
      'updatedAt': updatedAt,
    };
  }

  // factory Category.fromMap(Map<String, dynamic> map) {
  //   return Category(
  //     id: map['id']?.toInt() ?? 0,
  //     name: map['name'] ?? '',
  //     image: map['image'] ?? '',
  //     creationAt: map['creationAt'] ?? '',
  //     updateAt: map['updatedAt'] ?? '',
  //   );
  // }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      creationAt: map['creationAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(jsonDecode(source));
}

void main() {
  String jsonString = '''
{
    "id": 1,
    "name": "Clothes",
    "image": "https://picsum.photos/640/640?r=3936",
    "creationAt": "2023-05-31T00:14:31.000Z",
    "updatedAt": "2023-05-31T00:14:31.000Z"
}
''';

//   final Map<String, dynamic> categoryMap = jsonDecode(jsonString);

//   print(categoryMap['namee']);
// }
  final Map<String, dynamic> categoryMap = jsonDecode(jsonString);
  print(categoryMap['name']);
}
