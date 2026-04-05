import 'package:khedma/core/l10n/app_localizations.dart';

enum ServiceId {
  idRenewal,
  birthCertificate,
  passport,
  passportApplication,
  marriageCertificate,
  propertyDeed,
  driversLicense,
  businessLicense,
  schoolRecords,
  taxForms,
}

extension ServiceIdL10n on ServiceId {
  String title(AppLocalizations l10n) {
    switch (this) {
      case ServiceId.idRenewal:
        return l10n.idRenewal;
      case ServiceId.birthCertificate:
        return l10n.birthCertificate;
      case ServiceId.passport:
        return l10n.passport;
      case ServiceId.passportApplication:
        return l10n.passportApplication;
      case ServiceId.marriageCertificate:
        return l10n.marriageCertificate;
      case ServiceId.propertyDeed:
        return l10n.propertyDeed;
      case ServiceId.driversLicense:
        return l10n.driversLicense;
      case ServiceId.businessLicense:
        return l10n.businessLicense;
      case ServiceId.schoolRecords:
        return l10n.schoolRecords;
      case ServiceId.taxForms:
        return l10n.taxForms;
    }
  }
}

