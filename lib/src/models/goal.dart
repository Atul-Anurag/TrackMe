class Goal {
  final int id;
  final DateTime? createdAt;
  final String? createdBy;
  final String? name;
  final String? description;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? status;

  Goal({
    required this.id,
    this.createdAt,
    this.createdBy,
    this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.status,
  });

  factory Goal.fromMap(Map<String, dynamic> map) {
    return Goal(
      id: map['id'] as int,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at'] as String) : null,
      createdBy: map['created_by'] as String?,
      name: map['name'] as String?,
      description: map['description'] as String?,
      startDate: map['start_date'] != null ? DateTime.parse(map['start_date'] as String) : null,
      endDate: map['end_date'] != null ? DateTime.parse(map['end_date'] as String) : null,
      status: map['status'] as String?,
    );
  }
}
