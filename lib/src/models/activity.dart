class Activity {
  final int id;
  final DateTime? createdAt;
  final String? name;
  final String? description;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? streak;
  final int? currentCount;
  final bool? isHabit;
  final String? reminder;
  final String? frequency;
  final int? weight;
  final String? createdBy;

  Activity({
    required this.id,
    this.createdAt,
    this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.streak,
    this.currentCount,
    this.isHabit,
    this.reminder,
    this.frequency,
    this.weight,
    this.createdBy,
  });

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      id: map['id'] as int,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at'] as String) : null,
      name: map['name'] as String?,
      description: map['description'] as String?,
      startDate: map['start_date'] != null ? DateTime.parse(map['start_date'] as String) : null,
      endDate: map['end_date'] != null ? DateTime.parse(map['end_date'] as String) : null,
      streak: map['streak'] as int?,
      currentCount: map['current_count'] as int?,
      isHabit: map['is_habit'] as bool?,
      reminder: map['reminder'] as String?,
      frequency: map['frequency'] as String?,
      weight: map['weight'] as int?,
      createdBy: map['created_by'] as String?,
    );
  }
}
