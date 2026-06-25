class Expense {
  final int id;
  final DateTime? createdAt;
  final String? createdBy;
  final String? bankName;
  final String? merchentName;
  final int? location;
  final int? amountDeducted;
  final String? category;

  Expense({
    required this.id,
    this.createdAt,
    this.createdBy,
    this.bankName,
    this.merchentName,
    this.location,
    this.amountDeducted,
    this.category,
  });

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'] as int,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at'] as String) : null,
      createdBy: map['created_by'] as String?,
      bankName: map['bank_name'] as String?,
      merchentName: map['merchent_name'] as String?,
      location: map['location'] as int?,
      amountDeducted: map['amount_deducted'] as int?,
      category: map['category'] as String?,
    );
  }
}
