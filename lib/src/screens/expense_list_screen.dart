import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/expense.dart';
import '../services/supabase_service.dart';

class ExpenseListScreen extends StatelessWidget {
  static const routeName = '/expenses';
  final SupabaseService _service = SupabaseService();

  const ExpenseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expenses')),
      body: FutureBuilder<List<Expense>>(
        future: _service.fetchExpenses(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final expenses = snapshot.data ?? [];
          if (expenses.isEmpty) {
            return const Center(child: Text('No expenses found'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: expenses.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final item = expenses[index];
              return Card(
                elevation: 1,
                child: ListTile(
                  title: Text(item.merchentName ?? 'Unknown merchant'),
                  subtitle: Text(item.category ?? 'Category unavailable'),
                  trailing: Text('₹${item.amountDeducted ?? 0}', style: const TextStyle(fontWeight: FontWeight.bold)),
                  isThreeLine: true,
                  dense: false,
                  subtitleTextStyle: const TextStyle(fontSize: 14),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
