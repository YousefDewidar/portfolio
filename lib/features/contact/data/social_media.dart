class SocialMedia {
  final String github;
  final String facebook;
  final String linkedin;

  SocialMedia({
    required this.github,
    required this.facebook,
    required this.linkedin,
  });

  factory SocialMedia.fromJson(Map<String, dynamic> json) {
    return SocialMedia(
      github: json['github'],
      facebook: json['facebook'],
      linkedin: json['linkedin'],
    );
  }
}