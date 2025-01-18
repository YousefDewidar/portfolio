
class Skills {
  final String one;
  final String two;

  Skills({required this.one, required this.two});

  factory Skills.fromJson(Map<String, dynamic> json) {
    return Skills(one: json['one'], two: json['two']);
  }
}
