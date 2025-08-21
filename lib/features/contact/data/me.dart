import 'package:my_portfolio/features/contact/data/social_media.dart';

class Me {
  final int id;
  final String resume;
  final SocialMedia socialMedia;
  final String phone;
  final String email;
  final String name;
  final String about;

  Me({
    required this.about,
    required this.id,
    required this.resume,
    required this.socialMedia,
    required this.phone,
    required this.email,
    required this.name,
  });

  static Me getMyInfo() => Me(
        about:
            "I'm a Flutter Developer and UI/UX Designer with 1 year of experience.",
        id: 1,
        resume:
            'https://drive.google.com/file/d/1LM5D9QjzQlbaRtfuWkLn-YuB9FS2CL2a/view?usp=drive_link',
        socialMedia: SocialMedia(
          facebook: "https://www.facebook.com/yousef.dewidar.793331",
          github: "https://github.com/YousefDewidar",
          linkedin: "https://www.linkedin.com/in/yousefdewidar/",
        ),
        phone: "01014502276",
        email: "ymahmoud1213@gmail.com",
        name: "Yousef Dewidar",
      );
}
