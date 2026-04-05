// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appname => 'Khedma';

  @override
  String get hellomessage => 'Hello there';

  @override
  String get header => 'What do you want to do today?';

  @override
  String get welcomeTitle => 'Welcome to Khedma';

  @override
  String get welcomeSubtitle =>
      'Complete government paperwork easily without long waiting lines';

  @override
  String get everythingTitle => 'Everything You Need';

  @override
  String get everythingSubtitle =>
      'All the information for your government services in one place';

  @override
  String get readyTitle => 'Ready to Get Started?';

  @override
  String get readySubtitle =>
      'Join thousands who\'ve simplified their government paperwork';

  @override
  String get saveTime => 'Save time with smart planning';

  @override
  String get avoidMistakes => 'Avoid common mistakes';

  @override
  String get trackApplications => 'Track your applications';

  @override
  String get realTimeUpdates => 'Get real-time updates';

  @override
  String get next => 'Next';

  @override
  String get skip => 'Skip';

  @override
  String get startNow => 'Start Using Khedma';

  @override
  String get findOffice => 'Find Office';

  @override
  String get locateOffices => 'Locate nearest government offices';

  @override
  String get mapView => 'Map View';

  @override
  String get listView => 'List View';

  @override
  String get distance => 'km';

  @override
  String get wait => 'Wait';

  @override
  String get minutes => 'min';

  @override
  String get directions => 'Directions';

  @override
  String get reportWaitTime => 'Report Wait Time';

  @override
  String get low => 'Low';

  @override
  String get medium => 'Medium';

  @override
  String get high => 'High';

  @override
  String get savedServices => 'Saved Services';

  @override
  String get settings => 'Settings';

  @override
  String get guestUser => 'Guest User';

  @override
  String get managePreferences => 'Manage your preferences';

  @override
  String get notifications => 'Notifications';

  @override
  String get language => 'Language';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get helpSupport => 'Help & Support';

  @override
  String get appSettings => 'App Settings';

  @override
  String get idRenewal => 'ID Renewal';

  @override
  String get passportApplication => 'Passport Application';

  @override
  String get birthCertificate => 'Birth Certificate';

  @override
  String get homeTab => 'Home';

  @override
  String get mapTab => 'Map';

  @override
  String get profileTab => 'Profile';

  @override
  String get recent => 'Recent';

  @override
  String get allServices => 'All Services';

  @override
  String get searchHint => 'Search...';

  @override
  String get inProgress => 'In Progress';

  @override
  String get completed => 'Completed';

  @override
  String get twoDaysAgo => '2 days ago';

  @override
  String get oneWeekAgo => '1 week ago';

  @override
  String get passport => 'Passport';

  @override
  String get marriageCertificate => 'Marriage Certificate';

  @override
  String get propertyDeed => 'Property Deed';

  @override
  String get driversLicense => 'Driver\'s License';

  @override
  String get businessLicense => 'Business License';

  @override
  String get schoolRecords => 'School Records';

  @override
  String get taxForms => 'Tax Forms';

  @override
  String openService(String serviceTitle) {
    return 'Open $serviceTitle';
  }

  @override
  String noRouteDefined(String routeName) {
    return 'No route defined for $routeName';
  }

  @override
  String distanceWithUnit(num distance) {
    return '$distance km';
  }

  @override
  String waitWithValue(String waitTime) {
    return 'Wait: $waitTime';
  }

  @override
  String get spanish => 'Español';

  @override
  String get centralGovOfficeName => 'Central Government Office';

  @override
  String get centralGovOfficeAddress => '123 Main Street, Downtown';

  @override
  String get centralGovOfficePhone => '(555) 123-4567';

  @override
  String get centralGovOfficeWaitTime => '15-20 min';

  @override
  String get northDistrictOfficeName => 'North District Office';

  @override
  String get northDistrictOfficeAddress => '456 Oak Avenue, North District';

  @override
  String get northDistrictOfficePhone => '(555) 234-5678';

  @override
  String get northDistrictOfficeWaitTime => '45-60 min';
}
