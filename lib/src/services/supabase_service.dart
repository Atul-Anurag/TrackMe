import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/activity.dart';
import '../models/expense.dart';
import '../models/goal.dart';
import '../models/income.dart';
import '../models/location_model.dart';
import '../models/user_model.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<List<Expense>> fetchExpenses() async {
    final response = await _client.from('expense').select().order('created_at', ascending: false).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => Expense.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }

  Future<List<LocationModel>> fetchLocations() async {
    final response = await _client.from('location').select().order('timestamp', ascending: false).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => LocationModel.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }

  Future<List<Income>> fetchIncomes() async {
    final response = await _client.from('income').select().order('created_at', ascending: false).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => Income.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }

  Future<List<UserModel>> fetchUsers() async {
    final response = await _client.from('user').select().order('name', ascending: true).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => UserModel.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }

  Future<List<Goal>> fetchGoals() async {
    final response = await _client.from('goals').select().order('created_at', ascending: false).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => Goal.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }

  Future<List<Activity>> fetchActivities() async {
    final response = await _client.from('activity').select().order('created_at', ascending: false).execute();
    final data = response.data as List<dynamic>?;
    if (response.error != null) {
      throw response.error!;
    }
    return data?.map((row) => Activity.fromMap(row as Map<String, dynamic>)).toList() ?? [];
  }
}
