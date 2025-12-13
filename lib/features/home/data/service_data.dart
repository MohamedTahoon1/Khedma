import 'package:flutter/material.dart';
import 'package:khedma/features/home/data/service_model.dart';


final List<ServiceItem> servicesData = [
  ServiceItem(
    title: "شهادة الميلاد",
    subtitle: "استخراج شهادة ميلاد جديدة",
    icon: Icons.cake,
    iconColor: Colors.blue,
  ),
  ServiceItem(
    title: "تجديد الهوية",
    subtitle: "إجراءات تجديد بطاقة الهوية الوطنية",
    icon: Icons.credit_card,
    iconColor: Colors.blue,
  ),
  ServiceItem(
    title: "عقد الزواج",
    subtitle: "توثيق عقد الزواج رسمياً",
    icon: Icons.favorite,
    iconColor: Colors.red,
  ),
  ServiceItem(
    title: "جواز السفر",
    subtitle: "خطوات الحصول على جواز سفر",
    icon: Icons.flight_takeoff,
    iconColor: Colors.blue,
  ),
];
