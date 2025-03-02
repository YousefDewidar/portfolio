import 'package:my_portfolio/dummy_projects.dart';
import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/contact/data/skills.dart';
import 'package:my_portfolio/features/contact/data/social_media.dart';
import 'package:my_portfolio/features/home/data/models/project.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  // static final supabase = Supabase.instance.client;

  static Future<List<Project>> getAllProjects() async {
    // var dbData = await supabase.from('projects').select();
    // return dbData.map((item) => Project.fromJson(item)).toList();
    return getDummyProjectAsync();
  }

  static Future<List<Project>> getTopProjects() async {
    // var dbData = await supabase.from('projects').select().limit(6);
    // return dbData.map((item) => Project.fromJson(item)).toList();
    return getDummyProjectAsync();
  }

  static Future<Me> getMyinfo() async {
    // final response = await supabase.from('about_me').select().single();
    // return Me.fromJson(response);
    return Me(
      name: 'Yousef Mahmoud Dewidar',
      about: 'mmfjbkdf dm dmslfnv knvkldfn dfnjkndf dnfkjdfnb',
      email: 'ymahmoud1213@gmail',
      id: 1,
      phone: '01014502276',
      resume: '',
      skills: Skills(one: "", two: "two"),
      socialMedia: SocialMedia(github: "", facebook: "", linkedin: ""),
    );
  }
}
