import 'package:my_portfolio/features/home/data/models/project.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final supabase = Supabase.instance.client;

  static Future<List<Project>> getAllProjects(String table) async {
    var dbData = supabase.from(table).select();
    var data = await dbData;

    return data.map((item) => Project.fromJson(item)).toList();
  }

  static Future<List<Project>> getTopProjects() async {
    var dbData = supabase.from('projects').select().limit(6);
    var data = await dbData;
    return data.map((item) => Project.fromJson(item)).toList();
  }
}
