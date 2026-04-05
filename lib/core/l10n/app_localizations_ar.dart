// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appname => 'Khedma';

  @override
  String get hellomessage => 'مرحباً';

  @override
  String get header => 'ماذا تريد أن تفعل اليوم؟';

  @override
  String get welcomeTitle => 'أهلاً بك في Khedma';

  @override
  String get welcomeSubtitle => 'خلّص أوراقك الحكومية بسهولة ومن غير طوابير';

  @override
  String get everythingTitle => 'كل اللي محتاجه';

  @override
  String get everythingSubtitle => 'كل معلومات الخدمات الحكومية في مكان واحد';

  @override
  String get readyTitle => 'جاهز تبدأ؟';

  @override
  String get readySubtitle => 'انضم لآلاف الناس اللي سهّلوا معاملاتهم الحكومية';

  @override
  String get saveTime => 'وفّر وقتك بالتخطيط الصح';

  @override
  String get avoidMistakes => 'اتجنب الأخطاء الشائعة';

  @override
  String get trackApplications => 'تابع طلباتك';

  @override
  String get realTimeUpdates => 'استلم تحديثات أول بأول';

  @override
  String get next => 'التالي';

  @override
  String get skip => 'تخطي';

  @override
  String get startNow => 'ابدأ استخدام Khedma';

  @override
  String get findOffice => 'دور على مكتب';

  @override
  String get locateOffices => 'اعرف أقرب المكاتب الحكومية ليك';

  @override
  String get mapView => 'عرض الخريطة';

  @override
  String get listView => 'عرض القائمة';

  @override
  String get distance => 'كم';

  @override
  String get wait => 'الانتظار';

  @override
  String get minutes => 'دقيقة';

  @override
  String get directions => 'الاتجاهات';

  @override
  String get reportWaitTime => 'بلّغ عن وقت الانتظار';

  @override
  String get low => 'قليل';

  @override
  String get medium => 'متوسط';

  @override
  String get high => 'زحمة';

  @override
  String get savedServices => 'الخدمات المحفوظة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get guestUser => 'مستخدم ضيف';

  @override
  String get managePreferences => 'إدارة تفضيلاتك';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get language => 'اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get helpSupport => 'المساعدة والدعم';

  @override
  String get appSettings => 'إعدادات التطبيق';

  @override
  String get idRenewal => 'تجديد البطاقة';

  @override
  String get passportApplication => 'تقديم جواز سفر';

  @override
  String get birthCertificate => 'شهادة ميلاد';

  @override
  String get homeTab => 'الرئيسية';

  @override
  String get mapTab => 'الخريطة';

  @override
  String get profileTab => 'الملف الشخصي';

  @override
  String get recent => 'الأحدث';

  @override
  String get allServices => 'كل الخدمات';

  @override
  String get searchHint => 'ابحث...';

  @override
  String get inProgress => 'قيد التنفيذ';

  @override
  String get completed => 'مكتمل';

  @override
  String get twoDaysAgo => 'منذ يومين';

  @override
  String get oneWeekAgo => 'منذ أسبوع';

  @override
  String get passport => 'جواز سفر';

  @override
  String get marriageCertificate => 'قسيمة زواج';

  @override
  String get propertyDeed => 'عقد ملكية';

  @override
  String get driversLicense => 'رخصة قيادة';

  @override
  String get businessLicense => 'رخصة تجارية';

  @override
  String get schoolRecords => 'سجلات مدرسية';

  @override
  String get taxForms => 'نماذج ضريبية';

  @override
  String openService(String serviceTitle) {
    return 'افتح $serviceTitle';
  }

  @override
  String noRouteDefined(String routeName) {
    return 'لا يوجد مسار معرّف لـ $routeName';
  }

  @override
  String distanceWithUnit(num distance) {
    return '$distance كم';
  }

  @override
  String waitWithValue(String waitTime) {
    return 'الانتظار: $waitTime';
  }

  @override
  String get spanish => 'الإسبانية';

  @override
  String get centralGovOfficeName => 'مكتب الحكومة المركزي';

  @override
  String get centralGovOfficeAddress => '١٢٣ الشارع الرئيسي، وسط البلد';

  @override
  String get centralGovOfficePhone => '(555) 123-4567';

  @override
  String get centralGovOfficeWaitTime => '15-20 دقيقة';

  @override
  String get northDistrictOfficeName => 'مكتب الحي الشمالي';

  @override
  String get northDistrictOfficeAddress => '٤٥٦ شارع أوك، الحي الشمالي';

  @override
  String get northDistrictOfficePhone => '(555) 234-5678';

  @override
  String get northDistrictOfficeWaitTime => '45-60 دقيقة';
}
