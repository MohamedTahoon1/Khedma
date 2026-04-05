class Office {
  final String name;
  final String address;
  final String phone;
  final double distance;
  final String waitTime;
  final String status;
  final List<String> services;

  const Office({
    required this.name,
    required this.address,
    required this.phone,
    required this.distance,
    required this.waitTime,
    required this.status,
    required this.services,
  });
}