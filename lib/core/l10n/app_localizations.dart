import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appname.
  ///
  /// In en, this message translates to:
  /// **'Khedma'**
  String get appname;

  /// No description provided for @hellomessage.
  ///
  /// In en, this message translates to:
  /// **'Hello there'**
  String get hellomessage;

  /// No description provided for @header.
  ///
  /// In en, this message translates to:
  /// **'What do you want to do today?'**
  String get header;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Khedma'**
  String get welcomeTitle;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Complete government paperwork easily without long waiting lines'**
  String get welcomeSubtitle;

  /// No description provided for @everythingTitle.
  ///
  /// In en, this message translates to:
  /// **'Everything You Need'**
  String get everythingTitle;

  /// No description provided for @everythingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All the information for your government services in one place'**
  String get everythingSubtitle;

  /// No description provided for @readyTitle.
  ///
  /// In en, this message translates to:
  /// **'Ready to Get Started?'**
  String get readyTitle;

  /// No description provided for @readySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Join thousands who\'ve simplified their government paperwork'**
  String get readySubtitle;

  /// No description provided for @saveTime.
  ///
  /// In en, this message translates to:
  /// **'Save time with smart planning'**
  String get saveTime;

  /// No description provided for @avoidMistakes.
  ///
  /// In en, this message translates to:
  /// **'Avoid common mistakes'**
  String get avoidMistakes;

  /// No description provided for @trackApplications.
  ///
  /// In en, this message translates to:
  /// **'Track your applications'**
  String get trackApplications;

  /// No description provided for @realTimeUpdates.
  ///
  /// In en, this message translates to:
  /// **'Get real-time updates'**
  String get realTimeUpdates;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @startNow.
  ///
  /// In en, this message translates to:
  /// **'Start Using Khedma'**
  String get startNow;

  /// No description provided for @findOffice.
  ///
  /// In en, this message translates to:
  /// **'Find Office'**
  String get findOffice;

  /// No description provided for @locateOffices.
  ///
  /// In en, this message translates to:
  /// **'Locate nearest government offices'**
  String get locateOffices;

  /// No description provided for @mapView.
  ///
  /// In en, this message translates to:
  /// **'Map View'**
  String get mapView;

  /// No description provided for @listView.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get listView;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get distance;

  /// No description provided for @wait.
  ///
  /// In en, this message translates to:
  /// **'Wait'**
  String get wait;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get minutes;

  /// No description provided for @directions.
  ///
  /// In en, this message translates to:
  /// **'Directions'**
  String get directions;

  /// No description provided for @reportWaitTime.
  ///
  /// In en, this message translates to:
  /// **'Report Wait Time'**
  String get reportWaitTime;

  /// No description provided for @low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// No description provided for @savedServices.
  ///
  /// In en, this message translates to:
  /// **'Saved Services'**
  String get savedServices;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @guestUser.
  ///
  /// In en, this message translates to:
  /// **'Guest User'**
  String get guestUser;

  /// No description provided for @managePreferences.
  ///
  /// In en, this message translates to:
  /// **'Manage your preferences'**
  String get managePreferences;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @helpSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupport;

  /// No description provided for @appSettings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get appSettings;

  /// No description provided for @idRenewal.
  ///
  /// In en, this message translates to:
  /// **'ID Renewal'**
  String get idRenewal;

  /// No description provided for @passportApplication.
  ///
  /// In en, this message translates to:
  /// **'Passport Application'**
  String get passportApplication;

  /// No description provided for @birthCertificate.
  ///
  /// In en, this message translates to:
  /// **'Birth Certificate'**
  String get birthCertificate;

  /// No description provided for @homeTab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTab;

  /// No description provided for @mapTab.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get mapTab;

  /// No description provided for @profileTab.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTab;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @allServices.
  ///
  /// In en, this message translates to:
  /// **'All Services'**
  String get allServices;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchHint;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @twoDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'2 days ago'**
  String get twoDaysAgo;

  /// No description provided for @oneWeekAgo.
  ///
  /// In en, this message translates to:
  /// **'1 week ago'**
  String get oneWeekAgo;

  /// No description provided for @passport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get passport;

  /// No description provided for @marriageCertificate.
  ///
  /// In en, this message translates to:
  /// **'Marriage Certificate'**
  String get marriageCertificate;

  /// No description provided for @propertyDeed.
  ///
  /// In en, this message translates to:
  /// **'Property Deed'**
  String get propertyDeed;

  /// No description provided for @driversLicense.
  ///
  /// In en, this message translates to:
  /// **'Driver\'s License'**
  String get driversLicense;

  /// No description provided for @businessLicense.
  ///
  /// In en, this message translates to:
  /// **'Business License'**
  String get businessLicense;

  /// No description provided for @schoolRecords.
  ///
  /// In en, this message translates to:
  /// **'School Records'**
  String get schoolRecords;

  /// No description provided for @taxForms.
  ///
  /// In en, this message translates to:
  /// **'Tax Forms'**
  String get taxForms;

  /// No description provided for @openService.
  ///
  /// In en, this message translates to:
  /// **'Open {serviceTitle}'**
  String openService(String serviceTitle);

  /// No description provided for @noRouteDefined.
  ///
  /// In en, this message translates to:
  /// **'No route defined for {routeName}'**
  String noRouteDefined(String routeName);

  /// No description provided for @distanceWithUnit.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String distanceWithUnit(num distance);

  /// No description provided for @waitWithValue.
  ///
  /// In en, this message translates to:
  /// **'Wait: {waitTime}'**
  String waitWithValue(String waitTime);

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get spanish;

  /// No description provided for @centralGovOfficeName.
  ///
  /// In en, this message translates to:
  /// **'Central Government Office'**
  String get centralGovOfficeName;

  /// No description provided for @centralGovOfficeAddress.
  ///
  /// In en, this message translates to:
  /// **'123 Main Street, Downtown'**
  String get centralGovOfficeAddress;

  /// No description provided for @centralGovOfficePhone.
  ///
  /// In en, this message translates to:
  /// **'(555) 123-4567'**
  String get centralGovOfficePhone;

  /// No description provided for @centralGovOfficeWaitTime.
  ///
  /// In en, this message translates to:
  /// **'15-20 min'**
  String get centralGovOfficeWaitTime;

  /// No description provided for @northDistrictOfficeName.
  ///
  /// In en, this message translates to:
  /// **'North District Office'**
  String get northDistrictOfficeName;

  /// No description provided for @northDistrictOfficeAddress.
  ///
  /// In en, this message translates to:
  /// **'456 Oak Avenue, North District'**
  String get northDistrictOfficeAddress;

  /// No description provided for @northDistrictOfficePhone.
  ///
  /// In en, this message translates to:
  /// **'(555) 234-5678'**
  String get northDistrictOfficePhone;

  /// No description provided for @northDistrictOfficeWaitTime.
  ///
  /// In en, this message translates to:
  /// **'45-60 min'**
  String get northDistrictOfficeWaitTime;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
