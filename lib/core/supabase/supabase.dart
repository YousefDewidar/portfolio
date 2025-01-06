import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final supabase = Supabase.instance.client;

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    var dbData = supabase.from(table).select();
    var data = await dbData;
    log(data.toString());
    return data;
  }
}
