import 'package:my_portfolio/features/contact/data/skills.dart';
import 'package:my_portfolio/features/contact/data/social_media.dart';

class Me {
  final int id;
  final String resume;
  final SocialMedia socialMedia;
  final String phone;
  final String email;
  final String name;
  final String about;
  final Skills skills;

  Me({
    required this.about,
    required this.id,
    required this.resume,
    required this.socialMedia,
    required this.phone,
    required this.email,
    required this.name,
    required this.skills,
  });

  factory Me.fromJson(Map<String, dynamic> json) {
    return Me(
      id: json['id'],
      resume: json['resume'],
      socialMedia: SocialMedia.fromJson(json['social_media']),
      phone: json['phone'],
      email: json['email'],
      name: json['name'],
      about: json['about'],
      skills: Skills.fromJson(json['skills']),
    );
  }
}
