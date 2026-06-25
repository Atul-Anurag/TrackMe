class Income {
  final String createdBy;
  final double? amount;
  final String? category;
  final DateTime? createdAt;
  final int id;

  Income({
    required this.createdBy,
    this.amount,
    this.category,
    this.createdAt,
    required this.id,
  });

  factory Income.fromMap(Map<String, dynamic> map) {
    return Income(
      createdBy: map['created_by'] as String,
      amount: map['amount'] != null ? (map['amount'] as num).toDouble() : null,
      category: map['category'] as String?,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at'] as String) : null,
      id: map['id'] as int,
    );
  }
}
