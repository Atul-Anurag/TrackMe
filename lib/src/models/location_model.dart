class LocationModel {
  final int id;
  final double latitude;
  final double? longitude;
  final DateTime? timestamp;

  LocationModel({
    required this.id,
    required this.latitude,
    this.longitude,
    this.timestamp,
  });

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      id: map['id'] as int,
      latitude: (map['latitude'] as num).toDouble(),
      longitude: map['longitude'] != null ? (map['longitude'] as num).toDouble() : null,
      timestamp: map['timestamp'] != null ? DateTime.parse(map['timestamp'] as String) : null,
    );
  }
}
