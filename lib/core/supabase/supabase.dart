import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/contact/data/skills.dart';
import 'package:my_portfolio/features/contact/data/social_media.dart';
import 'package:my_portfolio/features/home/data/models/project.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final supabase = Supabase.instance.client;

  static Future<List<Project>> getAllProjects(String table) async {
    var dbData = await supabase.from(table).select();
    return dbData.map((item) => Project.fromJson(item)).toList();
  }

  static Future<List<Project>> getTopProjects() async {
    var dbData = await supabase.from('projects').select().limit(6);
    return dbData.map((item) => Project.fromJson(item)).toList();
  }

  static Future<Me> getMyinfo() async {
    // final response = await supabase.from('about_me').select().single();
    // return Me.fromJson(response);
    return Me(
      name: 'Yash Dave',
      about: '',
      email: '',
      id: 1,
      phone: '',
      resume: '',
      skills: Skills(one: "", two: "two"),
      socialMedia: SocialMedia(github: "", facebook: "", linkedin: ""),
    );
  }
}
