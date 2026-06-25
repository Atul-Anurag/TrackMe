import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrackMe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Supabase Tracker', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _NavigationCard(
                    label: 'Expenses',
                    icon: Icons.attach_money,
                    route: '/expenses',
                  ),
                  _NavigationCard(
                    label: 'Income',
                    icon: Icons.savings,
                    route: '/income',
                  ),
                  _NavigationCard(
                    label: 'Goals',
                    icon: Icons.flag,
                    route: '/goals',
                  ),
                  _NavigationCard(
                    label: 'Activities',
                    icon: Icons.fitness_center,
                    route: '/activities',
                  ),
                  _NavigationCard(
                    label: 'Locations',
                    icon: Icons.place,
                    route: '/locations',
                  ),
                  _NavigationCard(
                    label: 'Users',
                    icon: Icons.person,
                    route: '/users',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;

  const _NavigationCard({
    required this.label,
    required this.icon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(context, route),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.teal.shade700),
              const SizedBox(height: 12),
              Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
