.class public Landroid/sec/enterprise/auditlog/AuditEvents;
.super Ljava/lang/Object;
.source "AuditEvents.java"


# static fields
.field public static final blacklist AUDIT_ACCOUNT_REMOVING_FAILED:Ljava/lang/String; = "Removing account %s failed"

.field public static final blacklist AUDIT_ACCOUNT_REMOVING_SUCCEEDED:Ljava/lang/String; = "Removing account %s succeeded"

.field public static final blacklist AUDIT_ACCOUNT_UPDATING_FAILED:Ljava/lang/String; = "Updating account %s failed"

.field public static final blacklist AUDIT_ACCOUNT_UPDATING_SUCCEEDED:Ljava/lang/String; = "Updating account %s succeeded"

.field public static final blacklist AUDIT_ADDED_TO_VPN_FOR_PROFILE:Ljava/lang/String; = "%s added to vpn for profile %s"

.field public static final blacklist AUDIT_ADD_TRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

.field public static final blacklist AUDIT_ADD_UNTRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

.field public static final blacklist AUDIT_ADMIN_CREATED_DUALDAR_WITH_CONFIGURATION:Ljava/lang/String; = "Admin created DualDAR with configuration, Type: %s, Version: %s, Lock Timeout: %s, Device Encryption storage access restriction: %s, Allowlisted Packages: %s"

.field public static final blacklist AUDIT_ADMIN_CREATED_DUALDAR_WITH_THIRD_PARTY_CLIENT_PACKAGE:Ljava/lang/String; = "Admin created DualDAR with Third Party client package: %s, client library version: %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_ACCOUNT_TO_THE_ADDITION_ALLOWLIST:Ljava/lang/String; = "Admin %d has added account %s to the addition allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_ACCOUNT_TO_THE_ADDITION_BLOCKLIST:Ljava/lang/String; = "Admin %d has added account %s to the addition blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_ACCOUNT_TO_THE_REMOVAL_ALLOWLIST:Ljava/lang/String; = "Admin %d has added account %s to the removal allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_ACCOUNT_TO_THE_REMOVAL_BLOCKLIST:Ljava/lang/String; = "Admin %d has added account %s to the removal blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_APPROVED_INSTALLER_ALLOWLIST:Ljava/lang/String; = "Admin %d has added approved installer allowlist %s."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_APPROVED_INSTALLER_BLOCKLIST:Ljava/lang/String; = "Admin %d has added approved installer blocklist %s."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_SSID_TO_THE_RESTRICTION_ALLOWLIST:Ljava/lang/String; = "Admin %d has added SSID %s to the restriction allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_SSID_TO_THE_RESTRICTION_BLOCKLIST:Ljava/lang/String; = "Admin %d has added SSID %s to the restriction blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_APP_SIGNATURE_ALLOWLIST:Ljava/lang/String; = "Admin %d has added %s to app signature allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_APP_SIGNATURE_BLOCKLIST:Ljava/lang/String; = "Admin %d has added %s to app signature blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_CAMERA_ALLOWLIST:Ljava/lang/String; = "Admin %d has added %s : %s to camera allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_PACKAGE_NAME_ALLOWLIST:Ljava/lang/String; = "Admin %d has added %s to package name allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_PACKAGE_NAME_BLOCKLIST:Ljava/lang/String; = "Admin %d has added %s to package name blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ADDED_TO_PERMISSION_BLOCKLIST:Ljava/lang/String; = "Admin %d has added %s to permission blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_ACCESS_TO_WIFI_SSID:Ljava/lang/String; = "Admin %d has allowed access to Wifi SSID: %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_AIRPLANE_MODE:Ljava/lang/String; = "Admin %d has allowed airplane mode."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_BIOMETRIC_AUTHENTICATION_FACE:Ljava/lang/String; = "Admin %d has allowed BIOMETRIC_AUTHENTICATION_FACE"

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_BIOMETRIC_AUTHENTICATION_FINGERPRINT:Ljava/lang/String; = "Admin %d has allowed BIOMETRIC_AUTHENTICATION_FINGERPRINT"

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_BIOMETRIC_AUTHENTICATION_IRIS:Ljava/lang/String; = "Admin %d has allowed BIOMETRIC_AUTHENTICATION_IRIS"

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_BLUETOOTH_PROFILE:Ljava/lang/String; = "Admin %d has allowed %s bluetooth profile."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_CAMERA:Ljava/lang/String; = "Admin %d has allowed camera."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_DATA_SAVING:Ljava/lang/String; = "Admin %d has allowed data saving."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_DEVELOPER_MODE:Ljava/lang/String; = "Admin %d has allowed developer mode."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_INSTALLATION_OF_NON_G_PLAY_APPLICATION:Ljava/lang/String; = "Admin %d has allowed installation of non-Google-Play application."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_MICROPHONE:Ljava/lang/String; = "Admin %d has allowed microphone."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_MOVING_APPLICATIONS_TO_CONTAINER:Ljava/lang/String; = "Admin %d has allowed moving applications to container."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_MOVING_FILES_TO_CONTAINER:Ljava/lang/String; = "Admin %d has allowed moving files to container."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_MOVING_FILES_TO_OWNER:Ljava/lang/String; = "Admin %d has allowed moving files to owner."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_SHARING_CLIPBOARD_TO_OWNER_FROM_WORKSPACE:Ljava/lang/String; = "Admin %d has allowed sharing clipboard to owner from Workspace."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_SVOICE:Ljava/lang/String; = "Admin %d has allowed SVoice."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_TO_BE_SENT_CROSS_PROFILE_USING_FLAG:Ljava/lang/String; = "Admin %s has allowed %s action to be sent cross profile, using flag %s."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_TO_INSTALL_APPLICATION:Ljava/lang/String; = "Admin %d has allowed to install application %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_USB_HOST_STORAGE:Ljava/lang/String; = "Admin %d has allowed USB Host Storage."

.field public static final blacklist AUDIT_ADMIN_HAS_ALLOWED_USER_TO_SET_VPN_ALWAYS_ON_MODE:Ljava/lang/String; = "Admin %d has allowed user to set VPN Always On mode."

.field public static final blacklist AUDIT_ADMIN_HAS_BLOCKED_BLUETOOTH_PROFILE:Ljava/lang/String; = "Admin %d has blocked %s bluetooth profile."

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_ALLOW_BLUETOOTH:Ljava/lang/String; = "Admin %d has changed allow bluetooth to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_BANNER_SETTINGS:Ljava/lang/String; = "Admin %d has changed banner settings."

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_BANNER_WALLPAPER_TO_FILE:Ljava/lang/String; = "Admin %d has changed banner wallpaper to file %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_BLUETOOTH_ENABLED:Ljava/lang/String; = "Admin %d has changed bluetooth enabled to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_LOCK_SCREEN_STATE_TO_DISABLED:Ljava/lang/String; = "Admin %d has changed lock screen state to disabled"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_LOCK_SCREEN_STATE_TO_ENABLED:Ljava/lang/String; = "Admin %d has changed lock screen state to enabled"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_LOCK_SCREEN_STRING:Ljava/lang/String; = "Admin %d has changed lock screen string to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_MAXIMUM_FAILED_PASSWORDS_FOR_DISABLE:Ljava/lang/String; = "Admin %d has changed maximum failed passwords for disable to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE_TO_NUM:Ljava/lang/String; = "Admin %s has changed maximum failed passwords for wipe to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_NFC_STATE_CHANGE:Ljava/lang/String; = "Admin %d has changed NFC state change to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_EXPIRATION_TIME_OUT:Ljava/lang/String; = "Admin %s has changed password expiration time out to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_FORBIDDEN:Ljava/lang/String; = "Admin %d has changed password forbidden strings to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MAXIMUM_CHARACTER_OCCURRENCES:Ljava/lang/String; = "Admin %d has changed password maximum character occurrences to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MAXIMUM_CHARACTER_SEQUENCE_LENGTH:Ljava/lang/String; = "Admin %d has changed password maximum character sequence length to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MAXIMUM_NUMERIC_SEQUENCE:Ljava/lang/String; = "Admin %d has changed password maximum numeric sequence to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_CHARACTER_CHANGE_LENGTH:Ljava/lang/String; = "Admin %d has changed password minimum number of changed characters to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum length to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_LETTERS_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum letters to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_LOWER_CASE_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum lower case to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_NON_LETTER_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum non-letter to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_NUMERIC_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum numeric to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_SYMBOLS_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum symbols to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_MINIMUM_UPPER_CASE_TO_LENGTH:Ljava/lang/String; = "Admin %s has changed password minimum upper case to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_QUALITY:Ljava/lang/String; = "Admin %s has changed password quality to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_PASSWORD_REQUIRED_PATTERN_TO_REGEX:Ljava/lang/String; = "Admin %d has changed password required pattern to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_SCREEN_LOCK_TIME_OUT:Ljava/lang/String; = "Admin %s has changed screen lock time out to %d"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_WIFI_ALLOWED:Ljava/lang/String; = "Admin %d has changed Wifi allowed to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_WIFI_ENABLED:Ljava/lang/String; = "Admin %d has changed Wifi enabled to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_WIFI_SSID_RESTRICTION_ENABLE:Ljava/lang/String; = "Admin %d has changed Wifi SSID restriction to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CHANGED_WIFI_STATE_CHANGE_ALLOWED:Ljava/lang/String; = "Admin %d has changed Wifi state change allowed to %s"

.field public static final blacklist AUDIT_ADMIN_HAS_CLEARED_ALL_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "Admin %s has cleared all cross-profile intent filters."

.field public static final blacklist AUDIT_ADMIN_HAS_CLEARED_THE_LOCK_SCREEN_STRING:Ljava/lang/String; = "Admin %d has cleared the lock screen string."

.field public static final blacklist AUDIT_ADMIN_HAS_DE_ACTIVATED_SEPARATED_APPS:Ljava/lang/String; = "Admin %s has de-activated Separated Apps."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_ACCESS_TO_EXTERNAL_SD_CARD:Ljava/lang/String; = "Admin %d has disabled access to external SDCard."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_APPLICATION:Ljava/lang/String; = "Admin %d has disabled application %s."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_AUTOMATIC_TIME:Ljava/lang/String; = "Admin %d has disabled automatic time."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_AUTOSYNC_OF_G_ACCOUNT:Ljava/lang/String; = "Admin %d has disabled Autosync of Google account."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_AUTO_FILL_SETTINGS:Ljava/lang/String; = "Admin %d has disabled Auto Fill Setting"

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_BLUETOOTH_DISCOVERABLE_STATE:Ljava/lang/String; = "Admin %d has disabled Bluetooth discoverable state."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_BLUETOOTH_LIMITED_DISCOVERABLE_STATE:Ljava/lang/String; = "Admin %d has disabled bluetooth limited discoverable state."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_BLUETOOTH_TETHERING:Ljava/lang/String; = "Admin %d has disabled bluetooth Tethering."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_CELLULAR_DATA:Ljava/lang/String; = "Admin %d has disabled cellular data."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_CERTIFICATE_REVOCATION:Ljava/lang/String; = "Admin %d has disabled certificate revocation check for %s"

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_DATE_TIME_CHANGES:Ljava/lang/String; = "Admin %d has disabled date time changes."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_OCSP:Ljava/lang/String; = "Admin %d has disabled OCSP for %s"

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_REBOOT_BANNER:Ljava/lang/String; = "Admin %d has disabled reboot banner."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_REQUIRED_AUTOMATIC_TIME:Ljava/lang/String; = "Admin %s has disabled required automatic time."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_SBEAM:Ljava/lang/String; = "Admin %d has disabled SBeam."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_USB_DEBUGGING:Ljava/lang/String; = "Admin %d has disabled USB debugging."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_USB_MEDIA_PLAYER_MTP:Ljava/lang/String; = "Admin %d has disabled USB Media Player (MTP)."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_USB_TETHERING_SETTING:Ljava/lang/String; = "Admin %d has disabled USB Tethering setting."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_VPN:Ljava/lang/String; = "Admin %d has disabled Vpn."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_VPN_ALWAYS_ON_MODE:Ljava/lang/String; = "Admin %d has disabled VPN Always On mode."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_WIFI_DIRECT:Ljava/lang/String; = "Admin %d has disabled Wifi Direct."

.field public static final blacklist AUDIT_ADMIN_HAS_DISABLED_WIFI_TETHERING_SETTING:Ljava/lang/String; = "Admin %d has disabled Wifi Tethering setting."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_AIRPLANE_MODE:Ljava/lang/String; = "Admin %d has disallowed airplane mode."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_BIOMETRIC_AUTHENTICATION_FACE:Ljava/lang/String; = "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_FACE"

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_BIOMETRIC_AUTHENTICATION_FINGERPRINT:Ljava/lang/String; = "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_FINGERPRINT"

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_BIOMETRIC_AUTHENTICATION_IRIS:Ljava/lang/String; = "Admin %d has disallowed BIOMETRIC_AUTHENTICATION_IRIS"

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_CAMERA:Ljava/lang/String; = "Admin %d has disallowed camera."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_DATA_SAVING:Ljava/lang/String; = "Admin %d has disallowed data saving."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_DEVELOPER_MODE:Ljava/lang/String; = "Admin %d has disallowed developer mode."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_INSTALLATION_OF_NON_G_PLAY_APPLICATION:Ljava/lang/String; = "Admin %d has disallowed installation of non-Google-Play application."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_MICROPHONE:Ljava/lang/String; = "Admin %d has disallowed microphone."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_MOVING_APPLICATIONS_TO_CONTAINER:Ljava/lang/String; = "Admin %d has disallowed moving applications to container."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_MOVING_FILES_TO_CONTAINER:Ljava/lang/String; = "Admin %d has disallowed moving files to container."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_MOVING_FILES_TO_OWNER:Ljava/lang/String; = "Admin %d has disallowed moving files to owner."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_SHARING_CLIPBOARD_TO_OWNER_FROM_WORKSPACE:Ljava/lang/String; = "Admin %d has disallowed sharing clipboard to owner from Workspace."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_SVOICE:Ljava/lang/String; = "Admin %d has disallowed SVoice."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_TO_INSTALL_APPLICATION:Ljava/lang/String; = "Admin %d has disallowed to install application %s"

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_USB_HOST_STORAGE:Ljava/lang/String; = "Admin %d has disallowed USB Host Storage."

.field public static final blacklist AUDIT_ADMIN_HAS_DISALLOWED_USER_TO_SET_VPN_ALWAYS_ON_MODE:Ljava/lang/String; = "Admin %d has disallowed user to set VPN Always On mode."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_ACCESS_TO_EXTERNAL_SD_CARD:Ljava/lang/String; = "Admin %d has enabled access to external SDCard."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_APPLICATION:Ljava/lang/String; = "Admin %d has enabled application %s."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_AUTOMATIC_TIME:Ljava/lang/String; = "Admin %d has enabled automatic time."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_AUTOSYNC_OF_G_ACCOUNT:Ljava/lang/String; = "Admin %d has enabled Autosync of Google account."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_AUTO_FILL_SETTINGS:Ljava/lang/String; = "Admin %d has enabled Auto Fill Setting"

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_BLUETOOTH_DISCOVERABLE_STATE:Ljava/lang/String; = "Admin %d has enabled Bluetooth discoverable state."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_BLUETOOTH_LIMITED_DISCOVERABLE_STATE:Ljava/lang/String; = "Admin %d has enabled bluetooth limited discoverable state."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_BLUETOOTH_TETHERING:Ljava/lang/String; = "Admin %d has enabled bluetooth Tethering."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_CELLULAR_DATA:Ljava/lang/String; = "Admin %d has enabled cellular data."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_CERTIFICATE_REVOCATION:Ljava/lang/String; = "Admin %d has enabled certificate revocation check for %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_DATE_TIME_CHANGES:Ljava/lang/String; = "Admin %d has enabled date time changes."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_OCSP:Ljava/lang/String; = "Admin %d has enabled OCSP for %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_REBOOT_BANNER:Ljava/lang/String; = "Admin %d has enabled reboot banner."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_REBOOT_BANNER_WITH_TEXT:Ljava/lang/String; = "Admin %d has enabled reboot banner with text %s"

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_REQUIRED_AUTOMATIC_TIME:Ljava/lang/String; = "Admin %s has enabled required automatic time."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_SBEAM:Ljava/lang/String; = "Admin %d has enabled SBeam."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_USB_DEBUGGING:Ljava/lang/String; = "Admin %d has enabled USB debugging."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_USB_MEDIA_PLAYER_MTP:Ljava/lang/String; = "Admin %d has enabled USB Media Player (MTP)."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_USB_TETHERING_SETTING:Ljava/lang/String; = "Admin %d has enabled USB Tethering setting."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_VPN:Ljava/lang/String; = "Admin %d has enabled Vpn."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_VPN_PROFILE_TO_ALWAYS_ON_MODE:Ljava/lang/String; = "Admin %d has enabled %s VPN profile to Always On mode."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_WIFI_DIRECT:Ljava/lang/String; = "Admin %d has enabled Wifi Direct."

.field public static final blacklist AUDIT_ADMIN_HAS_ENABLED_WIFI_TETHERING_SETTING:Ljava/lang/String; = "Admin %d has enabled Wifi Tethering setting."

.field public static final blacklist AUDIT_ADMIN_HAS_INSTALLED_APPLICATION:Ljava/lang/String; = "Admin %d has installed application %s"

.field public static final blacklist AUDIT_ADMIN_HAS_INSTALLED_APPLICATION_FROM_PATH:Ljava/lang/String; = "Admin %d has installed application from %s."

.field public static final blacklist AUDIT_ADMIN_HAS_INSTALLED_APPLICATION_FROM_PATH_ON_SD_CARD:Ljava/lang/String; = "Admin %d has installed application from %s on SdCard."

.field public static final blacklist AUDIT_ADMIN_HAS_LOCATED_APPS_INSIDE_OF_SEPARATED_APPS:Ljava/lang/String; = "Admin %s has located Apps (inside) of Separated Apps"

.field public static final blacklist AUDIT_ADMIN_HAS_LOCATED_APPS_OUTSIDE_OF_SEPARATED_APPS:Ljava/lang/String; = "Admin %s has located Apps (outside) of Separated Apps"

.field public static final blacklist AUDIT_ADMIN_HAS_LOCKED_WORKSPACE:Ljava/lang/String; = "Admin %d has locked Workspace."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ACCOUNT_FROM_ADDITION_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed account %s from addition allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ACCOUNT_FROM_ADDITION_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed account %s from addition blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ACCOUNT_FROM_REMOVAL_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed account %s from removal allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ACCOUNT_FROM_REMOVAL_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed account %s from removal blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_ACCOUNTS_FROM_ADDITION_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed all accounts from addition allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_ACCOUNTS_FROM_ADDITION_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed all accounts from addition blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_ACCOUNTS_FROM_REMOVAL_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed all accounts from removal allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_ACCOUNTS_FROM_REMOVAL_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed all accounts from removal blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_SSIDS_FROM_THE_RESTRICTION_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed all SSIDs from the restriction allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_ALL_SSID_FROM_THE_RESTRICTION_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed all SSIDs from the restriction blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_APPLICATION:Ljava/lang/String; = "Admin %d has removed application %s."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_APPLICATION_KEEPING_DATA_AND_CACHE:Ljava/lang/String; = "Admin %d has removed application %s keeping data and cache."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_APPROVED_INSTALLER_FROM_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed approved installer from allowlist %s."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_APPROVED_INSTALLER_FROM_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed approved installer from blocklist %s."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_APP_SIGNATURE_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed %s from app signature allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_APP_SIGNATURE_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed %s from app signature blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_CAMERA_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed %s : %s from camera allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_PACKAGE_NAME_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed %s from package name allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_PACKAGE_NAME_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed %s from package name blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_FROM_PERMISSION_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed %s from permission blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_SSID_FROM_THE_RESTRICTION_ALLOWLIST:Ljava/lang/String; = "Admin %d has removed SSID %s from the restriction allowlist."

.field public static final blacklist AUDIT_ADMIN_HAS_REMOVED_SSID_FROM_THE_RESTRICTION_BLOCKLIST:Ljava/lang/String; = "Admin %d has removed SSID %s from the restriction blocklist."

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_ENCRYPTION_OF_EXTERNAL_STORAGE:Ljava/lang/String; = "Admin %d has requested encryption of external storage"

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_ENCRYPTION_OF_INTERNAL_STORAGE:Ljava/lang/String; = "Admin %d has requested encryption of internal storage"

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_FULL_WIPE_OF_DEVICE:Ljava/lang/String; = "Admin %d has requested full wipe of device."

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_TO_CLEAR_CREDENTIAL_STORAGES:Ljava/lang/String; = "Admin %d has requested to clear credential storages"

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_TO_DELETE_CERTIFICATE_KEYSTORE_ALIAS_SUBJECT_ISSUER:Ljava/lang/String; = "Admin %d has requested to delete a certificate. Keystore(s) : %s, Alias : %s, Subject : %s, Issuer : %s"

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_TO_DISABLE_CCMODE:Ljava/lang/String; = "Admin %d has requested to disable CCMode."

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_TO_ENABLE_CCMODE:Ljava/lang/String; = "Admin %d has requested to enable CCMode."

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_TO_INSTALL_CERTIFICATE_KEYSTORE_AND_NAME:Ljava/lang/String; = "Admin %d has requested to install a certificate. Keystore(s) : %s, Name : %s"

.field public static final blacklist AUDIT_ADMIN_HAS_REQUESTED_WIPE_OF_DEVICE_EXTERNAL_MEMORY:Ljava/lang/String; = "Admin %d has requested wipe of device external memory."

.field public static final blacklist AUDIT_ADMIN_HAS_RESET_BANNER_SETTINGS:Ljava/lang/String; = "Admin %d has reset banner settings."

.field public static final blacklist AUDIT_ADMIN_HAS_RESET_BANNER_WALLPAPER:Ljava/lang/String; = "Admin %d has reset banner wallpaper."

.field public static final blacklist AUDIT_ADMIN_HAS_SET_ITSELF_AS_NOT_REMOVABLE:Ljava/lang/String; = "Admin %d has set itself as not removable"

.field public static final blacklist AUDIT_ADMIN_HAS_SET_ITSELF_AS_REMOVABLE:Ljava/lang/String; = "Admin %d has set itself as removable"

.field public static final blacklist AUDIT_ADMIN_HAS_SET_NEW_WIFI_PROFILE_SSID_SECURITY_TYPE:Ljava/lang/String; = "Admin %d has set a new wifi profile: SSID: %s Security type: %s %s %s"

.field public static final blacklist AUDIT_ADMIN_HAS_SET_PACKAGE_NAME_AS_NOT_REMOVABLE:Ljava/lang/String; = "Admin %d has set %s as not removable"

.field public static final blacklist AUDIT_ADMIN_HAS_SET_PACKAGE_NAME_AS_REMOVABLE:Ljava/lang/String; = "Admin %d has set %s as removable"

.field public static final blacklist AUDIT_ADMIN_HAS_STARTED_GPS:Ljava/lang/String; = "Admin %d has started GPS"

.field public static final blacklist AUDIT_ADMIN_HAS_STOPPED_GPS:Ljava/lang/String; = "Admin %d has stopped GPS"

.field public static final blacklist AUDIT_ADMIN_HAS_SUCCESSFULLY_LOCKED_WORKSPACE:Ljava/lang/String; = "Admin %d has successfully locked Workspace"

.field public static final blacklist AUDIT_ADMIN_HAS_SUCCESSFULLY_REMOVED_WORKSPACE:Ljava/lang/String; = "Admin %d has successfully removed Workspace %d"

.field public static final blacklist AUDIT_ADMIN_HAS_SUCCESSFULLY_REQUESTED_TO_CREATE_CONTAINER:Ljava/lang/String; = "Admin %d has successfully requested to create container."

.field public static final blacklist AUDIT_ADMIN_HAS_SUCCESSFULLY_UNLOCKED_WORKSPACE:Ljava/lang/String; = "Admin %d has successfully unlocked Workspace"

.field public static final blacklist AUDIT_ADMIN_HAS_UNLOCKED_WORKSPACE:Ljava/lang/String; = "Admin %d has unlocked Workspace."

.field public static final blacklist AUDIT_AIRPLANE_MODE_STOPPING_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Airplane Mode: Stopping connection for profile %s"

.field public static final blacklist AUDIT_APPLICATION_ACTION_FAILED_BECAUSE_OF_SIGNATURE_VERIFICATION_FAILURE:Ljava/lang/String; = "Application %s (action %s) failed because of signature verification failure"

.field public static final blacklist AUDIT_APPLICATION_HAS_BEEN_DISABLED:Ljava/lang/String; = "Application %s has been disabled."

.field public static final blacklist AUDIT_APPLICATION_HAS_BEEN_ENABLED:Ljava/lang/String; = "Application %s has been enabled."

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_ALLOWED_BY_ADMIN_ALLOWLIST:Ljava/lang/String; = "Application %s installation is allowed by admin %s %s allowlist."

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_ALLOWED_BY_ADMIN_BLOCKLIST:Ljava/lang/String; = "Application %s installation is allowed by admin %s %s blocklist."

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_ALLOWED_BY_ADMIN_INSTALLER_ALLOWLIST:Ljava/lang/String; = "Application %s installation is allowed by admin %s installer allowlist"

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_IS_ALLOWED_BY_ADMIN_FOR_SEPARATED_APPS:Ljava/lang/String; = "Application %s installation is allowed by admin %s for Separated Apps"

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_NOT_ALLOWED_BECAUSE_SIGNED_UNTRUSTED_CA:Ljava/lang/String; = "Application %s installation is not allowed because it is signed by untrusted CA"

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_NOT_ALLOWED_BY_ADMIN_ALLOWLIST:Ljava/lang/String; = "Application %s installation is not allowed by admin %s %s allowlist."

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_NOT_ALLOWED_BY_ADMIN_BLOCKLIST:Ljava/lang/String; = "Application %s installation is not allowed by admin %s %s blocklist."

.field public static final blacklist AUDIT_APPLICATION_INSTALLATION_NOT_ALLOWED_BY_ADMIN_INSTALLER_BLOCKLIST:Ljava/lang/String; = "Application %s installation is not allowed by admin %s installer blocklist"

.field public static final blacklist AUDIT_APPLICATION_PROCESS_NAME_CRASHED_DUE_EXCEPTION:Ljava/lang/String; = "Application %s crashed due to %s"

.field public static final blacklist AUDIT_BIND_TO_VPN_FAILED_COULD_NOT_FIND_PACKAGE:Ljava/lang/String; = "Bind to vpn failed. Could not find package %s"

.field public static final blacklist AUDIT_BIND_TO_VPN_VENDOR_SERVICE_FAILED:Ljava/lang/String; = "Bind to vpn vendor service %s failed"

.field public static final blacklist AUDIT_BIND_TO_VPN_VENDOR_SERVICE_SUCCESSFULLY:Ljava/lang/String; = "Bind to vpn vendor service %s successfully"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_DISABLED_FACE:Ljava/lang/String; = "Biometric authentication disabled: face"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_DISABLED_FINGERPRINT:Ljava/lang/String; = "Biometric authentication disabled: fingerprint"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_DISABLED_NONE:Ljava/lang/String; = "Biometric authentication disabled: all"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_ENABLED_FACE:Ljava/lang/String; = "Biometric authentication enabled: face"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_ENABLED_FINGERPRINT:Ljava/lang/String; = "Biometric authentication enabled: fingerprint"

.field public static final blacklist AUDIT_BIOMETRIC_AUTHENTICATION_ENABLED_NONE:Ljava/lang/String; = "Biometric authentication enabled: all"

.field public static final blacklist AUDIT_BLUETOOTH_PROFILE_ON_BLUETOOTH_DEVICE_HAS_CONNECTED:Ljava/lang/String; = "Bluetooth profile %s on bluetooth device %s has connected."

.field public static final blacklist AUDIT_BLUETOOTH_PROFILE_ON_BLUETOOTH_DEVICE_HAS_DISCONNECTED:Ljava/lang/String; = "Bluetooth profile %s on bluetooth device %s has disconnected."

.field public static final blacklist AUDIT_CC_MODE_STATUS:Ljava/lang/String; = "CC Mode status : %s"

.field public static final blacklist AUDIT_CERTIFICATE_REVOCATION:Ljava/lang/String; = "Certificate revocation : enableOcspCheck() or enableRevocationCheck() should be set on all packages."

.field public static final blacklist AUDIT_CERTIFICATE_REVOCATION_OK_CRL:Ljava/lang/String; = "Certificate revocation : OK (CRL)"

.field public static final blacklist AUDIT_CERTIFICATE_REVOCATION_OK_OCSP_CRL:Ljava/lang/String; = "Certificate revocation : OK (OCSP/CRL)"

.field public static final blacklist AUDIT_CERTIFICATE_VERIFICATION_FAILED:Ljava/lang/String; = "Certificate verification failed. Reason: %s"

.field public static final blacklist AUDIT_CERT_INSTALL_FAILED_KEYSTORE_DEFAULT:Ljava/lang/String; = "Installing certificate failed. Keystore: Default, Subject: %s, Issuer: %s"

.field public static final blacklist AUDIT_CERT_INSTALL_SUCCEEDED_KEYSTORE_DEFAULT:Ljava/lang/String; = "Installing certificate succeeded. Keystore: Default, Subject: %s, Issuer: %s"

.field public static final blacklist AUDIT_CERT_PATH_VALIDATOR_FAILED:Ljava/lang/String; = "CertPathValidator failed: %s"

.field public static final blacklist AUDIT_CLEARING_CREDENTIALS_FAILED:Ljava/lang/String; = "Clearing credentials failed. Keystore: %s %s"

.field public static final blacklist AUDIT_CLEARING_CREDENTIALS_SUCCEEDED:Ljava/lang/String; = "Clearing credentials succeeded. Keystore: %s %s"

.field public static final blacklist AUDIT_CLEAR_CREDENTIALS_FAILED_KEYSTORE_DEFAULT:Ljava/lang/String; = "Clearing credentials failed. Keystore : Default"

.field public static final blacklist AUDIT_CLEAR_CREDENTIALS_SUCCEEDED_KEYSTORE_DEFAULT:Ljava/lang/String; = "Clearing credentials succeeded. Keystore : Default"

.field public static final blacklist AUDIT_COLLECT_CERTIFICATES_SUCCEEDED:Ljava/lang/String; = "CollectCertificates %s succeeded"

.field public static final blacklist AUDIT_COMPONENT_HAS_BEEN_DISABLED:Ljava/lang/String; = "Component %s/%s has been disabled."

.field public static final blacklist AUDIT_COMPONENT_HAS_BEEN_ENABLED:Ljava/lang/String; = "Component %s/%s has been enabled."

.field public static final blacklist AUDIT_CONNECTING_TO_BLUETOOTH_DEVICE_FAILED:Ljava/lang/String; = "Connecting to bluetooth device failed. Either A2DP or SPP profile is blocked."

.field public static final blacklist AUDIT_CONNECTING_VPN_TO_SERVER_ADDRESS_FROM_TYPE:Ljava/lang/String; = "Connecting to VPN network %s to server address : %s from type %s failed - unsecure"

.field public static final blacklist AUDIT_CONNECTING_VPN_TO_SERVER_ADDRESS_FROM_TYPE_FAILED:Ljava/lang/String; = "Connecting to VPN network to server address %s from type %s failed"

.field public static final blacklist AUDIT_CONNECTING_VPN_TO_SERVER_ADDRESS_FROM_TYPE_SUCCEEDED:Ljava/lang/String; = "Connecting to VPN network to server address %s from type %s succeeded"

.field public static final blacklist AUDIT_CONNECTION_ESTABLISHED_FOR_VPN_PROFILE:Ljava/lang/String; = "Connection established for vpn profile %s"

.field public static final blacklist AUDIT_CONNECTION_WITH_VPN_VENDOR_SERVICE_STOPPED_FOR_PROFILE:Ljava/lang/String; = "Connection with vpn vendor service stopped for profile %s"

.field public static final blacklist AUDIT_CONNECTION_WITH_VPN_VENDOR_SERVICE_STOPPED_FOR_PROFILE_AFTER_REMOVING_ALL_THE_PACKAGES:Ljava/lang/String; = "Connection with vpn vendor service stopped for profile %s after removing all the packages"

.field public static final blacklist AUDIT_CRITICAL_SIZE_CHANGED_PERCENTAGE_VALUE:Ljava/lang/String; = "AuditLog critical size has changed to %d"

.field public static final blacklist AUDIT_DATA_DISABLING:Ljava/lang/String; = "Disabling Cellular Data"

.field public static final blacklist AUDIT_DATA_ENABLING:Ljava/lang/String; = "Enabling Cellular Data"

.field public static final blacklist AUDIT_DECRYPTING_STORAGE_CARD_FAILED:Ljava/lang/String; = "Decrypting storage card failed"

.field public static final blacklist AUDIT_DECRYPTING_STORAGE_CARD_SUCCEEDED:Ljava/lang/String; = "Decrypting storage card succeeded"

.field public static final blacklist AUDIT_DELETE_APN_FAILED:Ljava/lang/String; = "Deleting APN failed"

.field public static final blacklist AUDIT_DELETE_APN_SUCCEEDED:Ljava/lang/String; = "Deleting APN succeeded"

.field public static final blacklist AUDIT_DELETING_CERTIFICATE_FAILED:Ljava/lang/String; = "Deleting certificate %s failed (Keystore=%s, key=%s, Subject=%s, Issuer=%s)"

.field public static final blacklist AUDIT_DELETING_CERTIFICATE_SUCCEEDED:Ljava/lang/String; = "Deleting certificate %s succeeded (Keystore=%s, key=%s, Subject=%s, Issuer=%s)"

.field public static final blacklist AUDIT_DISABLING_NFC_POLICY_ENFORCEMENT:Ljava/lang/String; = "Nfc policy: Disabling NFC failed. Reason: isNFCStateChangeAllowed is false"

.field public static final blacklist AUDIT_DISABLING_NFC_SETTINGS_POLICY_ENFORCEMENT:Ljava/lang/String; = "Nfc policy: Disabling NFC failed. Reason: isSettingsChangesAllowed is false"

.field public static final blacklist AUDIT_DISCONNECTING_VPN_TO_SERVER_ADDRESS_FROM_TYPE:Ljava/lang/String; = "Disconnecting from VPN network to server address %s from type %s succeeded"

.field public static final blacklist AUDIT_EAP_TLS_HANDSHAKE_FAILED:Ljava/lang/String; = "EAP-TLS handshake failed. Reason: %s"

.field public static final blacklist AUDIT_ENABLING_BLUETOOTH:Ljava/lang/String; = "Enabling Bluetooth"

.field public static final blacklist AUDIT_ENABLING_NFC_POLICY_ENFORCEMENT:Ljava/lang/String; = "Nfc policy: Enabling NFC failed. Reason: isNFCStateChangeAllowed is false"

.field public static final blacklist AUDIT_ENABLING_NFC_SETTINGS_POLICY_ENFORCEMENT:Ljava/lang/String; = "Nfc policy: Enabling NFC failed. Reason: isSettingsChangesAllowed is false"

.field public static final blacklist AUDIT_ENCRYPTING_STORAGE_CARD_FAILED:Ljava/lang/String; = "Encrypting storage card failed"

.field public static final blacklist AUDIT_ENCRYPTING_STORAGE_CARD_SUCCEEDED:Ljava/lang/String; = "Encrypting storage card succeeded"

.field public static final blacklist AUDIT_ERROR_ACTIVATING_VPN_PROFILE_DOES_NOT_EXIST_IN_DEVICE:Ljava/lang/String; = "Error occurred while activating vpn profile %s. Profile does not exist in device."

.field public static final blacklist AUDIT_ERROR_ADDING_VPN_PROFILE_INFO_IN_DATABASE_WHILE_ACTIVATING_PROFILE:Ljava/lang/String; = "Error adding vpn profile info in database while activating profile %s"

.field public static final blacklist AUDIT_ERROR_ADDING_VPN_PROFILE_INFO_IN_DATABASE_WHILE_DEACTIVATING_PROFILE:Ljava/lang/String; = "Error adding vpn profile info in database while deactivating profile %s"

.field public static final blacklist AUDIT_ERROR_GETTING_BINDER_FOR_PROFILE_VENDOR_SERVICE_MIGHT_NOT_BE_RUNNING:Ljava/lang/String; = "Error getting binder for profile %s. Vendor service might not be running"

.field public static final blacklist AUDIT_ERROR_LISTING_INTERFACES:Ljava/lang/String; = "Error listing interfaces: %s"

.field public static final blacklist AUDIT_ERROR_OCCURRED_TRYING_TO_STOP_VPN_CONNECTION_FROM_PROFILE:Ljava/lang/String; = "Error occurred trying to stop vpn connection from profile %s"

.field public static final blacklist AUDIT_ERROR_OCCURRED_WHILE_ADDING_PACKAGE_TO_VPN_FOR_PROFILE:Ljava/lang/String; = "Error occurred while adding package %s to vpn for profile %s"

.field public static final blacklist AUDIT_ERROR_OCCURRED_WHILE_ADDING_PROFILE_INTO_DATABASE:Ljava/lang/String; = "Error occurred while adding profile %s into database"

.field public static final blacklist AUDIT_ERROR_OCCURRED_WHILE_ADDING_VPN_PROFILE_IN_VPN_MAP:Ljava/lang/String; = "Error occurred while adding vpn profile %s in vpn map"

.field public static final blacklist AUDIT_ERROR_OCCURRED_WHILE_REMOVING_VPN_PROFILE:Ljava/lang/String; = "Error occurred while removing vpn profile %s. Stop vpn connection before removing profile"

.field public static final blacklist AUDIT_ERROR_OCCURRED_WHILE_VALIDATING_PROFILE_INFORMATION_FOR_VENDOR:Ljava/lang/String; = "Error occurred while validating profile information for vendor %s"

.field public static final blacklist AUDIT_ERROR_RECEIVED_FROM_VENDOR_WHILE_CREATING_VPN_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Error received from vendor while creating vpn connection for profile %s"

.field public static final blacklist AUDIT_ERROR_RECEIVED_FROM_VENDOR_WHILE_REMOVING_VPN_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Error received from vendor while removing vpn connection for profile %s"

.field public static final blacklist AUDIT_ERROR_STOPPING_CONNECTION_FOR_VPN_PROFILE:Ljava/lang/String; = "Error stopping connection for vpn profile %s. Vendor service might not be running"

.field public static final blacklist AUDIT_ERROR_TRYING_TO_START_VPN_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Error trying to start vpn connection for profile %s"

.field public static final blacklist AUDIT_ERROR_TRYING_TO_START_VPN_PROFILE_CHAINING_IS_NOT_READY:Ljava/lang/String; = "Error trying to start vpn profile. Chaining is not ready"

.field public static final blacklist AUDIT_ERROR_TRYING_TO_START_VPN_PROFILE_IS_NOT_ACTIVATED:Ljava/lang/String; = "Error trying to start vpn profile %s. Profile is not activated"

.field public static final blacklist AUDIT_ERROR_TRYING_TO_START_VPN_PROFILE_NETWORK_IS_NOT_AVAILABLE:Ljava/lang/String; = "Error trying to start vpn profile %s. Network is not available"

.field public static final blacklist AUDIT_ERROR_VALIDATING_INFORMATION_FROM_PROFILE_BEFORE_ACTIVATION:Ljava/lang/String; = "Error validating information from profile %s before activation"

.field public static final blacklist AUDIT_ERROR_VALIDATING_INFORMATION_FROM_PROFILE_BEFORE_REMOVING:Ljava/lang/String; = "Error validating information from profile %s before removing"

.field public static final blacklist AUDIT_ERROR_WHILE_ADDING_ALL_PACKAGES_TO_VPN_FOR_PROFILE:Ljava/lang/String; = "Error while adding all packages to vpn for profile %s"

.field public static final blacklist AUDIT_ERROR_WHILE_VALIDATING_ADMIN_AND_VENDOR_FOR_PROFILE:Ljava/lang/String; = "Error while validating admin and vendor for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_OCCURRED_WHILE_ACTIVATING_VPN_PROFILE:Ljava/lang/String; = "Exception occurred while activating vpn profile %s"

.field public static final blacklist AUDIT_EXCEPTION_OCCURRED_WHILE_CREATING_VPN_PROFILE_FOR_VENDOR:Ljava/lang/String; = "Exception occurred while creating vpn profile for vendor %s"

.field public static final blacklist AUDIT_EXCEPTION_OCCURRED_WHILE_REMOVING_VPN_PROFILE:Ljava/lang/String; = "Exception occurred while removing vpn profile %s"

.field public static final blacklist AUDIT_EXCEPTION_STARTING_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Exception starting connection for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_CONNECTION_FOR_PROFILE:Ljava/lang/String; = "Exception stopping connection for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_CONNECTION_FOR_PROFILE_AFTER_REMOVING_ALL_CONTAINER_PACKAGES:Ljava/lang/String; = "Exception stopping connection for profile %s after removing all container packages"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_CONNECTION_FOR_PROFILE_AFTER_REMOVING_ALL_PACKAGES:Ljava/lang/String; = "Exception stopping connection for profile %s after removing all packages"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_CONNECTION_FOR_PROFILE_AFTER_REMOVING_PACKAGES_FROM_VPN:Ljava/lang/String; = "Exception stopping connection for profile %s after removing packages from vpn"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_CONNECTION_FOR_PROFILE_AFTER_REMOVING_PACKAGE_LIST_BY_UID:Ljava/lang/String; = "Exception stopping connection for profile %s after removing package list by uid"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_VPN_CONNECTION_AFTER_ADMIN_REMOVAL:Ljava/lang/String; = "Exception stopping vpn connection after admin removal"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_VPN_CONNECTION_FOR_AIRPLANE_MODE:Ljava/lang/String; = "Exception stopping vpn connection for airplane mode"

.field public static final blacklist AUDIT_EXCEPTION_STOPPING_VPN_CONNECTION_FOR_CLIENT_WITH_UID:Ljava/lang/String; = "Exception stopping vpn connection for client with uid %d"

.field public static final blacklist AUDIT_EXCEPTION_TRYING_TO_START_VPN_PROFILE:Ljava/lang/String; = "Exception trying to start vpn profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_ADDING_ALL_THE_PACKAGES_TO_VPN_FOR_PROFILE:Ljava/lang/String; = "Exception while adding all the packages to vpn for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_REMOVING_ALL_CONTAINER_PACKAGES_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "Exception while removing all container packages from vpn for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_REMOVING_ALL_PACKAGES_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "Exception while removing all packages from vpn for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_REMOVING_PACKAGES_EXEMPTED_FROM_VPN_AFTER_UNINSTALLATION_FOR_PROFILE:Ljava/lang/String; = "Exception while removing packages exempted from vpn after uninstallation for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_REMOVING_PACKAGES_FROM_VPN_AFTER_UNINSTALLATION_FOR_PROFILE:Ljava/lang/String; = "Exception while removing packages from vpn after uninstallation for profile %s"

.field public static final blacklist AUDIT_EXCEPTION_WHILE_REMOVING_PACKAGES_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "Exception while removing packages from vpn for profile %s"

.field public static final blacklist AUDIT_EXCHANGING_DATA_VIA_BLUETOOTH_FAILED_RESTRICTED:Ljava/lang/String; = "Exchanging data via bluetooth failed - restricted."

.field public static final blacklist AUDIT_EXCHANGING_DATA_VIA_BLUETOOTH_SUCCEEDED:Ljava/lang/String; = "Exchanging data via bluetooth succeeded."

.field public static final blacklist AUDIT_FACE_BIOMETRIC_AUTHENTICATION:Ljava/lang/String; = "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled() or KEYGUARD_DISABLE_FACE should be set to setKeyguardDisabledFeatures()."

.field public static final blacklist AUDIT_FACE_LOCK_OK:Ljava/lang/String; = "Face lock : OK"

.field public static final blacklist AUDIT_FAILED_TO_WIPE_USER_DATA:Ljava/lang/String; = "Failed to wipe user data (factory reset). Reason: %s"

.field public static final blacklist AUDIT_FAIL_ACCESS_FILE:Ljava/lang/String; = "AUDIT: user_id[%d]/pid[%d] failed to access file [%s] - %d"

.field public static final blacklist AUDIT_FAIL_ACCESS_FILE_IN_THE_STORAGE:Ljava/lang/String; = "AUDIT: user_id[%d]/pid[%d] failed to access file in de storage [%s] - %d"

.field public static final blacklist AUDIT_FAIL_DECRYPT_FILE:Ljava/lang/String; = "AUDIT: user_id[%d]/pid[%d]/ino[%lu]/err[%d] failed to decrypt file[%s]"

.field public static final blacklist AUDIT_FAIL_ENCRYPT_FILE:Ljava/lang/String; = "AUDIT: user_id[%d]/pid[%d]/ino[%lu]/err[%d] failed to encrypt file[%s]"

.field public static final blacklist AUDIT_FILTER_CHANGED:Ljava/lang/String; = "AuditLog filter rules has changed."

.field public static final blacklist AUDIT_FIPS_SELF_TEST_FAILED:Ljava/lang/String; = "FIPS self-test : FAILED"

.field public static final blacklist AUDIT_FIPS_SELF_TEST_OK:Ljava/lang/String; = "FIPS self-test : OK"

.field public static final blacklist AUDIT_HAS_REACHED_ITS_CRITICAL_SIZE_PERCENTAGE:Ljava/lang/String; = "AuditLog has reached its critical size. Percentage is %.2f"

.field public static final blacklist AUDIT_IFACE_IS_TETHERED:Ljava/lang/String; = "Interface %s is tethered"

.field public static final blacklist AUDIT_IFACE_IS_UNTETHERED:Ljava/lang/String; = "Interface %s is untethered"

.field public static final blacklist AUDIT_INCORRECT_AUTHENTICATION_ATTEMPTS_LIMIT_REACHED:Ljava/lang/String; = "Incorrect authentication attempts %d limit reached"

.field public static final blacklist AUDIT_INSTALLING_CERTIFICATE_FAILED:Ljava/lang/String; = "Installing certificate %s failed (Keystore=%s, key=%s, Subject=%s, Issuer=%s) %s"

.field public static final blacklist AUDIT_INSTALLING_CERTIFICATE_FAILED_SUBJECT_ISSUER:Ljava/lang/String; = "Installing certificate failed. Subject: %s. Issuer: %s"

.field public static final blacklist AUDIT_INSTALLING_CERTIFICATE_SUCCEEDED:Ljava/lang/String; = "Installing certificate %s succeeded (Keystore=%s, key=%s, Subject=%s, Issuer=%s) %s"

.field public static final blacklist AUDIT_INSTALL_APPLICATION_FAILED:Ljava/lang/String; = "Install application %s failed"

.field public static final blacklist AUDIT_INSTALL_APPLICATION_SUCCEEDED:Ljava/lang/String; = "Install application %s succeeded"

.field public static final blacklist AUDIT_KEY_DESTRUCTION_ACTIVITY_FAILED:Ljava/lang/String; = "Key destruction activity failed (Keystore=%s, key=%s, requested by %s) %s"

.field public static final blacklist AUDIT_KEY_DESTRUCTION_ACTIVITY_SUCCEEDED:Ljava/lang/String; = "Key destruction activity succeeded (Keystore=%s, key=%s, requested by %s) %s"

.field public static final blacklist AUDIT_KEY_GENERATION_FAILED:Ljava/lang/String; = "Key generation failed %s"

.field public static final blacklist AUDIT_KEY_GENERATION_FAILED_WITH_ERROR:Ljava/lang/String; = "Key generation failed with error: %s"

.field public static final blacklist AUDIT_KEY_IMPORTING_ACTIVITY_FAILED:Ljava/lang/String; = "Key importing activity failed (Keystore=%s, key=%s, requested by %s) %s"

.field public static final blacklist AUDIT_KEY_IMPORTING_ACTIVITY_SUCCEEDED:Ljava/lang/String; = "Key importing activity succeeded (Keystore=%s, key=%s, requested by %s) %s"

.field public static final blacklist AUDIT_LOG_STATUS_CHANGED_DISABLE:Ljava/lang/String; = "AuditLog status has changed to disable"

.field public static final blacklist AUDIT_LOG_STATUS_CHANGED_ENABLE:Ljava/lang/String; = "AuditLog status has changed to enable"

.field public static final blacklist AUDIT_MANAGED_PROFILE_HAS_BEEN_CREATED_SUCCESSFULLY:Ljava/lang/String; = "Managed Profile has been created successfully"

.field public static final blacklist AUDIT_MANAGED_PROFILE_HAS_BEEN_CREATED_SUCCESSFULLY_USER_ID:Ljava/lang/String; = "Managed Profile has been created successfully - user %d"

.field public static final blacklist AUDIT_MANAGED_PROFILE_HAS_BEEN_REMOVED_USER_ID:Ljava/lang/String; = "Managed Profile has been removed - user %d"

.field public static final blacklist AUDIT_MAX_SIZE_CHANGED_PERCENTAGE_VALUE:Ljava/lang/String; = "AuditLog maximum size has changed to %d"

.field public static final blacklist AUDIT_MICROPHONE_DISABLED:Ljava/lang/String; = "Microphone disabled."

.field public static final blacklist AUDIT_MICROPHONE_ENABLED:Ljava/lang/String; = "Microphone enabled."

.field public static final blacklist AUDIT_NFC_POLICY_ANDROID_BEAM_ALREADY_DISABLED:Ljava/lang/String; = "Nfc policy: Android Beam already disabled"

.field public static final blacklist AUDIT_NFC_POLICY_ANDROID_BEAM_ALREADY_ENABLED:Ljava/lang/String; = "Nfc policy: Android Beam already enabled"

.field public static final blacklist AUDIT_NFC_POLICY_ANDROID_BEAM_DISABLED:Ljava/lang/String; = "Nfc policy: Android Beam disabled"

.field public static final blacklist AUDIT_NFC_POLICY_ANDROID_BEAM_ENABLED:Ljava/lang/String; = "Nfc policy: Android Beam enabled"

.field public static final blacklist AUDIT_NFC_POLICY_DISABLED:Ljava/lang/String; = "Nfc policy: NFC Disabled"

.field public static final blacklist AUDIT_NFC_POLICY_DISABLE_NFC_POLICY_ENFORCED:Ljava/lang/String; = "Nfc policy: Disabling NFC failed. Reason: isKnoxNfcStateChangeAllowed is false"

.field public static final blacklist AUDIT_NFC_POLICY_DISABLE_NFC_RESTRICTION_POLICY_ENFORCED:Ljava/lang/String; = "Nfc policy: Disabling NFC failed. Reason: isSettingsChangesAllowed is false"

.field public static final blacklist AUDIT_NFC_POLICY_DISABLING_ALREADY_DISABLED:Ljava/lang/String; = "Nfc policy: NFC already disabled"

.field public static final blacklist AUDIT_NFC_POLICY_DISABLING_ERROR:Ljava/lang/String; = "Nfc policy: Error disabling NFC. Reason: deinit fail"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLED:Ljava/lang/String; = "Nfc policy: NFC Enabled"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLE_NFC_POLICY_ENFORCED:Ljava/lang/String; = "Nfc policy: Enabling NFC failed. Reason: isKnoxNfcStateChangeAllowed is false"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLE_NFC_RESTRICTION_POLICY_ENFORCED:Ljava/lang/String; = "Nfc policy: Enabling NFC failed. Reason: isSettingsChangesAllowed is false"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLING_ALREADY_ENABLED:Ljava/lang/String; = "Nfc policy: NFC already enabled"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLING_DENYING_ENABLE_REQUEST:Ljava/lang/String; = "Nfc policy: Enabling NFC request (airplane mode) failed. Reason: Enable reject"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLING_ERROR:Ljava/lang/String; = "Nfc policy: Error enabling NFC. Reason: init fail"

.field public static final blacklist AUDIT_NFC_POLICY_ENABLING_WITHOUT_DISCOVERY:Ljava/lang/String; = "Nfc policy: NFC enabled without Discovery"

.field public static final blacklist AUDIT_NOT_ALLOWED_TO_START_CONNECTION_FOR_PROFILE_CHECK_VPN_AND_PROFILE_STATUS:Ljava/lang/String; = "Not allowed to start connection for profile %s. Check vpn and profile status"

.field public static final blacklist AUDIT_OTP_DEVICE_TIME_CHANGED_CURRENT_TIME:Ljava/lang/String; = "The device time has been changed. Current Time = %d"

.field public static final blacklist AUDIT_PACKAGE_NAME_ADDED_TO_VPN_FOR_PROFILE_REMOVED_FROM_EXEMPT_LIST:Ljava/lang/String; = "Package name %s added to vpn for profile %s. Removed from exempt list"

.field public static final blacklist AUDIT_PACKAGE_NAME_HAS_BEEN_ACTIVATED_AS_ADMIN:Ljava/lang/String; = "Package %s has been activated as admin."

.field public static final blacklist AUDIT_PACKAGE_NAME_HAS_BEEN_REMOVED_AS_ADMIN:Ljava/lang/String; = "Package %s has been removed as admin."

.field public static final blacklist AUDIT_PACKAGE_NAME_REMOVED_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "%s removed from vpn for profile %s"

.field public static final blacklist AUDIT_PACKAGE_NAME_REMOVED_TO_VPN_FOR_PROFILE_ADDED_FROM_EXEMPT_LIST:Ljava/lang/String; = "Package name %s removed from vpn for profile %s. Added to exempt list"

.field public static final blacklist AUDIT_PAIRING_BLUETOOTH_DEVICE_SUCCEEDED:Ljava/lang/String; = "Pairing bluetooth device %s succeeded"

.field public static final blacklist AUDIT_PASSWORD_ATTEMPTS:Ljava/lang/String; = "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = %d"

.field public static final blacklist AUDIT_PASSWORD_ATTEMPTS_OK:Ljava/lang/String; = "Password attempts : OK"

.field public static final blacklist AUDIT_PASSWORD_QUALITY:Ljava/lang/String; = "Password quality : setPasswordQuality() should be set between alphanumeric and complex."

.field public static final blacklist AUDIT_PASSWORD_QUALITY_OK:Ljava/lang/String; = "Password quality : OK"

.field public static final blacklist AUDIT_PROPERTY_NAME_HAS_CHANGED_TO_VALUE:Ljava/lang/String; = "Property %s has been changed to %s"

.field public static final blacklist AUDIT_RECEIVING_DATA_THROUGH_NFC_SUCCEEDED:Ljava/lang/String; = "Receiving data through NFC succeeded"

.field public static final blacklist AUDIT_RECEIVING_MMS_FAILED_BLOCKED_BY_PHONE_RESTRICTION_POLICY:Ljava/lang/String; = "Receiving MMS failed. Blocked by phone restriction policy."

.field public static final blacklist AUDIT_RECEIVING_SMS_FAILED:Ljava/lang/String; = "Receiving SMS failed."

.field public static final blacklist AUDIT_RECEIVING_SMS_FAILED_BLOCKED_BY_PHONE_RESTRICTION_POLICY:Ljava/lang/String; = "Receiving SMS failed. Blocked by phone restriction policy."

.field public static final blacklist AUDIT_RECEIVING_SMS_SUCCEEDED:Ljava/lang/String; = "Receiving SMS succeeded."

.field public static final blacklist AUDIT_REMOTE_INJECTION_KEYSTROKE_FAILED:Ljava/lang/String; = "Remotely injecting a keystroke event into the UI failed"

.field public static final blacklist AUDIT_REMOTE_INJECTION_KEYSTROKE_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a keystroke event into the UI succeeded"

.field public static final blacklist AUDIT_REMOTE_INJECTION_TOUCH_FAILED:Ljava/lang/String; = "Remotely injecting a pointer (touch) event into the UI failed"

.field public static final blacklist AUDIT_REMOTE_INJECTION_TOUCH_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a pointer (touch) event into the UI succeeded"

.field public static final blacklist AUDIT_REMOTE_INJECTION_TRACKBALL_FAILED:Ljava/lang/String; = "Remotely injecting a trackball event into the UI failed"

.field public static final blacklist AUDIT_REMOTE_INJECTION_TRACKBALL_SUCCEEDED:Ljava/lang/String; = "Remotely injecting a trackball event into the UI succeeded"

.field public static final blacklist AUDIT_REMOVABLE_MEDIA_EVENT_EXTERNAL_SD_CARD:Ljava/lang/String; = "Removable Media Event: External SD Card %s"

.field public static final blacklist AUDIT_REMOVABLE_MEDIA_EVENT_USB_HOST_MEMORY:Ljava/lang/String; = "Removable Media Event: USB HOST MEMORY %s"

.field public static final blacklist AUDIT_REMOVED_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "%s removed from vpn for profile %s"

.field public static final blacklist AUDIT_REMOVE_TRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

.field public static final blacklist AUDIT_REMOVE_UNTRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

.field public static final blacklist AUDIT_SAVE_APN_FAILED:Ljava/lang/String; = "Saving APN failed"

.field public static final blacklist AUDIT_SCREEN_LOCK:Ljava/lang/String; = "Screen lock : Screen lock should be set to Password above alphanumeric (Biometric lock is available)"

.field public static final blacklist AUDIT_SCREEN_LOCK_OK:Ljava/lang/String; = "Screen lock : OK"

.field public static final blacklist AUDIT_SD_CARD_STATUS:Ljava/lang/String; = "SD card status : setRequireStorageCardEncryption() should be set to true, setSdCardState() should be set to false or DISALLOW_MOUNT_PHYSICAL_MEDIA should be set to addUserRestriction()."

.field public static final blacklist AUDIT_SD_CARD_STATUS_OK_BLOCKED:Ljava/lang/String; = "SD card status : OK (Blocked)"

.field public static final blacklist AUDIT_SD_CARD_STATUS_OK_ENCRYPTED:Ljava/lang/String; = "SD card status : OK (Encrypted)"

.field public static final blacklist AUDIT_SD_CARD_STATUS_OK_NO_SLOT:Ljava/lang/String; = "SD card status : OK (No slot)"

.field public static final blacklist AUDIT_SENDING_DATA_THROUGH_NFC_FAILED:Ljava/lang/String; = "Sending data through NFC failed"

.field public static final blacklist AUDIT_SENDING_DATA_THROUGH_NFC_SUCCEEDED:Ljava/lang/String; = "Sending data through NFC succeeded"

.field public static final blacklist AUDIT_SENDING_FILE_NAME_VIA_BLUETOOTH_OBEX_FAILED_DEVICE_NOT_ALLOWED:Ljava/lang/String; = "Sending file %s via Bluetooth Obex failed - device not allowed"

.field public static final blacklist AUDIT_SENDING_SMS_FAILED:Ljava/lang/String; = "Sending SMS failed."

.field public static final blacklist AUDIT_SENDING_SMS_FAILED_BLOCKED_BY_PHONE_RESTRICTION_POLICY:Ljava/lang/String; = "Sending SMS failed. Blocked by phone restriction policy."

.field public static final blacklist AUDIT_SENDING_SMS_SUCCEEDED:Ljava/lang/String; = "Sending SMS succeeded."

.field public static final blacklist AUDIT_SETTING_BLUETOOTH_DEVICE_AS_DISCOVERABLE_SUCCEEDED:Ljava/lang/String; = "Setting bluetooth device as discoverable succeeded"

.field public static final blacklist AUDIT_SMART_LOCK:Ljava/lang/String; = "Smart lock : KEYGUARD_DISABLE_TRUST_AGENTS should be set to setKeyguardDisabledFeatures()."

.field public static final blacklist AUDIT_SMART_LOCK_OK:Ljava/lang/String; = "Smart lock : OK"

.field public static final blacklist AUDIT_SOFTWARE_UPDATE_PACKAGE_NAME_STARTED:Ljava/lang/String; = "Software update %s started"

.field public static final blacklist AUDIT_SOFTWARE_UPDATE_PACKAGE_VERIFICATION_FAILED:Ljava/lang/String; = "Software update package verification failed"

.field public static final blacklist AUDIT_SOFTWARE_UPDATE_PACKAGE_VERIFICATION_SUCCEEDED:Ljava/lang/String; = "Software update package verification succeeded"

.field public static final blacklist AUDIT_SOFTWARE_UPDATE_VERSION_FAILED_REASON_STATUS:Ljava/lang/String; = "Software update %s failed. Reason: %d"

.field public static final blacklist AUDIT_SOFTWARE_UPDATE_VERSION_SUCCEEDED:Ljava/lang/String; = "Software update %s succeeded"

.field public static final blacklist AUDIT_STARTING_INSTALL_APPLICATION:Ljava/lang/String; = "Starting to install application %s version %s"

.field public static final blacklist AUDIT_STARTING_USER_DATA_WIPE:Ljava/lang/String; = "Starting user data wipe"

.field public static final blacklist AUDIT_START_ACTIVITY_FAILED:Ljava/lang/String; = "Start activity %s failed"

.field public static final blacklist AUDIT_START_ACTIVITY_FAILED_DUE_TO_PASSWORD_CHANGE_ENFORCEMENT:Ljava/lang/String; = "Start activity %s failed. Blocked due to password change enforcement."

.field public static final blacklist AUDIT_START_ACTIVITY_FAILED_DUE_TO_SETTINGS_CHANGES_NOT_ALLOWED:Ljava/lang/String; = "Start activity %s failed. Blocked due to settings changes not allowed."

.field public static final blacklist AUDIT_START_ACTIVITY_FAILED_DUE_TO_SVOICE_NOT_ALLOWED:Ljava/lang/String; = "Start activity %s failed. Blocked due to SVoice not allowed."

.field public static final blacklist AUDIT_START_ACTIVITY_FAILED_TASK_MANAGER_IS_NOT_ALLOWED:Ljava/lang/String; = "Start activity %s failed. Task manager is not allowed."

.field public static final blacklist AUDIT_START_ACTIVITY_SUCCEEDED:Ljava/lang/String; = "Start activity %s succeeded"

.field public static final blacklist AUDIT_SUCCESS_REMOVING_UID_FROM_EXEMPTED_LIST_AFTER_UNINSTALLATION_FOR_PROFILE:Ljava/lang/String; = "Success removing uid = %d from exempted list after uninstallation for profile %s"

.field public static final blacklist AUDIT_SUCCESS_WHILE_ADDING_ALL_THE_PACKAGES_TO_VPN_FOR_PROFILE:Ljava/lang/String; = "Success while adding all the packages to vpn for profile %s"

.field public static final blacklist AUDIT_SUCCESS_WHILE_REMOVING_ALL_THE_PACKAGES_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "Success while removing all the packages from vpn for profile %s"

.field public static final blacklist AUDIT_SUCCESS_WHILE_REMOVING_FROM_VPN_FOR_PROFILE:Ljava/lang/String; = "Success while removing all packages from vpn for profile %s"

.field public static final blacklist AUDIT_UNINSTALL_APPLICATION_FAILED:Ljava/lang/String; = "Uninstall application %s failed"

.field public static final blacklist AUDIT_UNINSTALL_APPLICATION_SUCCEEDED:Ljava/lang/String; = "Uninstall application %s succeeded"

.field public static final blacklist AUDIT_UNSUPPORTED_OPCODE:Ljava/lang/String; = "AUDIT: unsupported audit opcode: [%d]"

.field public static final blacklist AUDIT_USER_ACTION_PAIRING_BLUETOOTH_FAILED_USER_CANCELED:Ljava/lang/String; = "User Interaction: User action pairing bluetooth device %s failed. Reason: User canceled"

.field public static final blacklist AUDIT_USER_ACTION_PAIRING_BLUETOOTH_SUCCEEDED:Ljava/lang/String; = "User Interaction: User action pairing bluetooth device %s succeeded"

.field public static final blacklist AUDIT_USER_AUTHORIZATION_OF_PROFILE_FOR_DEVICE_WAS_GRANTED:Ljava/lang/String; = "User authorization of profile %s for device %s was granted"

.field public static final blacklist AUDIT_USER_AUTHORIZATION_OF_PROFILE_FOR_DEVICE_WAS_REJECTED:Ljava/lang/String; = "User authorization of profile %s for device %s was rejected"

.field public static final blacklist AUDIT_USER_HAS_CHANGED_THE_BLUETOOTH_PROFILE_ON_BLUETOOTH_DEVICE_TO_DISABLED:Ljava/lang/String; = "User has changed the bluetooth profile %s, on bluetooth device %s, to disabled."

.field public static final blacklist AUDIT_USER_HAS_CHANGED_THE_BLUETOOTH_PROFILE_ON_BLUETOOTH_DEVICE_TO_ENABLED:Ljava/lang/String; = "User has changed the bluetooth profile %s, on bluetooth device %s, to enabled."

.field public static final blacklist AUDIT_USER_HAS_EXCEEDED_NUMBER_OF_AUTHENTICATION_FAILURE_LIMIT:Ljava/lang/String; = "User %d has exceeded number of authentication failure limit"

.field public static final blacklist AUDIT_USER_HAS_EXCEEDED_NUMBER_OF_AUTHENTICATION_FAILURE_LIMIT_WHEN_USING_AUTHENTICATION:Ljava/lang/String; = "User %d has exceeded number of authentication failure limit when using %s authentication"

.field public static final blacklist AUDIT_USER_HAS_EXCEEDED_NUMBER_OF_AUTHENTICATION_FAILURE_LIMIT_WHEN_USING_PATTERN_AUTHENTICATION:Ljava/lang/String; = "User %d has exceeded number of authentication failure limit when using pattern authentication"

.field public static final blacklist AUDIT_USER_INTERACTION_DISABLING_BLUETOOTH_SUCCEEDED:Ljava/lang/String; = "User Interaction: disabling bluetooth succeeded"

.field public static final blacklist AUDIT_USER_INTERACTION_DISCOVERABLE_MODE_STATUS_HAS_FAILED_TO_CHANGE_REASON_MDM_POLICY:Ljava/lang/String; = "User Interaction: Discoverable mode status has failed to change to discoverable. Reason: MDM policy"

.field public static final blacklist AUDIT_USER_INTERACTION_ENABLING_BLUETOOTH_FAILED_REASON_MDM_POLICY:Ljava/lang/String; = "User Interaction: enabling bluetooth failed. Reason: MDM policy"

.field public static final blacklist AUDIT_USER_INTERACTION_ENABLING_BLUETOOTH_SUCCEEDED:Ljava/lang/String; = "User Interaction: enabling bluetooth succeeded"

.field public static final blacklist AUDIT_USER_INTERACTION_FACTORY_RESET:Ljava/lang/String; = "User Interaction: factory reset"

.field public static final blacklist AUDIT_USER_INTERACTION_STATUS_HAS_SUCCESSFULLY_CHANGED_TO_DISCOVERABLE:Ljava/lang/String; = "User Interaction: Discoverable mode status has successfully changed to discoverable"

.field public static final blacklist AUDIT_USER_INTERACTION_STATUS_HAS_SUCCESSFULLY_CHANGED_TO_NOT_DISCOVERABLE:Ljava/lang/String; = "User Interaction: Discoverable mode status has successfully changed to not discoverable"

.field public static final blacklist AUDIT_VPN_CONNECTION_ESTABLISHED_FOR_PROFILE:Ljava/lang/String; = "Vpn connection established for profile %s"

.field public static final blacklist AUDIT_VPN_CONNECTION_NOT_ESTABLISHED_NO_PACKAGE_ADDED_TO_PROFILE:Ljava/lang/String; = "Vpn connection not established. No package added to profile %s"

.field public static final blacklist AUDIT_VPN_PROFILE_SUCCESSFULLY_ACTIVATED:Ljava/lang/String; = "Vpn profile %s successfully activated"

.field public static final blacklist AUDIT_VPN_PROFILE_SUCCESSFULLY_CREATED:Ljava/lang/String; = "Vpn profile %s successfully created"

.field public static final blacklist AUDIT_VPN_PROFILE_SUCCESSFULLY_DEACTIVATED:Ljava/lang/String; = "Vpn profile %s successfully deactivated"

.field public static final blacklist AUDIT_VPN_PROFILE_SUCCESSFULLY_REMOVED:Ljava/lang/String; = "Vpn profile %s successfully removed"

.field public static final blacklist AUDIT_WIFI_DISABLING:Ljava/lang/String; = "Disabling Wifi"

.field public static final blacklist AUDIT_WIFI_ENABLING:Ljava/lang/String; = "Enabling Wifi"

.field public static final blacklist AUDIT_WIPING_DATA_IS_NOT_ALLOWED_FOR_THIS_USER:Ljava/lang/String; = "Wiping data (factory reset) is not allowed for this user."


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
