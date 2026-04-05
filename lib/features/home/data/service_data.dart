import 'package:flutter/material.dart';
import 'package:khedma/core/models/service_id.dart';

class ServiceTileData {
  final ServiceId id;
  final IconData icon;
  final Color bgColor;

  const ServiceTileData({
    required this.id,
    required this.icon,
    required this.bgColor,
  });

  static const samples = <ServiceTileData>[
    ServiceTileData(id: ServiceId.idRenewal, icon: Icons.credit_card, bgColor: Color(0xFF6EA8FE)),
    ServiceTileData(id: ServiceId.birthCertificate, icon: Icons.child_care, bgColor: Color(0xFFFFC1E3)),
    ServiceTileData(id: ServiceId.passport, icon: Icons.receipt_long, bgColor: Color(0xFFE1BEE7)),
    ServiceTileData(id: ServiceId.marriageCertificate, icon: Icons.favorite, bgColor: Color(0xFFFFCDD2)),
    ServiceTileData(id: ServiceId.propertyDeed, icon: Icons.home, bgColor: Color(0xFFD7FFD9)),
    ServiceTileData(id: ServiceId.driversLicense, icon: Icons.drive_eta, bgColor: Color(0xFFFFF3C4)),
    ServiceTileData(id: ServiceId.businessLicense, icon: Icons.work, bgColor: Color(0xFFD3E5FF)),
    ServiceTileData(id: ServiceId.schoolRecords, icon: Icons.school, bgColor: Color(0xFFBDF5E8)),
    ServiceTileData(id: ServiceId.taxForms, icon: Icons.trending_up, bgColor: Color(0xFFFFE0B2)),
  ];
}
