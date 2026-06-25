import 'package:flutter/material.dart';

import 'screens/activity_list_screen.dart';
import 'screens/expense_list_screen.dart';
import 'screens/goals_list_screen.dart';
import 'screens/home_screen.dart';
import 'screens/income_list_screen.dart';
import 'screens/location_list_screen.dart';
import 'screens/users_list_screen.dart';

class TrackMeApp extends StatelessWidget {
  const TrackMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrackMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        appBarTheme: AppBarTheme(
          elevation: 2,
          backgroundColor: Colors.teal.shade700,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ExpenseListScreen.routeName: (context) => const ExpenseListScreen(),
        IncomeListScreen.routeName: (context) => const IncomeListScreen(),
        GoalsListScreen.routeName: (context) => const GoalsListScreen(),
        ActivityListScreen.routeName: (context) => const ActivityListScreen(),
        LocationListScreen.routeName: (context) => const LocationListScreen(),
        UsersListScreen.routeName: (context) => const UsersListScreen(),
      },
    );
  }
}
