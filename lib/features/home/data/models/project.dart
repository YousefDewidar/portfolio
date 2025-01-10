
import 'package:my_portfolio/features/home/data/models/links.dart';

class Project {
  final int id;
  final String name;
  final String desc;
  final String state;
  final String date;
  final String img;
  final Links links;
  final List<String> languages;
  Project({
    required this.id,
    required this.name,
    required this.desc,
    required this.state,
    required this.date,
    required this.img,
    required this.links,
    required this.languages,
  });

  factory Project.fromJson(Map<String, dynamic> data) {
    return Project(
      id: data['id'] as int,
      name: data['name'] as String,
      desc: data['descrption'] as String,
      state: data['state'] as String,
      date: data['date'] as String,
      img: data['img'] as String,
      links: Links.fromJson(data['links'] as Map<String, dynamic>),
      languages: List<String>.from(data['languages']),
    );
  }
}
