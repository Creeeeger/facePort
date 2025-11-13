.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final blacklist TRANSACTION_acknowledgeDeviceCompliant:I = 0x166

.field static final blacklist TRANSACTION_acknowledgeNewUserDisclaimer:I = 0xa1

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x87

.field static final blacklist TRANSACTION_addCrossProfileIntentFilterMDM:I = 0x141

.field static final greylist-max-o TRANSACTION_addCrossProfileWidgetProvider:I = 0xcb

.field static final greylist-max-o TRANSACTION_addOverrideApn:I = 0x129

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x7b

.field static final greylist-max-o TRANSACTION_approveCaCert:I = 0x68

.field static final greylist-max-o TRANSACTION_bindDeviceAdminServiceAsUser:I = 0x111

.field static final blacklist TRANSACTION_canAdminGrantSensorsPermissionsForUser:I = 0x173

.field static final blacklist TRANSACTION_canProfileOwnerResetPasswordWhenLocked:I = 0x168

.field static final blacklist TRANSACTION_canUsbDataSignalingBeDisabled:I = 0x177

.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x5f

.field static final blacklist TRANSACTION_checkProvisioningPrecondition:I = 0xe5

.field static final greylist-max-o TRANSACTION_choosePrivateKeyAlias:I = 0x6f

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x11d

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x88

.field static final blacklist TRANSACTION_clearCrossProfileIntentFiltersMDM:I = 0x142

.field static final greylist-max-o TRANSACTION_clearDeviceOwner:I = 0x53

.field static final blacklist TRANSACTION_clearOrganizationIdForUser:I = 0xf3

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x7c

.field static final greylist-max-o TRANSACTION_clearProfileOwner:I = 0x5c

.field static final greylist-max-o TRANSACTION_clearResetPasswordToken:I = 0x118

.field static final blacklist TRANSACTION_clearResetPasswordTokenMDM:I = 0x145

.field static final greylist-max-o TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xda

.field static final greylist-max-o TRANSACTION_createAdminSupportIntent:I = 0x94

.field static final greylist-max-o TRANSACTION_createAndManageUser:I = 0x98

.field static final blacklist TRANSACTION_createAndProvisionManagedProfile:I = 0x16d

.field static final greylist-max-o TRANSACTION_enableSystemApp:I = 0xa3

.field static final greylist-max-o TRANSACTION_enableSystemAppWithIntent:I = 0xa4

.field static final greylist-max-o TRANSACTION_enforceCanManageCaCerts:I = 0x67

.field static final blacklist TRANSACTION_finalizeWorkProfileProvisioning:I = 0x16f

.field static final blacklist TRANSACTION_forceNetworkLogs:I = 0x104

.field static final greylist-max-o TRANSACTION_forceRemoveActiveAdmin:I = 0x46

.field static final greylist-max-o TRANSACTION_forceSecurityLogs:I = 0x105

.field static final greylist-max-o TRANSACTION_forceUpdateUserSetupComplete:I = 0x10b

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6d

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xa7

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xa8

.field static final greylist-max-o TRANSACTION_getActiveAdmins:I = 0x42

.field static final blacklist TRANSACTION_getActualDeviceOwnerMDM:I = 0x130

.field static final greylist-max-o TRANSACTION_getAffiliationIds:I = 0xfd

.field static final blacklist TRANSACTION_getAggregatedPasswordComplexityForUser:I = 0x1d

.field static final blacklist TRANSACTION_getAllCrossProfilePackages:I = 0x155

.field static final blacklist TRANSACTION_getAlwaysOnVpnLockdownAllowlist:I = 0x7a

.field static final greylist-max-o TRANSACTION_getAlwaysOnVpnPackage:I = 0x76

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackageForUser:I = 0x77

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x7f

.field static final blacklist TRANSACTION_getApplicationRestrictionsMDM:I = 0x140

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x81

.field static final blacklist TRANSACTION_getAutoTimeEnabled:I = 0xd1

.field static final greylist-max-o TRANSACTION_getAutoTimeRequired:I = 0xcf

.field static final blacklist TRANSACTION_getAutoTimeZoneEnabled:I = 0xd3

.field static final greylist-max-o TRANSACTION_getBindDeviceAdminTargetUsers:I = 0x112

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabled:I = 0xc7

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xc8

.field static final blacklist TRANSACTION_getBluetoothContactSharingEnabledForKnox:I = 0x1ac

.field static final greylist-max-o TRANSACTION_getCameraDisabled:I = 0x37

.field static final greylist-max-o TRANSACTION_getCertInstallerPackage:I = 0x74

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackages:I = 0x150

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackagesForUser:I = 0x152

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xc0

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xc1

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xc3

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xc4

.field static final blacklist TRANSACTION_getCrossProfilePackages:I = 0x154

.field static final greylist-max-o TRANSACTION_getCrossProfileWidgetProviders:I = 0xcd

.field static final blacklist TRANSACTION_getCurrentFailedBiometricAttempts:I = 0x20

.field static final greylist-max-o TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1f

.field static final blacklist TRANSACTION_getDefaultCrossProfilePackages:I = 0x156

.field static final greylist-max-o TRANSACTION_getDelegatePackages:I = 0x72

.field static final greylist-max-o TRANSACTION_getDelegatedScopes:I = 0x71

.field static final greylist-max-o TRANSACTION_getDeviceOwnerComponent:I = 0x50

.field static final greylist-max-o TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x61

.field static final greylist-max-o TRANSACTION_getDeviceOwnerName:I = 0x52

.field static final greylist-max-o TRANSACTION_getDeviceOwnerOrganizationName:I = 0xf8

.field static final blacklist TRANSACTION_getDeviceOwnerType:I = 0x171

.field static final greylist-max-o TRANSACTION_getDeviceOwnerUserId:I = 0x54

.field static final greylist-max-o TRANSACTION_getDisallowedSystemApps:I = 0x120

.field static final greylist-max-o TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xdd

.field static final blacklist TRANSACTION_getDrawable:I = 0x17f

.field static final greylist-max-o TRANSACTION_getEndUserSessionMessage:I = 0x126

.field static final blacklist TRANSACTION_getEnforcingAdminAndUserDetails:I = 0x95

.field static final blacklist TRANSACTION_getEnrollmentSpecificId:I = 0x16b

.field static final blacklist TRANSACTION_getFactoryResetProtectionPolicy:I = 0x2c

.field static final greylist-max-o TRANSACTION_getForceEphemeralUsers:I = 0xd5

.field static final blacklist TRANSACTION_getGlobalPrivateDnsHost:I = 0x14c

.field static final blacklist TRANSACTION_getGlobalPrivateDnsMode:I = 0x14b

.field static final greylist-max-o TRANSACTION_getGlobalProxyAdmin:I = 0x30

.field static final greylist-max-o TRANSACTION_getKeepUninstalledPackages:I = 0xe7

.field static final blacklist TRANSACTION_getKeyPairGrants:I = 0x15b

.field static final greylist-max-o TRANSACTION_getKeyguardDisabledFeatures:I = 0x3f

.field static final greylist-max-o TRANSACTION_getLastBugReportRequestTime:I = 0x115

.field static final greylist-max-o TRANSACTION_getLastNetworkLogRetrievalTime:I = 0x116

.field static final greylist-max-o TRANSACTION_getLastSecurityLogRetrievalTime:I = 0x114

.field static final greylist-max-o TRANSACTION_getLockTaskFeatures:I = 0xb1

.field static final greylist-max-o TRANSACTION_getLockTaskPackages:I = 0xae

.field static final blacklist TRANSACTION_getLogoutUserId:I = 0x9f

.field static final greylist-max-o TRANSACTION_getLongSupportMessage:I = 0xee

.field static final greylist-max-o TRANSACTION_getLongSupportMessageForUser:I = 0xf0

.field static final blacklist TRANSACTION_getManagedProfileMaximumTimeOff:I = 0x164

.field static final greylist-max-o TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x23

.field static final greylist-max-o TRANSACTION_getMaximumTimeToLock:I = 0x26

.field static final greylist-max-o TRANSACTION_getMeteredDataDisabledPackages:I = 0x128

.field static final blacklist TRANSACTION_getMinimumRequiredWifiSecurityLevel:I = 0x179

.field static final blacklist TRANSACTION_getNearbyAppStreamingPolicy:I = 0x3d

.field static final blacklist TRANSACTION_getNearbyNotificationStreamingPolicy:I = 0x3b

.field static final greylist-max-o TRANSACTION_getOrganizationColor:I = 0xf4

.field static final greylist-max-o TRANSACTION_getOrganizationColorForUser:I = 0xf5

.field static final greylist-max-o TRANSACTION_getOrganizationName:I = 0xf7

.field static final greylist-max-o TRANSACTION_getOrganizationNameForUser:I = 0xf9

.field static final greylist-max-o TRANSACTION_getOverrideApns:I = 0x12c

.field static final greylist-max-o TRANSACTION_getOwnerInstalledCaCerts:I = 0x11c

.field static final blacklist TRANSACTION_getPasswordComplexity:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPasswordExpiration:I = 0x16

.field static final greylist-max-o TRANSACTION_getPasswordExpirationTimeout:I = 0x15

.field static final greylist-max-o TRANSACTION_getPasswordHistoryLength:I = 0x13

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final blacklist TRANSACTION_getPasswordMinimumMetrics:I = 0x11

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final greylist-max-o TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final greylist-max-o TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final greylist-max-o TRANSACTION_getPasswordQuality:I = 0x2

.field static final greylist-max-o TRANSACTION_getPendingSystemUpdate:I = 0xdf

.field static final greylist-max-o TRANSACTION_getPermissionGrantState:I = 0xe3

.field static final greylist-max-o TRANSACTION_getPermissionPolicy:I = 0xe1

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServices:I = 0x8a

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x8b

.field static final greylist-max-o TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x92

.field static final greylist-max-o TRANSACTION_getPermittedInputMethods:I = 0x8e

.field static final blacklist TRANSACTION_getPermittedInputMethodsAsUser:I = 0x8f

.field static final blacklist TRANSACTION_getPersonalAppsSuspendedReasons:I = 0x162

.field static final blacklist TRANSACTION_getPolicyManagedProfiles:I = 0x186

.field static final blacklist TRANSACTION_getPreferentialNetworkServiceConfigs:I = 0xac

.field static final blacklist TRANSACTION_getProfileOwnerAsUser:I = 0x56

.field static final greylist-max-o TRANSACTION_getProfileOwnerName:I = 0x59

.field static final blacklist TRANSACTION_getProfileOwnerOrDeviceOwnerSupervisionComponent:I = 0x57

.field static final greylist-max-o TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x21

.field static final greylist-max-o TRANSACTION_getRemoveWarning:I = 0x44

.field static final blacklist TRANSACTION_getRequiredPasswordComplexity:I = 0x1c

.field static final greylist-max-o TRANSACTION_getRequiredStrongAuthTimeout:I = 0x28

.field static final greylist-max-o TRANSACTION_getRestrictionsProvider:I = 0x84

.field static final blacklist TRANSACTION_getSamsungSDcardEncryptionStatus:I = 0x1ae

.field static final greylist-max-o TRANSACTION_getScreenCaptureDisabled:I = 0x39

.field static final greylist-max-o TRANSACTION_getSecondaryUsers:I = 0xa0

.field static final greylist-max-o TRANSACTION_getShortSupportMessage:I = 0xec

.field static final greylist-max-o TRANSACTION_getShortSupportMessageForUser:I = 0xef

.field static final greylist-max-o TRANSACTION_getStartUserSessionMessage:I = 0x125

.field static final greylist-max-o TRANSACTION_getStorageEncryption:I = 0x33

.field static final greylist-max-o TRANSACTION_getStorageEncryptionStatus:I = 0x34

.field static final blacklist TRANSACTION_getString:I = 0x184

.field static final greylist-max-o TRANSACTION_getSystemUpdatePolicy:I = 0xd9

.field static final greylist-max-o TRANSACTION_getTransferOwnershipBundle:I = 0x122

.field static final greylist-max-o TRANSACTION_getTrustAgentConfiguration:I = 0xca

.field static final blacklist TRANSACTION_getUserControlDisabledPackages:I = 0x15f

.field static final greylist-max-o TRANSACTION_getUserProvisioningState:I = 0xfa

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x86

.field static final greylist-max-o TRANSACTION_getWifiMacAddress:I = 0xe9

.field static final blacklist TRANSACTION_getWifiSsidPolicy:I = 0x17b

.field static final blacklist TRANSACTION_hasDelegatedPermission:I = 0x149

.field static final greylist-max-o TRANSACTION_hasDeviceOwner:I = 0x51

.field static final greylist-max-o TRANSACTION_hasGrantedPolicy:I = 0x47

.field static final blacklist TRANSACTION_hasKeyPair:I = 0x6c

.field static final blacklist TRANSACTION_hasLockdownAdminConfiguredNetworks:I = 0xb6

.field static final greylist-max-o TRANSACTION_hasUserSetupCompleted:I = 0x5d

.field static final greylist-max-o TRANSACTION_installCaCert:I = 0x65

.field static final greylist-max-o TRANSACTION_installExistingPackage:I = 0xa5

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x6a

.field static final blacklist TRANSACTION_installUpdateFromFile:I = 0x14e

.field static final greylist-max-o TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x8c

.field static final greylist-max-o TRANSACTION_isActivePasswordSufficient:I = 0x17

.field static final blacklist TRANSACTION_isActivePasswordSufficientForDeviceRequirement:I = 0x18

.field static final greylist-max-o TRANSACTION_isAdminActive:I = 0x41

.field static final greylist-max-o TRANSACTION_isAffiliatedUser:I = 0xff

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabled:I = 0x78

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabledForUser:I = 0x79

.field static final greylist-max-o TRANSACTION_isApplicationHidden:I = 0x97

.field static final greylist-max-o TRANSACTION_isBackupServiceEnabled:I = 0x10d

.field static final greylist-max-o TRANSACTION_isCaCertApproved:I = 0x69

.field static final greylist-max-o TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x82

.field static final blacklist TRANSACTION_isCallingUserAffiliated:I = 0xfe

.field static final blacklist TRANSACTION_isCommonCriteriaModeEnabled:I = 0x161

.field static final blacklist TRANSACTION_isComplianceAcknowledgementRequired:I = 0x167

.field static final greylist-max-o TRANSACTION_isCurrentInputMethodSetByOwner:I = 0x11b

.field static final greylist-max-o TRANSACTION_isDeviceProvisioned:I = 0x108

.field static final greylist-max-o TRANSACTION_isDeviceProvisioningConfigApplied:I = 0x109

.field static final blacklist TRANSACTION_isDpcDownloaded:I = 0x180

.field static final greylist-max-o TRANSACTION_isEphemeralUser:I = 0x113

.field static final blacklist TRANSACTION_isFactoryResetProtectionPolicySupported:I = 0x2d

.field static final greylist-max-o TRANSACTION_isInputMethodPermittedByAdmin:I = 0x90

.field static final blacklist TRANSACTION_isKeyPairGrantedToWifiAuth:I = 0x15d

.field static final greylist-max-o TRANSACTION_isLockTaskPermitted:I = 0xaf

.field static final greylist-max-o TRANSACTION_isLogoutEnabled:I = 0x11f

.field static final blacklist TRANSACTION_isManagedKiosk:I = 0x157

.field static final greylist-max-o TRANSACTION_isManagedProfile:I = 0xe8

.field static final greylist-max-o TRANSACTION_isMasterVolumeMuted:I = 0xbb

.field static final greylist-max-o TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x12f

.field static final greylist-max-o TRANSACTION_isNetworkLoggingEnabled:I = 0x10f

.field static final blacklist TRANSACTION_isNewUserDisclaimerAcknowledged:I = 0xa2

.field static final greylist-max-o TRANSACTION_isNotificationListenerServicePermitted:I = 0x93

.field static final blacklist TRANSACTION_isOrganizationOwnedDeviceWithManagedProfile:I = 0x5e

.field static final greylist-max-o TRANSACTION_isOverrideApnEnabled:I = 0x12e

.field static final blacklist TRANSACTION_isPackageAllowedToAccessCalendarForUser:I = 0x151

.field static final greylist-max-o TRANSACTION_isPackageSuspended:I = 0x63

.field static final blacklist TRANSACTION_isPasswordSufficientAfterProfileUnification:I = 0x19

.field static final blacklist TRANSACTION_isProfileOwnerOfOrganizationOwnedDeviceMDM:I = 0x148

.field static final greylist-max-o TRANSACTION_isProvisioningAllowed:I = 0xe4

.field static final greylist-max-o TRANSACTION_isRemovingAdmin:I = 0xd6

.field static final greylist-max-o TRANSACTION_isResetPasswordTokenActive:I = 0x119

.field static final blacklist TRANSACTION_isResetPasswordTokenActiveMDM:I = 0x144

.field static final blacklist TRANSACTION_isSafeOperation:I = 0x16a

.field static final blacklist TRANSACTION_isSecondaryLockscreenEnabled:I = 0xaa

.field static final greylist-max-o TRANSACTION_isSecurityLoggingEnabled:I = 0x101

.field static final blacklist TRANSACTION_isSupervisionComponent:I = 0x58

.field static final blacklist TRANSACTION_isUnattendedManagedKiosk:I = 0x158

.field static final greylist-max-o TRANSACTION_isUninstallBlocked:I = 0xbe

.field static final greylist-max-o TRANSACTION_isUninstallInQueue:I = 0x106

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabled:I = 0x175

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabledForUser:I = 0x176

.field static final greylist-max-o TRANSACTION_isUsingUnifiedPassword:I = 0x1e

.field static final blacklist TRANSACTION_listForegroundAffiliatedUsers:I = 0x17c

.field static final blacklist TRANSACTION_listPolicyExemptApps:I = 0x64

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x29

.field static final greylist-max-o TRANSACTION_logoutUser:I = 0x9d

.field static final blacklist TRANSACTION_logoutUserInternal:I = 0x9e

.field static final greylist-max-o TRANSACTION_notifyLockTaskModeChanged:I = 0xbc

.field static final greylist-max-o TRANSACTION_notifyPendingSystemUpdate:I = 0xde

.field static final greylist TRANSACTION_packageHasActiveAdmins:I = 0x43

.field static final blacklist TRANSACTION_provisionFullyManagedDevice:I = 0x16e

.field static final greylist-max-o TRANSACTION_reboot:I = 0xea

.field static final blacklist TRANSACTION_rebootMDM:I = 0x131

.field static final greylist TRANSACTION_removeActiveAdmin:I = 0x45

.field static final greylist-max-o TRANSACTION_removeCrossProfileWidgetProvider:I = 0xcc

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0x6b

.field static final greylist-max-o TRANSACTION_removeOverrideApn:I = 0x12b

.field static final greylist-max-o TRANSACTION_removeUser:I = 0x99

.field static final blacklist TRANSACTION_reportFailedBiometricAttempt:I = 0x4b

.field static final greylist-max-o TRANSACTION_reportFailedPasswordAttempt:I = 0x49

.field static final greylist-max-o TRANSACTION_reportKeyguardDismissed:I = 0x4d

.field static final greylist-max-o TRANSACTION_reportKeyguardSecured:I = 0x4e

.field static final greylist-max-o TRANSACTION_reportPasswordChanged:I = 0x48

.field static final blacklist TRANSACTION_reportSuccessfulBiometricAttempt:I = 0x4c

.field static final greylist-max-o TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x4a

.field static final greylist-max-o TRANSACTION_requestBugreport:I = 0x35

.field static final blacklist TRANSACTION_resetDefaultCrossProfileIntentFilters:I = 0x172

.field static final blacklist TRANSACTION_resetDrawables:I = 0x17e

.field static final greylist-max-o TRANSACTION_resetPassword:I = 0x24

.field static final greylist-max-o TRANSACTION_resetPasswordWithToken:I = 0x11a

.field static final blacklist TRANSACTION_resetPasswordWithTokenMDM:I = 0x143

.field static final blacklist TRANSACTION_resetStrings:I = 0x183

.field static final greylist-max-o TRANSACTION_retrieveNetworkLogs:I = 0x110

.field static final greylist-max-o TRANSACTION_retrievePreRebootSecurityLogs:I = 0x103

.field static final greylist-max-o TRANSACTION_retrieveSecurityLogs:I = 0x102

.field static final blacklist TRANSACTION_semGetAllowBluetoothMode:I = 0x1a3

.field static final blacklist TRANSACTION_semGetAllowBrowser:I = 0x19f

.field static final blacklist TRANSACTION_semGetAllowDesktopSync:I = 0x1a5

.field static final blacklist TRANSACTION_semGetAllowInternetSharing:I = 0x1a1

.field static final blacklist TRANSACTION_semGetAllowIrda:I = 0x1a7

.field static final blacklist TRANSACTION_semGetAllowPopImapEmail:I = 0x19d

.field static final blacklist TRANSACTION_semGetAllowStorageCard:I = 0x197

.field static final blacklist TRANSACTION_semGetAllowTextMessaging:I = 0x19b

.field static final blacklist TRANSACTION_semGetAllowWifi:I = 0x199

.field static final blacklist TRANSACTION_semGetRequireStorageCardEncryption:I = 0x1a9

.field static final blacklist TRANSACTION_semIsActivePasswordSufficient:I = 0x191

.field static final blacklist TRANSACTION_semIsSimplePasswordEnabled:I = 0x193

.field static final blacklist TRANSACTION_semSetAllowBluetoothMode:I = 0x1a2

.field static final blacklist TRANSACTION_semSetAllowBrowser:I = 0x19e

.field static final blacklist TRANSACTION_semSetAllowDesktopSync:I = 0x1a4

.field static final blacklist TRANSACTION_semSetAllowInternetSharing:I = 0x1a0

.field static final blacklist TRANSACTION_semSetAllowIrda:I = 0x1a6

.field static final blacklist TRANSACTION_semSetAllowPopImapEmail:I = 0x19c

.field static final blacklist TRANSACTION_semSetAllowStorageCard:I = 0x196

.field static final blacklist TRANSACTION_semSetAllowTextMessaging:I = 0x19a

.field static final blacklist TRANSACTION_semSetAllowWifi:I = 0x198

.field static final blacklist TRANSACTION_semSetCameraDisabled:I = 0x195

.field static final blacklist TRANSACTION_semSetChangeNotificationEnabled:I = 0x1aa

.field static final blacklist TRANSACTION_semSetKeyguardDisabledFeatures:I = 0x194

.field static final blacklist TRANSACTION_semSetPasswordExpirationTimeout:I = 0x190

.field static final blacklist TRANSACTION_semSetPasswordHistoryLength:I = 0x18f

.field static final blacklist TRANSACTION_semSetPasswordMinimumLength:I = 0x188

.field static final blacklist TRANSACTION_semSetPasswordMinimumLetters:I = 0x18b

.field static final blacklist TRANSACTION_semSetPasswordMinimumLowerCase:I = 0x18a

.field static final blacklist TRANSACTION_semSetPasswordMinimumNonLetter:I = 0x18e

.field static final blacklist TRANSACTION_semSetPasswordMinimumNumeric:I = 0x18c

.field static final blacklist TRANSACTION_semSetPasswordMinimumSymbols:I = 0x18d

.field static final blacklist TRANSACTION_semSetPasswordMinimumUpperCase:I = 0x189

.field static final blacklist TRANSACTION_semSetPasswordQuality:I = 0x187

.field static final blacklist TRANSACTION_semSetRequireStorageCardEncryption:I = 0x1a8

.field static final blacklist TRANSACTION_semSetSimplePasswordEnabled:I = 0x192

.field static final blacklist TRANSACTION_sendLostModeLocationUpdate:I = 0x2e

.field static final greylist-max-o TRANSACTION_setAccountManagementDisabled:I = 0xa6

.field static final greylist-max-o TRANSACTION_setActiveAdmin:I = 0x40

.field static final greylist-max-o TRANSACTION_setAffiliationIds:I = 0xfc

.field static final greylist-max-o TRANSACTION_setAlwaysOnVpnPackage:I = 0x75

.field static final greylist-max-o TRANSACTION_setApplicationHidden:I = 0x96

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x7e

.field static final blacklist TRANSACTION_setApplicationRestrictionsMDM:I = 0x13f

.field static final greylist-max-o TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x80

.field static final blacklist TRANSACTION_setAutoTimeEnabled:I = 0xd0

.field static final greylist-max-o TRANSACTION_setAutoTimeRequired:I = 0xce

.field static final blacklist TRANSACTION_setAutoTimeZoneEnabled:I = 0xd2

.field static final greylist-max-o TRANSACTION_setBackupServiceEnabled:I = 0x10c

.field static final greylist-max-o TRANSACTION_setBluetoothContactSharingDisabled:I = 0xc6

.field static final blacklist TRANSACTION_setBluetoothContactSharingEnabledForKnox:I = 0x1ab

.field static final greylist-max-o TRANSACTION_setCameraDisabled:I = 0x36

.field static final greylist-max-o TRANSACTION_setCertInstallerPackage:I = 0x73

.field static final blacklist TRANSACTION_setCommonCriteriaModeEnabled:I = 0x160

.field static final blacklist TRANSACTION_setConfiguredNetworksLockdownState:I = 0xb5

.field static final blacklist TRANSACTION_setCrossProfileCalendarPackages:I = 0x14f

.field static final greylist-max-o TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xbf

.field static final greylist-max-o TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xc2

.field static final blacklist TRANSACTION_setCrossProfilePackages:I = 0x153

.field static final greylist-max-o TRANSACTION_setDefaultSmsApplication:I = 0x7d

.field static final greylist-max-o TRANSACTION_setDelegatedScopes:I = 0x70

.field static final greylist-max-o TRANSACTION_setDeviceOwner:I = 0x4f

.field static final greylist-max-o TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x60

.field static final blacklist TRANSACTION_setDeviceOwnerType:I = 0x170

.field static final greylist-max-o TRANSACTION_setDeviceProvisioningConfigApplied:I = 0x10a

.field static final blacklist TRANSACTION_setDpcDownloaded:I = 0x181

.field static final blacklist TRANSACTION_setDrawables:I = 0x17d

.field static final greylist-max-o TRANSACTION_setEndUserSessionMessage:I = 0x124

.field static final blacklist TRANSACTION_setFactoryResetProtectionPolicy:I = 0x2b

.field static final greylist-max-o TRANSACTION_setForceEphemeralUsers:I = 0xd4

.field static final blacklist TRANSACTION_setGlobalPrivateDns:I = 0x14a

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x2f

.field static final greylist-max-o TRANSACTION_setGlobalSetting:I = 0xb2

.field static final greylist-max-o TRANSACTION_setKeepUninstalledPackages:I = 0xe6

.field static final blacklist TRANSACTION_setKeyGrantForApp:I = 0x15a

.field static final blacklist TRANSACTION_setKeyGrantToWifiAuth:I = 0x15c

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x6e

.field static final greylist-max-o TRANSACTION_setKeyguardDisabled:I = 0xdb

.field static final greylist-max-o TRANSACTION_setKeyguardDisabledFeatures:I = 0x3e

.field static final blacklist TRANSACTION_setKeyguardDisabledFeaturesMDM:I = 0x13e

.field static final blacklist TRANSACTION_setLocationEnabled:I = 0xb7

.field static final greylist-max-o TRANSACTION_setLockTaskFeatures:I = 0xb0

.field static final greylist-max-o TRANSACTION_setLockTaskPackages:I = 0xad

.field static final greylist-max-o TRANSACTION_setLogoutEnabled:I = 0x11e

.field static final greylist-max-o TRANSACTION_setLongSupportMessage:I = 0xed

.field static final blacklist TRANSACTION_setManagedProfileMaximumTimeOff:I = 0x165

.field static final greylist-max-o TRANSACTION_setMasterVolumeMuted:I = 0xba

.field static final greylist-max-o TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x22

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForWipeMDM:I = 0x13c

.field static final greylist-max-o TRANSACTION_setMaximumTimeToLock:I = 0x25

.field static final blacklist TRANSACTION_setMaximumTimeToLockMDM:I = 0x13d

.field static final greylist-max-o TRANSACTION_setMeteredDataDisabledPackages:I = 0x127

.field static final blacklist TRANSACTION_setMinimumRequiredWifiSecurityLevel:I = 0x178

.field static final blacklist TRANSACTION_setNearbyAppStreamingPolicy:I = 0x3c

.field static final blacklist TRANSACTION_setNearbyNotificationStreamingPolicy:I = 0x3a

.field static final greylist-max-o TRANSACTION_setNetworkLoggingEnabled:I = 0x10e

.field static final blacklist TRANSACTION_setNextOperationSafety:I = 0x169

.field static final greylist-max-o TRANSACTION_setOrganizationColor:I = 0xf1

.field static final greylist-max-o TRANSACTION_setOrganizationColorForUser:I = 0xf2

.field static final blacklist TRANSACTION_setOrganizationIdForUser:I = 0x16c

.field static final greylist-max-o TRANSACTION_setOrganizationName:I = 0xf6

.field static final greylist-max-o TRANSACTION_setOverrideApnsEnabled:I = 0x12d

.field static final greylist-max-o TRANSACTION_setPackagesSuspended:I = 0x62

.field static final greylist-max-o TRANSACTION_setPasswordExpirationTimeout:I = 0x14

.field static final blacklist TRANSACTION_setPasswordExpirationTimeoutMDM:I = 0x13b

.field static final greylist-max-o TRANSACTION_setPasswordHistoryLength:I = 0x12

.field static final blacklist TRANSACTION_setPasswordHistoryLengthMDM:I = 0x13a

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final blacklist TRANSACTION_setPasswordMinimumLengthMDM:I = 0x133

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final blacklist TRANSACTION_setPasswordMinimumLettersMDM:I = 0x136

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final blacklist TRANSACTION_setPasswordMinimumLowerCaseMDM:I = 0x135

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final blacklist TRANSACTION_setPasswordMinimumNonLetterMDM:I = 0x139

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final blacklist TRANSACTION_setPasswordMinimumNumericMDM:I = 0x137

.field static final greylist-max-o TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final blacklist TRANSACTION_setPasswordMinimumSymbolsMDM:I = 0x138

.field static final greylist-max-o TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final blacklist TRANSACTION_setPasswordMinimumUpperCaseMDM:I = 0x134

.field static final greylist-max-o TRANSACTION_setPasswordQuality:I = 0x1

.field static final blacklist TRANSACTION_setPasswordQualityMDM:I = 0x132

.field static final greylist-max-o TRANSACTION_setPermissionGrantState:I = 0xe2

.field static final greylist-max-o TRANSACTION_setPermissionPolicy:I = 0xe0

.field static final greylist-max-o TRANSACTION_setPermittedAccessibilityServices:I = 0x89

.field static final greylist-max-o TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x91

.field static final greylist-max-o TRANSACTION_setPermittedInputMethods:I = 0x8d

.field static final blacklist TRANSACTION_setPersonalAppsSuspended:I = 0x163

.field static final blacklist TRANSACTION_setPreferentialNetworkServiceConfigs:I = 0xab

.field static final greylist-max-o TRANSACTION_setProfileEnabled:I = 0x5a

.field static final greylist-max-o TRANSACTION_setProfileName:I = 0x5b

.field static final greylist-max-o TRANSACTION_setProfileOwner:I = 0x55

.field static final blacklist TRANSACTION_setProfileOwnerOnOrganizationOwnedDevice:I = 0x14d

.field static final greylist-max-o TRANSACTION_setRecommendedGlobalProxy:I = 0x31

.field static final blacklist TRANSACTION_setRequiredPasswordComplexity:I = 0x1b

.field static final greylist-max-o TRANSACTION_setRequiredStrongAuthTimeout:I = 0x27

.field static final greylist-max-o TRANSACTION_setResetPasswordToken:I = 0x117

.field static final blacklist TRANSACTION_setResetPasswordTokenMDM:I = 0x146

.field static final greylist-max-o TRANSACTION_setRestrictionsProvider:I = 0x83

.field static final greylist-max-o TRANSACTION_setScreenCaptureDisabled:I = 0x38

.field static final blacklist TRANSACTION_setSecondaryLockscreenEnabled:I = 0xa9

.field static final greylist-max-o TRANSACTION_setSecureSetting:I = 0xb4

.field static final greylist-max-o TRANSACTION_setSecurityLoggingEnabled:I = 0x100

.field static final greylist-max-o TRANSACTION_setShortSupportMessage:I = 0xeb

.field static final greylist-max-o TRANSACTION_setStartUserSessionMessage:I = 0x123

.field static final greylist-max-o TRANSACTION_setStatusBarDisabled:I = 0xdc

.field static final greylist-max-o TRANSACTION_setStorageEncryption:I = 0x32

.field static final blacklist TRANSACTION_setStrings:I = 0x182

.field static final greylist-max-o TRANSACTION_setSystemSetting:I = 0xb3

.field static final greylist-max-o TRANSACTION_setSystemUpdatePolicy:I = 0xd8

.field static final greylist-max-o TRANSACTION_setTime:I = 0xb8

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0xb9

.field static final greylist-max-o TRANSACTION_setTrustAgentConfiguration:I = 0xc9

.field static final blacklist TRANSACTION_setTrustAgentConfigurationMDM:I = 0x147

.field static final greylist-max-o TRANSACTION_setUninstallBlocked:I = 0xbd

.field static final blacklist TRANSACTION_setUsbDataSignalingEnabled:I = 0x174

.field static final blacklist TRANSACTION_setUserControlDisabledPackages:I = 0x15e

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xd7

.field static final greylist-max-o TRANSACTION_setUserProvisioningState:I = 0xfb

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x85

.field static final blacklist TRANSACTION_setUserRestrictionForKnox:I = 0x1ad

.field static final blacklist TRANSACTION_setWifiSsidPolicy:I = 0x17a

.field static final blacklist TRANSACTION_shouldAllowBypassingDevicePolicyManagementRoleQualification:I = 0x185

.field static final greylist-max-o TRANSACTION_startManagedQuickContact:I = 0xc5

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0x9b

.field static final blacklist TRANSACTION_startViewCalendarEventInManagedProfile:I = 0x159

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x9c

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x9a

.field static final greylist-max-o TRANSACTION_transferOwnership:I = 0x121

.field static final greylist-max-o TRANSACTION_uninstallCaCerts:I = 0x66

.field static final greylist-max-o TRANSACTION_uninstallPackageWithActiveAdmins:I = 0x107

.field static final greylist-max-o TRANSACTION_updateOverrideApn:I = 0x12a

.field static final greylist-max-o TRANSACTION_wipeDataWithReason:I = 0x2a


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1583
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1584
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1592
    if-nez p0, :cond_0

    .line 1593
    const/4 v0, 0x0

    return-object v0

    .line 1595
    :cond_0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1596
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 1597
    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    return-object v1

    .line 1599
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1608
    packed-switch p0, :pswitch_data_0

    .line 3332
    const/4 v0, 0x0

    return-object v0

    .line 3328
    :pswitch_0
    const-string v0, "getSamsungSDcardEncryptionStatus"

    return-object v0

    .line 3324
    :pswitch_1
    const-string/jumbo v0, "setUserRestrictionForKnox"

    return-object v0

    .line 3320
    :pswitch_2
    const-string v0, "getBluetoothContactSharingEnabledForKnox"

    return-object v0

    .line 3316
    :pswitch_3
    const-string/jumbo v0, "setBluetoothContactSharingEnabledForKnox"

    return-object v0

    .line 3312
    :pswitch_4
    const-string/jumbo v0, "semSetChangeNotificationEnabled"

    return-object v0

    .line 3308
    :pswitch_5
    const-string/jumbo v0, "semGetRequireStorageCardEncryption"

    return-object v0

    .line 3304
    :pswitch_6
    const-string/jumbo v0, "semSetRequireStorageCardEncryption"

    return-object v0

    .line 3300
    :pswitch_7
    const-string/jumbo v0, "semGetAllowIrda"

    return-object v0

    .line 3296
    :pswitch_8
    const-string/jumbo v0, "semSetAllowIrda"

    return-object v0

    .line 3292
    :pswitch_9
    const-string/jumbo v0, "semGetAllowDesktopSync"

    return-object v0

    .line 3288
    :pswitch_a
    const-string/jumbo v0, "semSetAllowDesktopSync"

    return-object v0

    .line 3284
    :pswitch_b
    const-string/jumbo v0, "semGetAllowBluetoothMode"

    return-object v0

    .line 3280
    :pswitch_c
    const-string/jumbo v0, "semSetAllowBluetoothMode"

    return-object v0

    .line 3276
    :pswitch_d
    const-string/jumbo v0, "semGetAllowInternetSharing"

    return-object v0

    .line 3272
    :pswitch_e
    const-string/jumbo v0, "semSetAllowInternetSharing"

    return-object v0

    .line 3268
    :pswitch_f
    const-string/jumbo v0, "semGetAllowBrowser"

    return-object v0

    .line 3264
    :pswitch_10
    const-string/jumbo v0, "semSetAllowBrowser"

    return-object v0

    .line 3260
    :pswitch_11
    const-string/jumbo v0, "semGetAllowPopImapEmail"

    return-object v0

    .line 3256
    :pswitch_12
    const-string/jumbo v0, "semSetAllowPopImapEmail"

    return-object v0

    .line 3252
    :pswitch_13
    const-string/jumbo v0, "semGetAllowTextMessaging"

    return-object v0

    .line 3248
    :pswitch_14
    const-string/jumbo v0, "semSetAllowTextMessaging"

    return-object v0

    .line 3244
    :pswitch_15
    const-string/jumbo v0, "semGetAllowWifi"

    return-object v0

    .line 3240
    :pswitch_16
    const-string/jumbo v0, "semSetAllowWifi"

    return-object v0

    .line 3236
    :pswitch_17
    const-string/jumbo v0, "semGetAllowStorageCard"

    return-object v0

    .line 3232
    :pswitch_18
    const-string/jumbo v0, "semSetAllowStorageCard"

    return-object v0

    .line 3228
    :pswitch_19
    const-string/jumbo v0, "semSetCameraDisabled"

    return-object v0

    .line 3224
    :pswitch_1a
    const-string/jumbo v0, "semSetKeyguardDisabledFeatures"

    return-object v0

    .line 3220
    :pswitch_1b
    const-string/jumbo v0, "semIsSimplePasswordEnabled"

    return-object v0

    .line 3216
    :pswitch_1c
    const-string/jumbo v0, "semSetSimplePasswordEnabled"

    return-object v0

    .line 3212
    :pswitch_1d
    const-string/jumbo v0, "semIsActivePasswordSufficient"

    return-object v0

    .line 3208
    :pswitch_1e
    const-string/jumbo v0, "semSetPasswordExpirationTimeout"

    return-object v0

    .line 3204
    :pswitch_1f
    const-string/jumbo v0, "semSetPasswordHistoryLength"

    return-object v0

    .line 3200
    :pswitch_20
    const-string/jumbo v0, "semSetPasswordMinimumNonLetter"

    return-object v0

    .line 3196
    :pswitch_21
    const-string/jumbo v0, "semSetPasswordMinimumSymbols"

    return-object v0

    .line 3192
    :pswitch_22
    const-string/jumbo v0, "semSetPasswordMinimumNumeric"

    return-object v0

    .line 3188
    :pswitch_23
    const-string/jumbo v0, "semSetPasswordMinimumLetters"

    return-object v0

    .line 3184
    :pswitch_24
    const-string/jumbo v0, "semSetPasswordMinimumLowerCase"

    return-object v0

    .line 3180
    :pswitch_25
    const-string/jumbo v0, "semSetPasswordMinimumUpperCase"

    return-object v0

    .line 3176
    :pswitch_26
    const-string/jumbo v0, "semSetPasswordMinimumLength"

    return-object v0

    .line 3172
    :pswitch_27
    const-string/jumbo v0, "semSetPasswordQuality"

    return-object v0

    .line 3168
    :pswitch_28
    const-string v0, "getPolicyManagedProfiles"

    return-object v0

    .line 3164
    :pswitch_29
    const-string/jumbo v0, "shouldAllowBypassingDevicePolicyManagementRoleQualification"

    return-object v0

    .line 3160
    :pswitch_2a
    const-string v0, "getString"

    return-object v0

    .line 3156
    :pswitch_2b
    const-string/jumbo v0, "resetStrings"

    return-object v0

    .line 3152
    :pswitch_2c
    const-string/jumbo v0, "setStrings"

    return-object v0

    .line 3148
    :pswitch_2d
    const-string/jumbo v0, "setDpcDownloaded"

    return-object v0

    .line 3144
    :pswitch_2e
    const-string v0, "isDpcDownloaded"

    return-object v0

    .line 3140
    :pswitch_2f
    const-string v0, "getDrawable"

    return-object v0

    .line 3136
    :pswitch_30
    const-string/jumbo v0, "resetDrawables"

    return-object v0

    .line 3132
    :pswitch_31
    const-string/jumbo v0, "setDrawables"

    return-object v0

    .line 3128
    :pswitch_32
    const-string v0, "listForegroundAffiliatedUsers"

    return-object v0

    .line 3124
    :pswitch_33
    const-string v0, "getWifiSsidPolicy"

    return-object v0

    .line 3120
    :pswitch_34
    const-string/jumbo v0, "setWifiSsidPolicy"

    return-object v0

    .line 3116
    :pswitch_35
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3112
    :pswitch_36
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3108
    :pswitch_37
    const-string v0, "canUsbDataSignalingBeDisabled"

    return-object v0

    .line 3104
    :pswitch_38
    const-string v0, "isUsbDataSignalingEnabledForUser"

    return-object v0

    .line 3100
    :pswitch_39
    const-string v0, "isUsbDataSignalingEnabled"

    return-object v0

    .line 3096
    :pswitch_3a
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    return-object v0

    .line 3092
    :pswitch_3b
    const-string v0, "canAdminGrantSensorsPermissionsForUser"

    return-object v0

    .line 3088
    :pswitch_3c
    const-string/jumbo v0, "resetDefaultCrossProfileIntentFilters"

    return-object v0

    .line 3084
    :pswitch_3d
    const-string v0, "getDeviceOwnerType"

    return-object v0

    .line 3080
    :pswitch_3e
    const-string/jumbo v0, "setDeviceOwnerType"

    return-object v0

    .line 3076
    :pswitch_3f
    const-string v0, "finalizeWorkProfileProvisioning"

    return-object v0

    .line 3072
    :pswitch_40
    const-string/jumbo v0, "provisionFullyManagedDevice"

    return-object v0

    .line 3068
    :pswitch_41
    const-string v0, "createAndProvisionManagedProfile"

    return-object v0

    .line 3064
    :pswitch_42
    const-string/jumbo v0, "setOrganizationIdForUser"

    return-object v0

    .line 3060
    :pswitch_43
    const-string v0, "getEnrollmentSpecificId"

    return-object v0

    .line 3056
    :pswitch_44
    const-string v0, "isSafeOperation"

    return-object v0

    .line 3052
    :pswitch_45
    const-string/jumbo v0, "setNextOperationSafety"

    return-object v0

    .line 3048
    :pswitch_46
    const-string v0, "canProfileOwnerResetPasswordWhenLocked"

    return-object v0

    .line 3044
    :pswitch_47
    const-string v0, "isComplianceAcknowledgementRequired"

    return-object v0

    .line 3040
    :pswitch_48
    const-string v0, "acknowledgeDeviceCompliant"

    return-object v0

    .line 3036
    :pswitch_49
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    return-object v0

    .line 3032
    :pswitch_4a
    const-string v0, "getManagedProfileMaximumTimeOff"

    return-object v0

    .line 3028
    :pswitch_4b
    const-string/jumbo v0, "setPersonalAppsSuspended"

    return-object v0

    .line 3024
    :pswitch_4c
    const-string v0, "getPersonalAppsSuspendedReasons"

    return-object v0

    .line 3020
    :pswitch_4d
    const-string v0, "isCommonCriteriaModeEnabled"

    return-object v0

    .line 3016
    :pswitch_4e
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    return-object v0

    .line 3012
    :pswitch_4f
    const-string v0, "getUserControlDisabledPackages"

    return-object v0

    .line 3008
    :pswitch_50
    const-string/jumbo v0, "setUserControlDisabledPackages"

    return-object v0

    .line 3004
    :pswitch_51
    const-string v0, "isKeyPairGrantedToWifiAuth"

    return-object v0

    .line 3000
    :pswitch_52
    const-string/jumbo v0, "setKeyGrantToWifiAuth"

    return-object v0

    .line 2996
    :pswitch_53
    const-string v0, "getKeyPairGrants"

    return-object v0

    .line 2992
    :pswitch_54
    const-string/jumbo v0, "setKeyGrantForApp"

    return-object v0

    .line 2988
    :pswitch_55
    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    return-object v0

    .line 2984
    :pswitch_56
    const-string v0, "isUnattendedManagedKiosk"

    return-object v0

    .line 2980
    :pswitch_57
    const-string v0, "isManagedKiosk"

    return-object v0

    .line 2976
    :pswitch_58
    const-string v0, "getDefaultCrossProfilePackages"

    return-object v0

    .line 2972
    :pswitch_59
    const-string v0, "getAllCrossProfilePackages"

    return-object v0

    .line 2968
    :pswitch_5a
    const-string v0, "getCrossProfilePackages"

    return-object v0

    .line 2964
    :pswitch_5b
    const-string/jumbo v0, "setCrossProfilePackages"

    return-object v0

    .line 2960
    :pswitch_5c
    const-string v0, "getCrossProfileCalendarPackagesForUser"

    return-object v0

    .line 2956
    :pswitch_5d
    const-string v0, "isPackageAllowedToAccessCalendarForUser"

    return-object v0

    .line 2952
    :pswitch_5e
    const-string v0, "getCrossProfileCalendarPackages"

    return-object v0

    .line 2948
    :pswitch_5f
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    return-object v0

    .line 2944
    :pswitch_60
    const-string v0, "installUpdateFromFile"

    return-object v0

    .line 2940
    :pswitch_61
    const-string/jumbo v0, "setProfileOwnerOnOrganizationOwnedDevice"

    return-object v0

    .line 2936
    :pswitch_62
    const-string v0, "getGlobalPrivateDnsHost"

    return-object v0

    .line 2932
    :pswitch_63
    const-string v0, "getGlobalPrivateDnsMode"

    return-object v0

    .line 2928
    :pswitch_64
    const-string/jumbo v0, "setGlobalPrivateDns"

    return-object v0

    .line 2924
    :pswitch_65
    const-string v0, "hasDelegatedPermission"

    return-object v0

    .line 2920
    :pswitch_66
    const-string v0, "isProfileOwnerOfOrganizationOwnedDeviceMDM"

    return-object v0

    .line 2916
    :pswitch_67
    const-string/jumbo v0, "setTrustAgentConfigurationMDM"

    return-object v0

    .line 2912
    :pswitch_68
    const-string/jumbo v0, "setResetPasswordTokenMDM"

    return-object v0

    .line 2908
    :pswitch_69
    const-string v0, "clearResetPasswordTokenMDM"

    return-object v0

    .line 2904
    :pswitch_6a
    const-string v0, "isResetPasswordTokenActiveMDM"

    return-object v0

    .line 2900
    :pswitch_6b
    const-string/jumbo v0, "resetPasswordWithTokenMDM"

    return-object v0

    .line 2896
    :pswitch_6c
    const-string v0, "clearCrossProfileIntentFiltersMDM"

    return-object v0

    .line 2892
    :pswitch_6d
    const-string v0, "addCrossProfileIntentFilterMDM"

    return-object v0

    .line 2888
    :pswitch_6e
    const-string v0, "getApplicationRestrictionsMDM"

    return-object v0

    .line 2884
    :pswitch_6f
    const-string/jumbo v0, "setApplicationRestrictionsMDM"

    return-object v0

    .line 2880
    :pswitch_70
    const-string/jumbo v0, "setKeyguardDisabledFeaturesMDM"

    return-object v0

    .line 2876
    :pswitch_71
    const-string/jumbo v0, "setMaximumTimeToLockMDM"

    return-object v0

    .line 2872
    :pswitch_72
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipeMDM"

    return-object v0

    .line 2868
    :pswitch_73
    const-string/jumbo v0, "setPasswordExpirationTimeoutMDM"

    return-object v0

    .line 2864
    :pswitch_74
    const-string/jumbo v0, "setPasswordHistoryLengthMDM"

    return-object v0

    .line 2860
    :pswitch_75
    const-string/jumbo v0, "setPasswordMinimumNonLetterMDM"

    return-object v0

    .line 2856
    :pswitch_76
    const-string/jumbo v0, "setPasswordMinimumSymbolsMDM"

    return-object v0

    .line 2852
    :pswitch_77
    const-string/jumbo v0, "setPasswordMinimumNumericMDM"

    return-object v0

    .line 2848
    :pswitch_78
    const-string/jumbo v0, "setPasswordMinimumLettersMDM"

    return-object v0

    .line 2844
    :pswitch_79
    const-string/jumbo v0, "setPasswordMinimumLowerCaseMDM"

    return-object v0

    .line 2840
    :pswitch_7a
    const-string/jumbo v0, "setPasswordMinimumUpperCaseMDM"

    return-object v0

    .line 2836
    :pswitch_7b
    const-string/jumbo v0, "setPasswordMinimumLengthMDM"

    return-object v0

    .line 2832
    :pswitch_7c
    const-string/jumbo v0, "setPasswordQualityMDM"

    return-object v0

    .line 2828
    :pswitch_7d
    const-string/jumbo v0, "rebootMDM"

    return-object v0

    .line 2824
    :pswitch_7e
    const-string v0, "getActualDeviceOwnerMDM"

    return-object v0

    .line 2820
    :pswitch_7f
    const-string v0, "isMeteredDataDisabledPackageForUser"

    return-object v0

    .line 2816
    :pswitch_80
    const-string v0, "isOverrideApnEnabled"

    return-object v0

    .line 2812
    :pswitch_81
    const-string/jumbo v0, "setOverrideApnsEnabled"

    return-object v0

    .line 2808
    :pswitch_82
    const-string v0, "getOverrideApns"

    return-object v0

    .line 2804
    :pswitch_83
    const-string/jumbo v0, "removeOverrideApn"

    return-object v0

    .line 2800
    :pswitch_84
    const-string/jumbo v0, "updateOverrideApn"

    return-object v0

    .line 2796
    :pswitch_85
    const-string v0, "addOverrideApn"

    return-object v0

    .line 2792
    :pswitch_86
    const-string v0, "getMeteredDataDisabledPackages"

    return-object v0

    .line 2788
    :pswitch_87
    const-string/jumbo v0, "setMeteredDataDisabledPackages"

    return-object v0

    .line 2784
    :pswitch_88
    const-string v0, "getEndUserSessionMessage"

    return-object v0

    .line 2780
    :pswitch_89
    const-string v0, "getStartUserSessionMessage"

    return-object v0

    .line 2776
    :pswitch_8a
    const-string/jumbo v0, "setEndUserSessionMessage"

    return-object v0

    .line 2772
    :pswitch_8b
    const-string/jumbo v0, "setStartUserSessionMessage"

    return-object v0

    .line 2768
    :pswitch_8c
    const-string v0, "getTransferOwnershipBundle"

    return-object v0

    .line 2764
    :pswitch_8d
    const-string/jumbo v0, "transferOwnership"

    return-object v0

    .line 2760
    :pswitch_8e
    const-string v0, "getDisallowedSystemApps"

    return-object v0

    .line 2756
    :pswitch_8f
    const-string v0, "isLogoutEnabled"

    return-object v0

    .line 2752
    :pswitch_90
    const-string/jumbo v0, "setLogoutEnabled"

    return-object v0

    .line 2748
    :pswitch_91
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 2744
    :pswitch_92
    const-string v0, "getOwnerInstalledCaCerts"

    return-object v0

    .line 2740
    :pswitch_93
    const-string v0, "isCurrentInputMethodSetByOwner"

    return-object v0

    .line 2736
    :pswitch_94
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 2732
    :pswitch_95
    const-string v0, "isResetPasswordTokenActive"

    return-object v0

    .line 2728
    :pswitch_96
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 2724
    :pswitch_97
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 2720
    :pswitch_98
    const-string v0, "getLastNetworkLogRetrievalTime"

    return-object v0

    .line 2716
    :pswitch_99
    const-string v0, "getLastBugReportRequestTime"

    return-object v0

    .line 2712
    :pswitch_9a
    const-string v0, "getLastSecurityLogRetrievalTime"

    return-object v0

    .line 2708
    :pswitch_9b
    const-string v0, "isEphemeralUser"

    return-object v0

    .line 2704
    :pswitch_9c
    const-string v0, "getBindDeviceAdminTargetUsers"

    return-object v0

    .line 2700
    :pswitch_9d
    const-string v0, "bindDeviceAdminServiceAsUser"

    return-object v0

    .line 2696
    :pswitch_9e
    const-string/jumbo v0, "retrieveNetworkLogs"

    return-object v0

    .line 2692
    :pswitch_9f
    const-string v0, "isNetworkLoggingEnabled"

    return-object v0

    .line 2688
    :pswitch_a0
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    return-object v0

    .line 2684
    :pswitch_a1
    const-string v0, "isBackupServiceEnabled"

    return-object v0

    .line 2680
    :pswitch_a2
    const-string/jumbo v0, "setBackupServiceEnabled"

    return-object v0

    .line 2676
    :pswitch_a3
    const-string v0, "forceUpdateUserSetupComplete"

    return-object v0

    .line 2672
    :pswitch_a4
    const-string/jumbo v0, "setDeviceProvisioningConfigApplied"

    return-object v0

    .line 2668
    :pswitch_a5
    const-string v0, "isDeviceProvisioningConfigApplied"

    return-object v0

    .line 2664
    :pswitch_a6
    const-string v0, "isDeviceProvisioned"

    return-object v0

    .line 2660
    :pswitch_a7
    const-string/jumbo v0, "uninstallPackageWithActiveAdmins"

    return-object v0

    .line 2656
    :pswitch_a8
    const-string v0, "isUninstallInQueue"

    return-object v0

    .line 2652
    :pswitch_a9
    const-string v0, "forceSecurityLogs"

    return-object v0

    .line 2648
    :pswitch_aa
    const-string v0, "forceNetworkLogs"

    return-object v0

    .line 2644
    :pswitch_ab
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    return-object v0

    .line 2640
    :pswitch_ac
    const-string/jumbo v0, "retrieveSecurityLogs"

    return-object v0

    .line 2636
    :pswitch_ad
    const-string v0, "isSecurityLoggingEnabled"

    return-object v0

    .line 2632
    :pswitch_ae
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    return-object v0

    .line 2628
    :pswitch_af
    const-string v0, "isAffiliatedUser"

    return-object v0

    .line 2624
    :pswitch_b0
    const-string v0, "isCallingUserAffiliated"

    return-object v0

    .line 2620
    :pswitch_b1
    const-string v0, "getAffiliationIds"

    return-object v0

    .line 2616
    :pswitch_b2
    const-string/jumbo v0, "setAffiliationIds"

    return-object v0

    .line 2612
    :pswitch_b3
    const-string/jumbo v0, "setUserProvisioningState"

    return-object v0

    .line 2608
    :pswitch_b4
    const-string v0, "getUserProvisioningState"

    return-object v0

    .line 2604
    :pswitch_b5
    const-string v0, "getOrganizationNameForUser"

    return-object v0

    .line 2600
    :pswitch_b6
    const-string v0, "getDeviceOwnerOrganizationName"

    return-object v0

    .line 2596
    :pswitch_b7
    const-string v0, "getOrganizationName"

    return-object v0

    .line 2592
    :pswitch_b8
    const-string/jumbo v0, "setOrganizationName"

    return-object v0

    .line 2588
    :pswitch_b9
    const-string v0, "getOrganizationColorForUser"

    return-object v0

    .line 2584
    :pswitch_ba
    const-string v0, "getOrganizationColor"

    return-object v0

    .line 2580
    :pswitch_bb
    const-string v0, "clearOrganizationIdForUser"

    return-object v0

    .line 2576
    :pswitch_bc
    const-string/jumbo v0, "setOrganizationColorForUser"

    return-object v0

    .line 2572
    :pswitch_bd
    const-string/jumbo v0, "setOrganizationColor"

    return-object v0

    .line 2568
    :pswitch_be
    const-string v0, "getLongSupportMessageForUser"

    return-object v0

    .line 2564
    :pswitch_bf
    const-string v0, "getShortSupportMessageForUser"

    return-object v0

    .line 2560
    :pswitch_c0
    const-string v0, "getLongSupportMessage"

    return-object v0

    .line 2556
    :pswitch_c1
    const-string/jumbo v0, "setLongSupportMessage"

    return-object v0

    .line 2552
    :pswitch_c2
    const-string v0, "getShortSupportMessage"

    return-object v0

    .line 2548
    :pswitch_c3
    const-string/jumbo v0, "setShortSupportMessage"

    return-object v0

    .line 2544
    :pswitch_c4
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 2540
    :pswitch_c5
    const-string v0, "getWifiMacAddress"

    return-object v0

    .line 2536
    :pswitch_c6
    const-string v0, "isManagedProfile"

    return-object v0

    .line 2532
    :pswitch_c7
    const-string v0, "getKeepUninstalledPackages"

    return-object v0

    .line 2528
    :pswitch_c8
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 2524
    :pswitch_c9
    const-string v0, "checkProvisioningPrecondition"

    return-object v0

    .line 2520
    :pswitch_ca
    const-string v0, "isProvisioningAllowed"

    return-object v0

    .line 2516
    :pswitch_cb
    const-string v0, "getPermissionGrantState"

    return-object v0

    .line 2512
    :pswitch_cc
    const-string/jumbo v0, "setPermissionGrantState"

    return-object v0

    .line 2508
    :pswitch_cd
    const-string v0, "getPermissionPolicy"

    return-object v0

    .line 2504
    :pswitch_ce
    const-string/jumbo v0, "setPermissionPolicy"

    return-object v0

    .line 2500
    :pswitch_cf
    const-string v0, "getPendingSystemUpdate"

    return-object v0

    .line 2496
    :pswitch_d0
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    return-object v0

    .line 2492
    :pswitch_d1
    const-string v0, "getDoNotAskCredentialsOnBoot"

    return-object v0

    .line 2488
    :pswitch_d2
    const-string/jumbo v0, "setStatusBarDisabled"

    return-object v0

    .line 2484
    :pswitch_d3
    const-string/jumbo v0, "setKeyguardDisabled"

    return-object v0

    .line 2480
    :pswitch_d4
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    return-object v0

    .line 2476
    :pswitch_d5
    const-string v0, "getSystemUpdatePolicy"

    return-object v0

    .line 2472
    :pswitch_d6
    const-string/jumbo v0, "setSystemUpdatePolicy"

    return-object v0

    .line 2468
    :pswitch_d7
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 2464
    :pswitch_d8
    const-string v0, "isRemovingAdmin"

    return-object v0

    .line 2460
    :pswitch_d9
    const-string v0, "getForceEphemeralUsers"

    return-object v0

    .line 2456
    :pswitch_da
    const-string/jumbo v0, "setForceEphemeralUsers"

    return-object v0

    .line 2452
    :pswitch_db
    const-string v0, "getAutoTimeZoneEnabled"

    return-object v0

    .line 2448
    :pswitch_dc
    const-string/jumbo v0, "setAutoTimeZoneEnabled"

    return-object v0

    .line 2444
    :pswitch_dd
    const-string v0, "getAutoTimeEnabled"

    return-object v0

    .line 2440
    :pswitch_de
    const-string/jumbo v0, "setAutoTimeEnabled"

    return-object v0

    .line 2436
    :pswitch_df
    const-string v0, "getAutoTimeRequired"

    return-object v0

    .line 2432
    :pswitch_e0
    const-string/jumbo v0, "setAutoTimeRequired"

    return-object v0

    .line 2428
    :pswitch_e1
    const-string v0, "getCrossProfileWidgetProviders"

    return-object v0

    .line 2424
    :pswitch_e2
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    return-object v0

    .line 2420
    :pswitch_e3
    const-string v0, "addCrossProfileWidgetProvider"

    return-object v0

    .line 2416
    :pswitch_e4
    const-string v0, "getTrustAgentConfiguration"

    return-object v0

    .line 2412
    :pswitch_e5
    const-string/jumbo v0, "setTrustAgentConfiguration"

    return-object v0

    .line 2408
    :pswitch_e6
    const-string v0, "getBluetoothContactSharingDisabledForUser"

    return-object v0

    .line 2404
    :pswitch_e7
    const-string v0, "getBluetoothContactSharingDisabled"

    return-object v0

    .line 2400
    :pswitch_e8
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    return-object v0

    .line 2396
    :pswitch_e9
    const-string/jumbo v0, "startManagedQuickContact"

    return-object v0

    .line 2392
    :pswitch_ea
    const-string v0, "getCrossProfileContactsSearchDisabledForUser"

    return-object v0

    .line 2388
    :pswitch_eb
    const-string v0, "getCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2384
    :pswitch_ec
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2380
    :pswitch_ed
    const-string v0, "getCrossProfileCallerIdDisabledForUser"

    return-object v0

    .line 2376
    :pswitch_ee
    const-string v0, "getCrossProfileCallerIdDisabled"

    return-object v0

    .line 2372
    :pswitch_ef
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    return-object v0

    .line 2368
    :pswitch_f0
    const-string v0, "isUninstallBlocked"

    return-object v0

    .line 2364
    :pswitch_f1
    const-string/jumbo v0, "setUninstallBlocked"

    return-object v0

    .line 2360
    :pswitch_f2
    const-string/jumbo v0, "notifyLockTaskModeChanged"

    return-object v0

    .line 2356
    :pswitch_f3
    const-string v0, "isMasterVolumeMuted"

    return-object v0

    .line 2352
    :pswitch_f4
    const-string/jumbo v0, "setMasterVolumeMuted"

    return-object v0

    .line 2348
    :pswitch_f5
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 2344
    :pswitch_f6
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 2340
    :pswitch_f7
    const-string/jumbo v0, "setLocationEnabled"

    return-object v0

    .line 2336
    :pswitch_f8
    const-string v0, "hasLockdownAdminConfiguredNetworks"

    return-object v0

    .line 2332
    :pswitch_f9
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    return-object v0

    .line 2328
    :pswitch_fa
    const-string/jumbo v0, "setSecureSetting"

    return-object v0

    .line 2324
    :pswitch_fb
    const-string/jumbo v0, "setSystemSetting"

    return-object v0

    .line 2320
    :pswitch_fc
    const-string/jumbo v0, "setGlobalSetting"

    return-object v0

    .line 2316
    :pswitch_fd
    const-string v0, "getLockTaskFeatures"

    return-object v0

    .line 2312
    :pswitch_fe
    const-string/jumbo v0, "setLockTaskFeatures"

    return-object v0

    .line 2308
    :pswitch_ff
    const-string v0, "isLockTaskPermitted"

    return-object v0

    .line 2304
    :pswitch_100
    const-string v0, "getLockTaskPackages"

    return-object v0

    .line 2300
    :pswitch_101
    const-string/jumbo v0, "setLockTaskPackages"

    return-object v0

    .line 2296
    :pswitch_102
    const-string v0, "getPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2292
    :pswitch_103
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2288
    :pswitch_104
    const-string v0, "isSecondaryLockscreenEnabled"

    return-object v0

    .line 2284
    :pswitch_105
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    return-object v0

    .line 2280
    :pswitch_106
    const-string v0, "getAccountTypesWithManagementDisabledAsUser"

    return-object v0

    .line 2276
    :pswitch_107
    const-string v0, "getAccountTypesWithManagementDisabled"

    return-object v0

    .line 2272
    :pswitch_108
    const-string/jumbo v0, "setAccountManagementDisabled"

    return-object v0

    .line 2268
    :pswitch_109
    const-string v0, "installExistingPackage"

    return-object v0

    .line 2264
    :pswitch_10a
    const-string v0, "enableSystemAppWithIntent"

    return-object v0

    .line 2260
    :pswitch_10b
    const-string v0, "enableSystemApp"

    return-object v0

    .line 2256
    :pswitch_10c
    const-string v0, "isNewUserDisclaimerAcknowledged"

    return-object v0

    .line 2252
    :pswitch_10d
    const-string v0, "acknowledgeNewUserDisclaimer"

    return-object v0

    .line 2248
    :pswitch_10e
    const-string v0, "getSecondaryUsers"

    return-object v0

    .line 2244
    :pswitch_10f
    const-string v0, "getLogoutUserId"

    return-object v0

    .line 2240
    :pswitch_110
    const-string v0, "logoutUserInternal"

    return-object v0

    .line 2236
    :pswitch_111
    const-string v0, "logoutUser"

    return-object v0

    .line 2232
    :pswitch_112
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 2228
    :pswitch_113
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2224
    :pswitch_114
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 2220
    :pswitch_115
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 2216
    :pswitch_116
    const-string v0, "createAndManageUser"

    return-object v0

    .line 2212
    :pswitch_117
    const-string v0, "isApplicationHidden"

    return-object v0

    .line 2208
    :pswitch_118
    const-string/jumbo v0, "setApplicationHidden"

    return-object v0

    .line 2204
    :pswitch_119
    const-string v0, "getEnforcingAdminAndUserDetails"

    return-object v0

    .line 2200
    :pswitch_11a
    const-string v0, "createAdminSupportIntent"

    return-object v0

    .line 2196
    :pswitch_11b
    const-string v0, "isNotificationListenerServicePermitted"

    return-object v0

    .line 2192
    :pswitch_11c
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2188
    :pswitch_11d
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2184
    :pswitch_11e
    const-string v0, "isInputMethodPermittedByAdmin"

    return-object v0

    .line 2180
    :pswitch_11f
    const-string v0, "getPermittedInputMethodsAsUser"

    return-object v0

    .line 2176
    :pswitch_120
    const-string v0, "getPermittedInputMethods"

    return-object v0

    .line 2172
    :pswitch_121
    const-string/jumbo v0, "setPermittedInputMethods"

    return-object v0

    .line 2168
    :pswitch_122
    const-string v0, "isAccessibilityServicePermittedByAdmin"

    return-object v0

    .line 2164
    :pswitch_123
    const-string v0, "getPermittedAccessibilityServicesForUser"

    return-object v0

    .line 2160
    :pswitch_124
    const-string v0, "getPermittedAccessibilityServices"

    return-object v0

    .line 2156
    :pswitch_125
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    return-object v0

    .line 2152
    :pswitch_126
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 2148
    :pswitch_127
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 2144
    :pswitch_128
    const-string v0, "getUserRestrictions"

    return-object v0

    .line 2140
    :pswitch_129
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 2136
    :pswitch_12a
    const-string v0, "getRestrictionsProvider"

    return-object v0

    .line 2132
    :pswitch_12b
    const-string/jumbo v0, "setRestrictionsProvider"

    return-object v0

    .line 2128
    :pswitch_12c
    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2124
    :pswitch_12d
    const-string v0, "getApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2120
    :pswitch_12e
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2116
    :pswitch_12f
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 2112
    :pswitch_130
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 2108
    :pswitch_131
    const-string/jumbo v0, "setDefaultSmsApplication"

    return-object v0

    .line 2104
    :pswitch_132
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 2100
    :pswitch_133
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 2096
    :pswitch_134
    const-string v0, "getAlwaysOnVpnLockdownAllowlist"

    return-object v0

    .line 2092
    :pswitch_135
    const-string v0, "isAlwaysOnVpnLockdownEnabledForUser"

    return-object v0

    .line 2088
    :pswitch_136
    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    return-object v0

    .line 2084
    :pswitch_137
    const-string v0, "getAlwaysOnVpnPackageForUser"

    return-object v0

    .line 2080
    :pswitch_138
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 2076
    :pswitch_139
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 2072
    :pswitch_13a
    const-string v0, "getCertInstallerPackage"

    return-object v0

    .line 2068
    :pswitch_13b
    const-string/jumbo v0, "setCertInstallerPackage"

    return-object v0

    .line 2064
    :pswitch_13c
    const-string v0, "getDelegatePackages"

    return-object v0

    .line 2060
    :pswitch_13d
    const-string v0, "getDelegatedScopes"

    return-object v0

    .line 2056
    :pswitch_13e
    const-string/jumbo v0, "setDelegatedScopes"

    return-object v0

    .line 2052
    :pswitch_13f
    const-string v0, "choosePrivateKeyAlias"

    return-object v0

    .line 2048
    :pswitch_140
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 2044
    :pswitch_141
    const-string v0, "generateKeyPair"

    return-object v0

    .line 2040
    :pswitch_142
    const-string v0, "hasKeyPair"

    return-object v0

    .line 2036
    :pswitch_143
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 2032
    :pswitch_144
    const-string v0, "installKeyPair"

    return-object v0

    .line 2028
    :pswitch_145
    const-string v0, "isCaCertApproved"

    return-object v0

    .line 2024
    :pswitch_146
    const-string v0, "approveCaCert"

    return-object v0

    .line 2020
    :pswitch_147
    const-string v0, "enforceCanManageCaCerts"

    return-object v0

    .line 2016
    :pswitch_148
    const-string/jumbo v0, "uninstallCaCerts"

    return-object v0

    .line 2012
    :pswitch_149
    const-string v0, "installCaCert"

    return-object v0

    .line 2008
    :pswitch_14a
    const-string v0, "listPolicyExemptApps"

    return-object v0

    .line 2004
    :pswitch_14b
    const-string v0, "isPackageSuspended"

    return-object v0

    .line 2000
    :pswitch_14c
    const-string/jumbo v0, "setPackagesSuspended"

    return-object v0

    .line 1996
    :pswitch_14d
    const-string v0, "getDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1992
    :pswitch_14e
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1988
    :pswitch_14f
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    .line 1984
    :pswitch_150
    const-string v0, "isOrganizationOwnedDeviceWithManagedProfile"

    return-object v0

    .line 1980
    :pswitch_151
    const-string v0, "hasUserSetupCompleted"

    return-object v0

    .line 1976
    :pswitch_152
    const-string v0, "clearProfileOwner"

    return-object v0

    .line 1972
    :pswitch_153
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 1968
    :pswitch_154
    const-string/jumbo v0, "setProfileEnabled"

    return-object v0

    .line 1964
    :pswitch_155
    const-string v0, "getProfileOwnerName"

    return-object v0

    .line 1960
    :pswitch_156
    const-string v0, "isSupervisionComponent"

    return-object v0

    .line 1956
    :pswitch_157
    const-string v0, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    return-object v0

    .line 1952
    :pswitch_158
    const-string v0, "getProfileOwnerAsUser"

    return-object v0

    .line 1948
    :pswitch_159
    const-string/jumbo v0, "setProfileOwner"

    return-object v0

    .line 1944
    :pswitch_15a
    const-string v0, "getDeviceOwnerUserId"

    return-object v0

    .line 1940
    :pswitch_15b
    const-string v0, "clearDeviceOwner"

    return-object v0

    .line 1936
    :pswitch_15c
    const-string v0, "getDeviceOwnerName"

    return-object v0

    .line 1932
    :pswitch_15d
    const-string v0, "hasDeviceOwner"

    return-object v0

    .line 1928
    :pswitch_15e
    const-string v0, "getDeviceOwnerComponent"

    return-object v0

    .line 1924
    :pswitch_15f
    const-string/jumbo v0, "setDeviceOwner"

    return-object v0

    .line 1920
    :pswitch_160
    const-string/jumbo v0, "reportKeyguardSecured"

    return-object v0

    .line 1916
    :pswitch_161
    const-string/jumbo v0, "reportKeyguardDismissed"

    return-object v0

    .line 1912
    :pswitch_162
    const-string/jumbo v0, "reportSuccessfulBiometricAttempt"

    return-object v0

    .line 1908
    :pswitch_163
    const-string/jumbo v0, "reportFailedBiometricAttempt"

    return-object v0

    .line 1904
    :pswitch_164
    const-string/jumbo v0, "reportSuccessfulPasswordAttempt"

    return-object v0

    .line 1900
    :pswitch_165
    const-string/jumbo v0, "reportFailedPasswordAttempt"

    return-object v0

    .line 1896
    :pswitch_166
    const-string/jumbo v0, "reportPasswordChanged"

    return-object v0

    .line 1892
    :pswitch_167
    const-string v0, "hasGrantedPolicy"

    return-object v0

    .line 1888
    :pswitch_168
    const-string v0, "forceRemoveActiveAdmin"

    return-object v0

    .line 1884
    :pswitch_169
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 1880
    :pswitch_16a
    const-string v0, "getRemoveWarning"

    return-object v0

    .line 1876
    :pswitch_16b
    const-string/jumbo v0, "packageHasActiveAdmins"

    return-object v0

    .line 1872
    :pswitch_16c
    const-string v0, "getActiveAdmins"

    return-object v0

    .line 1868
    :pswitch_16d
    const-string v0, "isAdminActive"

    return-object v0

    .line 1864
    :pswitch_16e
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 1860
    :pswitch_16f
    const-string v0, "getKeyguardDisabledFeatures"

    return-object v0

    .line 1856
    :pswitch_170
    const-string/jumbo v0, "setKeyguardDisabledFeatures"

    return-object v0

    .line 1852
    :pswitch_171
    const-string v0, "getNearbyAppStreamingPolicy"

    return-object v0

    .line 1848
    :pswitch_172
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    return-object v0

    .line 1844
    :pswitch_173
    const-string v0, "getNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1840
    :pswitch_174
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1836
    :pswitch_175
    const-string v0, "getScreenCaptureDisabled"

    return-object v0

    .line 1832
    :pswitch_176
    const-string/jumbo v0, "setScreenCaptureDisabled"

    return-object v0

    .line 1828
    :pswitch_177
    const-string v0, "getCameraDisabled"

    return-object v0

    .line 1824
    :pswitch_178
    const-string/jumbo v0, "setCameraDisabled"

    return-object v0

    .line 1820
    :pswitch_179
    const-string/jumbo v0, "requestBugreport"

    return-object v0

    .line 1816
    :pswitch_17a
    const-string v0, "getStorageEncryptionStatus"

    return-object v0

    .line 1812
    :pswitch_17b
    const-string v0, "getStorageEncryption"

    return-object v0

    .line 1808
    :pswitch_17c
    const-string/jumbo v0, "setStorageEncryption"

    return-object v0

    .line 1804
    :pswitch_17d
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    return-object v0

    .line 1800
    :pswitch_17e
    const-string v0, "getGlobalProxyAdmin"

    return-object v0

    .line 1796
    :pswitch_17f
    const-string/jumbo v0, "setGlobalProxy"

    return-object v0

    .line 1792
    :pswitch_180
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    return-object v0

    .line 1788
    :pswitch_181
    const-string v0, "isFactoryResetProtectionPolicySupported"

    return-object v0

    .line 1784
    :pswitch_182
    const-string v0, "getFactoryResetProtectionPolicy"

    return-object v0

    .line 1780
    :pswitch_183
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    return-object v0

    .line 1776
    :pswitch_184
    const-string/jumbo v0, "wipeDataWithReason"

    return-object v0

    .line 1772
    :pswitch_185
    const-string v0, "lockNow"

    return-object v0

    .line 1768
    :pswitch_186
    const-string v0, "getRequiredStrongAuthTimeout"

    return-object v0

    .line 1764
    :pswitch_187
    const-string/jumbo v0, "setRequiredStrongAuthTimeout"

    return-object v0

    .line 1760
    :pswitch_188
    const-string v0, "getMaximumTimeToLock"

    return-object v0

    .line 1756
    :pswitch_189
    const-string/jumbo v0, "setMaximumTimeToLock"

    return-object v0

    .line 1752
    :pswitch_18a
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 1748
    :pswitch_18b
    const-string v0, "getMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1744
    :pswitch_18c
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1740
    :pswitch_18d
    const-string v0, "getProfileWithMinimumFailedPasswordsForWipe"

    return-object v0

    .line 1736
    :pswitch_18e
    const-string v0, "getCurrentFailedBiometricAttempts"

    return-object v0

    .line 1732
    :pswitch_18f
    const-string v0, "getCurrentFailedPasswordAttempts"

    return-object v0

    .line 1728
    :pswitch_190
    const-string v0, "isUsingUnifiedPassword"

    return-object v0

    .line 1724
    :pswitch_191
    const-string v0, "getAggregatedPasswordComplexityForUser"

    return-object v0

    .line 1720
    :pswitch_192
    const-string v0, "getRequiredPasswordComplexity"

    return-object v0

    .line 1716
    :pswitch_193
    const-string/jumbo v0, "setRequiredPasswordComplexity"

    return-object v0

    .line 1712
    :pswitch_194
    const-string v0, "getPasswordComplexity"

    return-object v0

    .line 1708
    :pswitch_195
    const-string v0, "isPasswordSufficientAfterProfileUnification"

    return-object v0

    .line 1704
    :pswitch_196
    const-string v0, "isActivePasswordSufficientForDeviceRequirement"

    return-object v0

    .line 1700
    :pswitch_197
    const-string v0, "isActivePasswordSufficient"

    return-object v0

    .line 1696
    :pswitch_198
    const-string v0, "getPasswordExpiration"

    return-object v0

    .line 1692
    :pswitch_199
    const-string v0, "getPasswordExpirationTimeout"

    return-object v0

    .line 1688
    :pswitch_19a
    const-string/jumbo v0, "setPasswordExpirationTimeout"

    return-object v0

    .line 1684
    :pswitch_19b
    const-string v0, "getPasswordHistoryLength"

    return-object v0

    .line 1680
    :pswitch_19c
    const-string/jumbo v0, "setPasswordHistoryLength"

    return-object v0

    .line 1676
    :pswitch_19d
    const-string v0, "getPasswordMinimumMetrics"

    return-object v0

    .line 1672
    :pswitch_19e
    const-string v0, "getPasswordMinimumNonLetter"

    return-object v0

    .line 1668
    :pswitch_19f
    const-string/jumbo v0, "setPasswordMinimumNonLetter"

    return-object v0

    .line 1664
    :pswitch_1a0
    const-string v0, "getPasswordMinimumSymbols"

    return-object v0

    .line 1660
    :pswitch_1a1
    const-string/jumbo v0, "setPasswordMinimumSymbols"

    return-object v0

    .line 1656
    :pswitch_1a2
    const-string v0, "getPasswordMinimumNumeric"

    return-object v0

    .line 1652
    :pswitch_1a3
    const-string/jumbo v0, "setPasswordMinimumNumeric"

    return-object v0

    .line 1648
    :pswitch_1a4
    const-string v0, "getPasswordMinimumLetters"

    return-object v0

    .line 1644
    :pswitch_1a5
    const-string/jumbo v0, "setPasswordMinimumLetters"

    return-object v0

    .line 1640
    :pswitch_1a6
    const-string v0, "getPasswordMinimumLowerCase"

    return-object v0

    .line 1636
    :pswitch_1a7
    const-string/jumbo v0, "setPasswordMinimumLowerCase"

    return-object v0

    .line 1632
    :pswitch_1a8
    const-string v0, "getPasswordMinimumUpperCase"

    return-object v0

    .line 1628
    :pswitch_1a9
    const-string/jumbo v0, "setPasswordMinimumUpperCase"

    return-object v0

    .line 1624
    :pswitch_1aa
    const-string v0, "getPasswordMinimumLength"

    return-object v0

    .line 1620
    :pswitch_1ab
    const-string/jumbo v0, "setPasswordMinimumLength"

    return-object v0

    .line 1616
    :pswitch_1ac
    const-string v0, "getPasswordQuality"

    return-object v0

    .line 1612
    :pswitch_1ad
    const-string/jumbo v0, "setPasswordQuality"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15437
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15439
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 15441
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15442
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15443
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 15444
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15445
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$addCrossProfileIntentFilterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16308
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16310
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 16312
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16314
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16315
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16316
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V

    .line 16317
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16318
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15355
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15357
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 15359
    .local v1, "_arg1":Landroid/content/IntentFilter;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 15360
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15361
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 15362
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15363
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15201
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15203
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15204
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15205
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v3

    .line 15206
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15207
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15208
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15956
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15958
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    .line 15960
    .local v10, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 15962
    .local v11, "_arg2":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/Intent;

    .line 15964
    .local v12, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    .line 15966
    .local v13, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 15968
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 15969
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15970
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v2

    .line 15971
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15972
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15973
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15121
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15123
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15124
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15125
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    .line 15126
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15127
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15128
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15301
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 15303
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15305
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 15306
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15307
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15308
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15309
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16006
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16008
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16010
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 16011
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16012
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 16013
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16014
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15545
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15547
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15549
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/ComponentName;

    .line 15551
    .local v8, "_arg2":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/PersistableBundle;

    .line 15553
    .local v9, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 15554
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15555
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v1

    .line 15556
    .local v1, "_result":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15557
    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15558
    return v2
.end method

.method private blacklist onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15574
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15576
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15578
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15579
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15580
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15581
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15582
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15588
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15590
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15592
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 15593
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15594
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    .line 15595
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15596
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15597
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15256
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15258
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15260
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15262
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 15264
    .local v10, "_arg3":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15266
    .local v11, "_arg4":I
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object v12, v1

    .line 15267
    .local v12, "_arg5":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15268
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    .line 15269
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15270
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15271
    const/4 v2, 0x1

    invoke-virtual {p2, v12, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15272
    return v2
.end method

.method private blacklist onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15400
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15402
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15404
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15405
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15406
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 15407
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15408
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15409
    return v4
.end method

.method private blacklist onTransact$getApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16293
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16295
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16297
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16298
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16299
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 16300
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16301
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16302
    return v4
.end method

.method private blacklist onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14941
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14943
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14945
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14946
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14947
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 14948
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14949
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14950
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16022
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16024
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16026
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16027
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16028
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 16029
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16030
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16031
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16553
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16555
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16556
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16557
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 16558
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16559
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16560
    return v4
.end method

.method private blacklist onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15003
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15005
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15007
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15008
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15009
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 15010
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15011
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15012
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14813
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14815
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14817
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14818
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14819
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14820
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14821
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14822
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14843
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14845
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14847
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14848
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14849
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14850
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14851
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14852
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14773
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14775
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14777
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14778
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14779
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14780
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14781
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14782
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14758
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14760
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14762
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14763
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14764
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14765
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14766
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14767
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14729
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14731
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14733
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14734
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14735
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14736
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14737
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14738
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14525
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14527
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14529
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14530
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14531
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14532
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14533
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14534
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14612
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14614
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14616
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14617
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14618
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14619
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14620
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14621
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14583
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14585
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14587
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14588
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14589
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14590
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14591
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14592
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14699
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14701
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14703
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14704
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14705
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14706
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14707
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14708
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14641
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14643
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14645
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14646
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14647
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14648
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14649
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14650
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14670
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14672
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14674
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14675
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14676
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14677
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14678
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14679
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14554
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14556
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14558
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14559
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14560
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14561
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14562
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14563
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14496
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14498
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14500
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14501
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14502
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14503
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14504
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14505
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15841
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15843
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15845
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15847
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15848
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15849
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 15850
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15851
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 15852
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15035
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15037
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 15039
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15040
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15041
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 15042
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15043
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14872
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14874
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14876
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14877
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14878
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14879
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14880
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14881
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getSamsungSDcardEncryptionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17016
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 17018
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17019
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17020
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 17021
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17022
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17023
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14970
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14972
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14974
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14975
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14976
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 14977
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14978
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14979
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15768
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15770
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15772
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15774
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15775
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15776
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v4

    .line 15777
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15778
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15779
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$hasDelegatedPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16380
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16382
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16383
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16384
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 16385
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16386
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16387
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15051
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15053
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15055
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15056
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15057
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v3

    .line 15058
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15059
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15060
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15169
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15171
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15173
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 15174
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15175
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    .line 15176
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15177
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15178
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15603
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15605
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15607
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15608
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15609
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15610
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15611
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15612
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15215
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15217
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 15219
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 15221
    .local v12, "_arg2":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 15223
    .local v13, "_arg3":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 15225
    .local v14, "_arg4":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 15227
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 15229
    .local v16, "_arg6":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 15230
    .local v17, "_arg7":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15231
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v2

    .line 15232
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15233
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15234
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16424
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16426
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 16428
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/StartInstallingUpdateCallback;

    move-result-object v2

    .line 16429
    .local v2, "_arg2":Landroid/app/admin/StartInstallingUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16430
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V

    .line 16431
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16432
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15455
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15457
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15459
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15460
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15461
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 15462
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15463
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15464
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15528
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15530
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15532
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15534
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15535
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15536
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 15537
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15538
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15539
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15487
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15489
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15491
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15493
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15494
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15495
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 15496
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15497
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15498
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16078
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16080
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16082
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16083
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16084
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 16085
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16086
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16087
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15153
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15155
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15158
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15159
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15160
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15161
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15162
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15694
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 15696
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15698
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15699
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15700
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 15701
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15702
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15240
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15242
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15244
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15245
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15246
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15247
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15248
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15249
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15987
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15989
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15991
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 15993
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15994
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15995
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    .line 15996
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15997
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15998
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$resetPasswordWithTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16325
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16327
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 16329
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 16331
    .local v8, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 16333
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 16334
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16335
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z

    move-result v1

    .line 16336
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16337
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16338
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15941
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15943
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15945
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15946
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15947
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    .line 15948
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15949
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15950
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$semGetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16883
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16885
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16886
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16887
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v2

    .line 16888
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16889
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16890
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16833
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16835
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16836
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16837
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16838
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16839
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16840
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16908
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16910
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16911
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16912
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16913
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16914
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16915
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16858
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16860
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16861
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16862
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16863
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16864
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16865
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16933
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16935
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16936
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16937
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowIrda(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16938
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16939
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16940
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16808
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16810
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16811
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16812
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16813
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16814
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16815
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16733
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16735
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16736
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16737
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowStorageCard(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16738
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16739
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16740
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16783
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16785
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16786
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16787
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16788
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16789
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16790
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16758
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16760
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16761
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16762
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16763
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16764
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16765
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16960
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16962
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16964
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16965
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16966
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 16967
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16968
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16969
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$semIsSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16684
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16686
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16687
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16688
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16689
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16690
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16691
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16871
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16873
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16874
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16875
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 16876
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16877
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16821
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16823
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16824
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16825
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 16826
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16827
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16896
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16898
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16899
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16900
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 16901
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16902
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16846
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16848
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16849
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16850
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 16851
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16852
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16921
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16923
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16924
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16925
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowIrda(Landroid/content/ComponentName;Z)V

    .line 16926
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16927
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16796
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16798
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16799
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16800
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V

    .line 16801
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16802
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16721
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16723
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16724
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16725
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 16726
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16727
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16771
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16773
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16774
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16775
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 16776
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16777
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16746
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16748
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16749
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16750
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowWifi(Landroid/content/ComponentName;Z)V

    .line 16751
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16752
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16709
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16711
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16712
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16713
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 16714
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16715
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetChangeNotificationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16975
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16977
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16978
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16979
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V

    .line 16980
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16981
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16697
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16699
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16700
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16701
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 16702
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16703
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16659
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16661
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16662
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16663
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 16664
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16665
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16647
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16649
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16650
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16651
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 16652
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16653
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16599
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16601
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16602
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16603
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 16604
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16605
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16587
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16589
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16590
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16591
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 16592
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16593
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16635
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16637
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16638
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16639
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 16640
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16641
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16611
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16613
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16614
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16615
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 16616
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16617
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16623
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16625
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16626
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16627
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 16628
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16629
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16575
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16577
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16578
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16579
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 16580
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16581
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16946
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16948
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16950
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16951
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16952
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V

    .line 16953
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16954
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16672
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16674
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16675
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16676
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 16677
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16678
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15618
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15620
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15622
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15624
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15625
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15626
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 15627
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15628
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15018
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15020
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15022
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15023
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15024
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 15025
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15026
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15333
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15335
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15337
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15339
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 15340
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15341
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z

    move-result v4

    .line 15342
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15343
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15344
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15509
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15511
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15513
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15515
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 15517
    .local v9, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 15518
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15519
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    .line 15520
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15521
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15522
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15386
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15388
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15390
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 15391
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15392
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15393
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15394
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16277
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16279
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16281
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 16283
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16284
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16285
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 16286
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16287
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setBluetoothContactSharingEnabledForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16989
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16990
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16991
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingEnabledForKnox(IZ)V

    .line 16992
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16993
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14927
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14929
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14931
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14932
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14933
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZZ)V

    .line 14934
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14935
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15370
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15372
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15374
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15375
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15376
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15377
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15378
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15315
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15317
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15319
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15320
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15321
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15322
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15323
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15073
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15075
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15077
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15079
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15080
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15081
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 15082
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15083
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15084
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16393
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16395
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16397
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16398
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16399
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v3

    .line 16400
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16401
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16402
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14906
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14908
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14910
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14911
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14912
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 14913
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14914
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14915
    return v4
.end method

.method private blacklist onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15645
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15647
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15649
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15650
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15651
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15652
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15653
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15860
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15862
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15864
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15865
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15866
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15867
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15868
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16469
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16471
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 16473
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 16475
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 16477
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 16478
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16479
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 16480
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16481
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16482
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16491
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16493
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16494
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16495
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 16496
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16497
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16498
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15278
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15280
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15282
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15284
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 15286
    .local v10, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 15288
    .local v11, "_arg4":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 15289
    .local v12, "_arg5":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15290
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v1

    .line 15291
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15292
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15293
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14989
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14991
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14993
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14994
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14995
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 14996
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14997
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyguardDisabledFeaturesMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16263
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16265
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16267
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16268
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16269
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    .line 16270
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16271
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14799
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14801
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14803
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14804
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14805
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 14806
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14807
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipeMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16235
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16237
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16239
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16240
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16241
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 16242
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16243
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14829
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14831
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14833
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14834
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14835
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 14836
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14837
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMaximumTimeToLockMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16249
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16251
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16253
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16254
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16255
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 16256
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16257
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15926
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15928
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15930
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15931
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15932
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15933
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15934
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16521
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16523
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16524
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16525
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16526
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16527
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15136
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15138
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15140
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15142
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15143
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15144
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 15145
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15146
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15147
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14744
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14746
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14748
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14749
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14750
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 14751
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14752
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setPasswordExpirationTimeoutMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16221
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16223
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16225
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16226
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16227
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    .line 16228
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16229
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14715
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14717
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14719
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14720
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14721
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 14722
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14723
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordHistoryLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16207
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16209
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16211
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16212
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16213
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V

    .line 16214
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16215
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14511
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14513
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14515
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14516
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14517
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 14518
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14519
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16109
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16111
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16113
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16114
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16115
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V

    .line 16116
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16117
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14598
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14600
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14602
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14603
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14604
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 14605
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14606
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLettersMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16151
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16153
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16155
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16156
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16157
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V

    .line 16158
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16159
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14569
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14571
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14573
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14574
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14575
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 14576
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14577
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16137
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16139
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16141
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16142
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16143
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V

    .line 16144
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16145
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14685
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14687
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14689
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14690
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14691
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 14692
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14693
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16193
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16195
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16197
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16198
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16199
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V

    .line 16200
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16201
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14627
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14629
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14631
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14632
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14633
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 14634
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14635
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNumericMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16165
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16167
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16169
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16170
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16171
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V

    .line 16172
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16173
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14658
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14660
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14661
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14662
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 14663
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14664
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbolsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16179
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16181
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16183
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16184
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16185
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V

    .line 16186
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16187
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14540
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14542
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14544
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14545
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14546
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 14547
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14548
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16123
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16125
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16127
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16128
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16129
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V

    .line 16130
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16131
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14482
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14484
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14486
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14487
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14488
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 14489
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14490
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordQualityMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16095
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16097
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16099
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16100
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16101
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V

    .line 16102
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16103
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15821
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15823
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15825
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15827
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15829
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15831
    .local v11, "_arg4":I
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/RemoteCallback;

    .line 15832
    .local v12, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15833
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 15834
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15835
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15806
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15808
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15810
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15811
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15812
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15813
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15814
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15470
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15472
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 15474
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15475
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15476
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z

    move-result v3

    .line 15477
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15478
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15479
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15095
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15097
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15099
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15100
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15101
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 15102
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15103
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15104
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16410
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16412
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16414
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16415
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16416
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 16417
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16418
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14858
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14860
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14862
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14863
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14864
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 14865
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14866
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setResetPasswordTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16346
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16348
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 16350
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16351
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16352
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z

    move-result v3

    .line 16353
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16354
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16355
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14956
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14958
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14960
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14961
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14962
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V

    .line 14963
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14964
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15673
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15675
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15677
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15678
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15679
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15680
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15681
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15899
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15901
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15903
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15904
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15905
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15906
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15907
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15659
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15661
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15663
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15664
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15665
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15666
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15667
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15752
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15754
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15756
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 15758
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15759
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15760
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 15761
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15762
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setTrustAgentConfigurationMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16363
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 16365
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 16367
    .local v2, "_arg2":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 16368
    .local v3, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16369
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 16370
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16371
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15708
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15710
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15712
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15714
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15715
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15716
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15717
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15718
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15420
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15422
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15424
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15426
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15427
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15428
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 15429
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15430
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestrictionForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17000
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 17002
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17004
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17006
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 17007
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17008
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V

    .line 17009
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17010
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15731
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15733
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 15735
    .local v9, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 15737
    .local v11, "_arg2":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 15739
    .local v12, "_arg3":J
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 15740
    .local v15, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15741
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-wide v5, v12

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 15742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15743
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16448
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 16450
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 16452
    .local v11, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 16454
    .local v13, "_arg2":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 16456
    .local v15, "_arg3":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 16458
    .local v17, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 16459
    .local v18, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16460
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0

    .line 16461
    .local v0, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16462
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16463
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16037
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16039
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 16041
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 16042
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16043
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 16044
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16045
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15184
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15186
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15188
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15189
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15190
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15191
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15192
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16059
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16061
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16063
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 16064
    .local v2, "_arg2":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16065
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v3

    .line 16066
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16067
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16068
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14890
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14892
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14893
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14894
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(ILjava/lang/String;Z)V

    .line 14895
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14896
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1603
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 17028
    const/16 v0, 0x1ad

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 3339
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3343
    const-string v0, "android.app.admin.IDevicePolicyManager"

    .line 3344
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 3345
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3347
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3355
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 6790
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3351
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3352
    return v1

    .line 6786
    :pswitch_1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getSamsungSDcardEncryptionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6782
    :pswitch_2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6773
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6774
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6775
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingEnabledForKnox(I)Z

    move-result v3

    .line 6776
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6777
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6778
    goto/16 :goto_0

    .line 6768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setBluetoothContactSharingEnabledForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6764
    :pswitch_5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetChangeNotificationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6760
    :pswitch_6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6756
    :pswitch_7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6752
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6748
    :pswitch_9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6744
    :pswitch_a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6740
    :pswitch_b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6736
    :pswitch_c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6732
    :pswitch_d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6728
    :pswitch_e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6724
    :pswitch_f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6720
    :pswitch_10
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6716
    :pswitch_11
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6712
    :pswitch_12
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6708
    :pswitch_13
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6704
    :pswitch_14
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6700
    :pswitch_15
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6696
    :pswitch_16
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6692
    :pswitch_17
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6688
    :pswitch_18
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6684
    :pswitch_19
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6680
    :pswitch_1a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6676
    :pswitch_1b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6672
    :pswitch_1c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semIsSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6668
    :pswitch_1d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6659
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6660
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6661
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsActivePasswordSufficient(I)Z

    move-result v3

    .line 6662
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6663
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6664
    goto/16 :goto_0

    .line 6654
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6650
    :pswitch_20
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6646
    :pswitch_21
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6642
    :pswitch_22
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6638
    :pswitch_23
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6634
    :pswitch_24
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6630
    :pswitch_25
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6626
    :pswitch_26
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6616
    :pswitch_27
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6618
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6619
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6620
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 6621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6622
    goto/16 :goto_0

    .line 6605
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_28
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6607
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6608
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6609
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordQuality(Landroid/content/ComponentName;I)V

    .line 6610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6611
    goto/16 :goto_0

    .line 6595
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_29
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6596
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6597
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 6598
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6599
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6600
    goto/16 :goto_0

    .line 6587
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_2a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v2

    .line 6588
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6589
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6590
    goto/16 :goto_0

    .line 6578
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6579
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6580
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 6581
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6582
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6583
    goto/16 :goto_0

    .line 6569
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/admin/ParcelableResource;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6570
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6571
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetStrings(Ljava/util/List;)V

    .line 6572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6573
    goto/16 :goto_0

    .line 6560
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2d
    sget-object v2, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6561
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6562
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStrings(Ljava/util/List;)V

    .line 6563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6564
    goto/16 :goto_0

    .line 6551
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6552
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6553
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDpcDownloaded(Z)V

    .line 6554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6555
    goto/16 :goto_0

    .line 6543
    .end local v2    # "_arg0":Z
    :pswitch_2f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDpcDownloaded()Z

    move-result v2

    .line 6544
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6545
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6546
    goto/16 :goto_0

    .line 6539
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6531
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6532
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6533
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDrawables(Ljava/util/List;)V

    .line 6534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6535
    goto/16 :goto_0

    .line 6522
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32
    sget-object v2, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6523
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6524
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDrawables(Ljava/util/List;)V

    .line 6525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6526
    goto/16 :goto_0

    .line 6514
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    :pswitch_33
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v2

    .line 6515
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6516
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6517
    goto/16 :goto_0

    .line 6507
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_34
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v2

    .line 6508
    .local v2, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6509
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6510
    goto/16 :goto_0

    .line 6499
    .end local v2    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_35
    sget-object v2, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/WifiSsidPolicy;

    .line 6500
    .local v2, "_arg0":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6501
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V

    .line 6502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6503
    goto/16 :goto_0

    .line 6491
    .end local v2    # "_arg0":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_36
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumRequiredWifiSecurityLevel()I

    move-result v2

    .line 6492
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6493
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6494
    goto/16 :goto_0

    .line 6483
    .end local v2    # "_result":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6484
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6485
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumRequiredWifiSecurityLevel(I)V

    .line 6486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6487
    goto/16 :goto_0

    .line 6475
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canUsbDataSignalingBeDisabled()Z

    move-result v2

    .line 6476
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6477
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6478
    goto/16 :goto_0

    .line 6466
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6467
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6468
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabledForUser(I)Z

    move-result v3

    .line 6469
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6470
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6471
    goto/16 :goto_0

    .line 6456
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6458
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 6459
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6460
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6461
    goto/16 :goto_0

    .line 6445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6447
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6448
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6449
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V

    .line 6450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6451
    goto/16 :goto_0

    .line 6435
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6436
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6437
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canAdminGrantSensorsPermissionsForUser(I)Z

    move-result v3

    .line 6438
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6439
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6440
    goto/16 :goto_0

    .line 6426
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6427
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6428
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDefaultCrossProfileIntentFilters(I)V

    .line 6429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6430
    goto/16 :goto_0

    .line 6416
    .end local v2    # "_arg0":I
    :pswitch_3e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6417
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6418
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    .line 6419
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6420
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6421
    goto/16 :goto_0

    .line 6405
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_3f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6407
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6408
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6409
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerType(Landroid/content/ComponentName;I)V

    .line 6410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6411
    goto/16 :goto_0

    .line 6394
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_40
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6396
    .local v2, "_arg0":Landroid/os/UserHandle;
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 6397
    .local v3, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6398
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V

    .line 6399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6400
    goto/16 :goto_0

    .line 6383
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/accounts/Account;
    :pswitch_41
    sget-object v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    .line 6385
    .local v2, "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6386
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6387
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V

    .line 6388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6389
    goto/16 :goto_0

    .line 6371
    .end local v2    # "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_42
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6373
    .local v2, "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6374
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6375
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 6376
    .local v4, "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6377
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6378
    goto/16 :goto_0

    .line 6366
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/UserHandle;
    :pswitch_43
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6357
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6358
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6359
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6360
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6362
    goto/16 :goto_0

    .line 6347
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6348
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6349
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeOperation(I)Z

    move-result v3

    .line 6350
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6351
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6352
    goto/16 :goto_0

    .line 6336
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6338
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6339
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6340
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNextOperationSafety(II)V

    .line 6341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6342
    goto/16 :goto_0

    .line 6326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6327
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6328
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v3

    .line 6329
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6331
    goto/16 :goto_0

    .line 6318
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_48
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isComplianceAcknowledgementRequired()Z

    move-result v2

    .line 6319
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6320
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6321
    goto/16 :goto_0

    .line 6312
    .end local v2    # "_result":Z
    :pswitch_49
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeDeviceCompliant()V

    .line 6313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6314
    goto/16 :goto_0

    .line 6302
    :pswitch_4a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6304
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 6305
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6306
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 6307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6308
    goto/16 :goto_0

    .line 6292
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_4b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6293
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6294
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 6295
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6296
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6297
    goto/16 :goto_0

    .line 6281
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_4c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6283
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6284
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6285
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 6286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6287
    goto/16 :goto_0

    .line 6271
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_4d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6272
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6273
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v3

    .line 6274
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6275
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6276
    goto/16 :goto_0

    .line 6261
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_4e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6262
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6263
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 6264
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6266
    goto/16 :goto_0

    .line 6250
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_4f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6252
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6253
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6254
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V

    .line 6255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6256
    goto/16 :goto_0

    .line 6240
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_50
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6241
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6242
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6243
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6245
    goto/16 :goto_0

    .line 6229
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_51
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6231
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6232
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6233
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6235
    goto/16 :goto_0

    .line 6217
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6219
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6220
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6221
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 6222
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6224
    goto/16 :goto_0

    .line 6212
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_53
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6201
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6203
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6204
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6205
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v4

    .line 6206
    .local v4, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6207
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6208
    goto/16 :goto_0

    .line 6196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :pswitch_55
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6192
    :pswitch_56
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6185
    :pswitch_57
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUnattendedManagedKiosk()Z

    move-result v2

    .line 6186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6188
    goto/16 :goto_0

    .line 6178
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedKiosk()Z

    move-result v2

    .line 6179
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6181
    goto/16 :goto_0

    .line 6171
    .end local v2    # "_result":Z
    :pswitch_59
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 6172
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6174
    goto/16 :goto_0

    .line 6164
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 6165
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6167
    goto/16 :goto_0

    .line 6155
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6156
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6157
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6158
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6160
    goto/16 :goto_0

    .line 6144
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6146
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6147
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6148
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6150
    goto/16 :goto_0

    .line 6134
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6135
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6136
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 6137
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6139
    goto/16 :goto_0

    .line 6122
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6124
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6125
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6126
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 6127
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6129
    goto/16 :goto_0

    .line 6112
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6113
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6114
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6115
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6116
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6117
    goto/16 :goto_0

    .line 6101
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_60
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6103
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6104
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6105
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6107
    goto/16 :goto_0

    .line 6096
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_61
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6092
    :pswitch_62
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6083
    :pswitch_63
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6084
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6085
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 6086
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6087
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6088
    goto/16 :goto_0

    .line 6073
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_64
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6074
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6075
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v3

    .line 6076
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6077
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6078
    goto/16 :goto_0

    .line 6068
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_65
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6064
    :pswitch_66
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasDelegatedPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6055
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6056
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6057
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v3

    .line 6058
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6059
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6060
    goto/16 :goto_0

    .line 6050
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfigurationMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6046
    :pswitch_69
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setResetPasswordTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6035
    :pswitch_6a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6037
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6038
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6039
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 6040
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6041
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6042
    goto/16 :goto_0

    .line 6023
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_6b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6025
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6026
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6027
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 6028
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6029
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6030
    goto/16 :goto_0

    .line 6018
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_6c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6008
    :pswitch_6d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6010
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6011
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6012
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V

    .line 6013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6014
    goto/16 :goto_0

    .line 6003
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_6e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5999
    :pswitch_6f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5995
    :pswitch_70
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5991
    :pswitch_71
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeaturesMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5987
    :pswitch_72
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLockMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5983
    :pswitch_73
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipeMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5979
    :pswitch_74
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeoutMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5975
    :pswitch_75
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5971
    :pswitch_76
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5967
    :pswitch_77
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbolsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5963
    :pswitch_78
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumericMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5959
    :pswitch_79
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLettersMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5955
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5951
    :pswitch_7b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5947
    :pswitch_7c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5943
    :pswitch_7d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQualityMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5934
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5935
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5936
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->rebootMDM(Ljava/lang/String;)Z

    move-result v3

    .line 5937
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5938
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5939
    goto/16 :goto_0

    .line 5926
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActualDeviceOwnerMDM()Ljava/lang/String;

    move-result-object v2

    .line 5927
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5928
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5929
    goto/16 :goto_0

    .line 5922
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_80
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5913
    :pswitch_81
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5914
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5915
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5916
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5917
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5918
    goto/16 :goto_0

    .line 5902
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_82
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5904
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5905
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5906
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 5907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5908
    goto/16 :goto_0

    .line 5892
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_83
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5893
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5894
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5895
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5897
    goto/16 :goto_0

    .line 5880
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :pswitch_84
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5882
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5883
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5884
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5885
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5886
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5887
    goto/16 :goto_0

    .line 5875
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_85
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5864
    :pswitch_86
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5866
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 5867
    .local v3, "_arg1":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5868
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v4

    .line 5869
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5870
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5871
    goto/16 :goto_0

    .line 5854
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/telephony/data/ApnSetting;
    .end local v4    # "_result":I
    :pswitch_87
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5855
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5856
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5857
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5858
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5859
    goto/16 :goto_0

    .line 5842
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_88
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5844
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5845
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5846
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 5847
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5848
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5849
    goto/16 :goto_0

    .line 5826
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_89
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5827
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5828
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5829
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5830
    if-eqz v4, :cond_1

    .line 5831
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5832
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5835
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5837
    goto/16 :goto_0

    .line 5810
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_8a
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5811
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5812
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5813
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5814
    if-eqz v4, :cond_2

    .line 5815
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5816
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5819
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5821
    goto/16 :goto_0

    .line 5799
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_8b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5801
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5802
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5803
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5805
    goto/16 :goto_0

    .line 5788
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_8c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5790
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5791
    .restart local v3    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5792
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5794
    goto/16 :goto_0

    .line 5780
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_8d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5781
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5782
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5783
    goto/16 :goto_0

    .line 5776
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_8e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5772
    :pswitch_8f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5765
    :pswitch_90
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result v2

    .line 5766
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5767
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5768
    goto/16 :goto_0

    .line 5755
    .end local v2    # "_result":Z
    :pswitch_91
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5757
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5758
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5759
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 5760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5761
    goto/16 :goto_0

    .line 5750
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_92
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5741
    :pswitch_93
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5742
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5743
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v3

    .line 5744
    .local v3, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5745
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5746
    goto/16 :goto_0

    .line 5733
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_94
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    .line 5734
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5735
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5736
    goto/16 :goto_0

    .line 5729
    .end local v2    # "_result":Z
    :pswitch_95
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5720
    :pswitch_96
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5721
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5722
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5723
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5724
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5725
    goto/16 :goto_0

    .line 5710
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_97
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5711
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5712
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5713
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5714
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5715
    goto/16 :goto_0

    .line 5698
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_98
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5700
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 5701
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5702
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v4

    .line 5703
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5704
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5705
    goto/16 :goto_0

    .line 5690
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_99
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v2

    .line 5691
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5692
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5693
    goto/16 :goto_0

    .line 5683
    .end local v2    # "_result":J
    :pswitch_9a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v2

    .line 5684
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5685
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5686
    goto/16 :goto_0

    .line 5676
    .end local v2    # "_result":J
    :pswitch_9b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v2

    .line 5677
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5678
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5679
    goto/16 :goto_0

    .line 5667
    .end local v2    # "_result":J
    :pswitch_9c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5668
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5669
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5670
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5671
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5672
    goto/16 :goto_0

    .line 5657
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_9d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5658
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5659
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5660
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5661
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5662
    goto/16 :goto_0

    .line 5652
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5648
    :pswitch_9f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5637
    :pswitch_a0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5639
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5640
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5641
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5642
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5643
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5644
    goto/16 :goto_0

    .line 5632
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_a1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5623
    :pswitch_a2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5624
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5625
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5626
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5627
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5628
    goto/16 :goto_0

    .line 5612
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_a3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5614
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5615
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5616
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 5617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5618
    goto/16 :goto_0

    .line 5603
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5604
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5605
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete(I)V

    .line 5606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5607
    goto/16 :goto_0

    .line 5596
    .end local v2    # "_arg0":I
    :pswitch_a5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 5597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5598
    goto/16 :goto_0

    .line 5589
    :pswitch_a6
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v2

    .line 5590
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5591
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5592
    goto/16 :goto_0

    .line 5582
    .end local v2    # "_result":Z
    :pswitch_a7
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v2

    .line 5583
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5584
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5585
    goto/16 :goto_0

    .line 5574
    .end local v2    # "_result":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5575
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5576
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 5577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5578
    goto/16 :goto_0

    .line 5564
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5565
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5566
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v3

    .line 5567
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5568
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5569
    goto/16 :goto_0

    .line 5556
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_aa
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide v2

    .line 5557
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5558
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5559
    goto/16 :goto_0

    .line 5549
    .end local v2    # "_result":J
    :pswitch_ab
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceNetworkLogs()J

    move-result-wide v2

    .line 5550
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5551
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5552
    goto/16 :goto_0

    .line 5538
    .end local v2    # "_result":J
    :pswitch_ac
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5540
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5541
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5542
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5543
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5544
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5545
    goto/16 :goto_0

    .line 5526
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ad
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5528
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5529
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5530
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5531
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5532
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5533
    goto/16 :goto_0

    .line 5514
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ae
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5516
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5517
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5518
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5519
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5520
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5521
    goto/16 :goto_0

    .line 5509
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_af
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5500
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5501
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5502
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser(I)Z

    move-result v3

    .line 5503
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5504
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5505
    goto/16 :goto_0

    .line 5492
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b1
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallingUserAffiliated()Z

    move-result v2

    .line 5493
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5494
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5495
    goto/16 :goto_0

    .line 5483
    .end local v2    # "_result":Z
    :pswitch_b2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5484
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5485
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5486
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5487
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5488
    goto/16 :goto_0

    .line 5472
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5474
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5475
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5476
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5478
    goto/16 :goto_0

    .line 5461
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5463
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5464
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5465
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 5466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5467
    goto/16 :goto_0

    .line 5453
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v2

    .line 5454
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5455
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5456
    goto/16 :goto_0

    .line 5438
    .end local v2    # "_result":I
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5439
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5440
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5441
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5442
    if-eqz v4, :cond_3

    .line 5443
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5444
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5447
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5449
    goto/16 :goto_0

    .line 5424
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_b7
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5425
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5426
    if-eqz v3, :cond_4

    .line 5427
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5428
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5431
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5433
    goto/16 :goto_0

    .line 5409
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_b8
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5410
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5411
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5412
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5413
    if-eqz v4, :cond_5

    .line 5414
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5415
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5418
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5420
    goto/16 :goto_0

    .line 5398
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_b9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5400
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5401
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5402
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5404
    goto/16 :goto_0

    .line 5388
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5389
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5390
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v3

    .line 5391
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5392
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5393
    goto/16 :goto_0

    .line 5378
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_bb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5379
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5380
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v3

    .line 5381
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5383
    goto/16 :goto_0

    .line 5369
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5370
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5371
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearOrganizationIdForUser(I)V

    .line 5372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5373
    goto/16 :goto_0

    .line 5358
    .end local v2    # "_arg0":I
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5360
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5361
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5362
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 5363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5364
    goto/16 :goto_0

    .line 5347
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_be
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5349
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5350
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5351
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 5352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5353
    goto/16 :goto_0

    .line 5329
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_bf
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5331
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5332
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5333
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5334
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5335
    if-eqz v5, :cond_6

    .line 5336
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5337
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5340
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5342
    goto/16 :goto_0

    .line 5311
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_c0
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5313
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5314
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5315
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5316
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5317
    if-eqz v5, :cond_7

    .line 5318
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5319
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5322
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5324
    goto/16 :goto_0

    .line 5295
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_c1
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5296
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5297
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5298
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5299
    if-eqz v4, :cond_8

    .line 5300
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5301
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5304
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5306
    goto/16 :goto_0

    .line 5284
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_c2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5286
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5287
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5288
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5290
    goto/16 :goto_0

    .line 5268
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_c3
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5269
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5270
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5271
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5272
    if-eqz v4, :cond_9

    .line 5273
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5274
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 5277
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5279
    goto/16 :goto_0

    .line 5257
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_c4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5259
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5260
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5261
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5263
    goto/16 :goto_0

    .line 5248
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_c5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5249
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5250
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 5251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5252
    goto/16 :goto_0

    .line 5238
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_c6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5239
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5240
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 5241
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5243
    goto/16 :goto_0

    .line 5228
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5229
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5230
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5231
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5233
    goto/16 :goto_0

    .line 5216
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_c8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5218
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5220
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5221
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5222
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5223
    goto/16 :goto_0

    .line 5211
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5200
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5202
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5203
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5204
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5205
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5207
    goto/16 :goto_0

    .line 5188
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5191
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5192
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5193
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5195
    goto/16 :goto_0

    .line 5183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_cc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5179
    :pswitch_cd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5170
    :pswitch_ce
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5171
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5172
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v3

    .line 5173
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5175
    goto/16 :goto_0

    .line 5165
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_cf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5156
    :pswitch_d0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5157
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5158
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v3

    .line 5159
    .local v3, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5160
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5161
    goto/16 :goto_0

    .line 5147
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_d1
    sget-object v2, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 5148
    .local v2, "_arg0":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5149
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 5150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5151
    goto/16 :goto_0

    .line 5139
    .end local v2    # "_arg0":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_d2
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    .line 5140
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5142
    goto/16 :goto_0

    .line 5128
    .end local v2    # "_result":Z
    :pswitch_d3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5130
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5131
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5132
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 5133
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5135
    goto/16 :goto_0

    .line 5116
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_d4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5118
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5119
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5120
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 5121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5123
    goto/16 :goto_0

    .line 5109
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_d5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 5110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5111
    goto/16 :goto_0

    .line 5102
    :pswitch_d6
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    .line 5103
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5104
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5105
    goto/16 :goto_0

    .line 5092
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_d7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5094
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdatePolicy;

    .line 5095
    .local v3, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5096
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 5097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5098
    goto/16 :goto_0

    .line 5081
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_d8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5083
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 5084
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5085
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 5086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5087
    goto/16 :goto_0

    .line 5069
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_d9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5071
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5072
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5073
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5074
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5075
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5076
    goto/16 :goto_0

    .line 5059
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_da
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5060
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5061
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5062
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5063
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5064
    goto/16 :goto_0

    .line 5048
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_db
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5050
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5051
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5052
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 5053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5054
    goto/16 :goto_0

    .line 5038
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_dc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5039
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5040
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5041
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5042
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5043
    goto/16 :goto_0

    .line 5027
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_dd
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5029
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5030
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5031
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V

    .line 5032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5033
    goto/16 :goto_0

    .line 5017
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_de
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5018
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5019
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5020
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5021
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5022
    goto/16 :goto_0

    .line 5006
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_df
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5008
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5009
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5010
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V

    .line 5011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5012
    goto/16 :goto_0

    .line 4998
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e0
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v2

    .line 4999
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5000
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5001
    goto/16 :goto_0

    .line 4988
    .end local v2    # "_result":Z
    :pswitch_e1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4990
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4991
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4992
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 4993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4994
    goto/16 :goto_0

    .line 4978
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4979
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4980
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4981
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4982
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4983
    goto/16 :goto_0

    .line 4966
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4968
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4969
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4970
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4971
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4972
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4973
    goto/16 :goto_0

    .line 4954
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_e4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4956
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4957
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4958
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4959
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4960
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4961
    goto/16 :goto_0

    .line 4949
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_e5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4945
    :pswitch_e6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4936
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4937
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4938
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v3

    .line 4939
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4940
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4941
    goto/16 :goto_0

    .line 4926
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4927
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4928
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4929
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4930
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4931
    goto/16 :goto_0

    .line 4915
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4917
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4918
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4919
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 4920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4921
    goto/16 :goto_0

    .line 4910
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_ea
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4901
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4902
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4903
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v3

    .line 4904
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4905
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4906
    goto/16 :goto_0

    .line 4891
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ec
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4892
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4893
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4894
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4895
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4896
    goto/16 :goto_0

    .line 4880
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ed
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4882
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4883
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4884
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 4885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4886
    goto/16 :goto_0

    .line 4870
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4871
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4872
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v3

    .line 4873
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4874
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4875
    goto/16 :goto_0

    .line 4860
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ef
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4861
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4862
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4863
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4864
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4865
    goto/16 :goto_0

    .line 4849
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4851
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4852
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4853
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 4854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4855
    goto/16 :goto_0

    .line 4837
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4839
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4840
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4841
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4842
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4843
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4844
    goto/16 :goto_0

    .line 4832
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4828
    :pswitch_f3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4819
    :pswitch_f4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4820
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4821
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4822
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4823
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4824
    goto/16 :goto_0

    .line 4808
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4810
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4811
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4812
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 4813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4814
    goto/16 :goto_0

    .line 4796
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4798
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4799
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4800
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4801
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4802
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4803
    goto/16 :goto_0

    .line 4784
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4786
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4787
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4788
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;J)Z

    move-result v5

    .line 4789
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4790
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4791
    goto/16 :goto_0

    .line 4773
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_f8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4775
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4776
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4777
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 4778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    goto/16 :goto_0

    .line 4763
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4764
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4765
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4766
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4767
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4768
    goto/16 :goto_0

    .line 4752
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_fa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4754
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4755
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4756
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V

    .line 4757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4758
    goto/16 :goto_0

    .line 4747
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_fb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4743
    :pswitch_fc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4739
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4730
    :pswitch_fe
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4731
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4732
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v3

    .line 4733
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4734
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4735
    goto/16 :goto_0

    .line 4719
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_ff
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4721
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4722
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4723
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;I)V

    .line 4724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4725
    goto/16 :goto_0

    .line 4709
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4710
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4711
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v3

    .line 4712
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4713
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4714
    goto/16 :goto_0

    .line 4699
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_101
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4700
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4701
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v3

    .line 4702
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4704
    goto/16 :goto_0

    .line 4688
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_102
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4690
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4691
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4692
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 4693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4694
    goto/16 :goto_0

    .line 4680
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_103
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v2

    .line 4681
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4682
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4683
    goto/16 :goto_0

    .line 4672
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_104
    sget-object v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4673
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4674
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 4675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4676
    goto/16 :goto_0

    .line 4662
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_105
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4663
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4664
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 4665
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4667
    goto/16 :goto_0

    .line 4651
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_106
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4653
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4654
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4655
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V

    .line 4656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4657
    goto/16 :goto_0

    .line 4639
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4641
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4642
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4643
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v4

    .line 4644
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4645
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4646
    goto/16 :goto_0

    .line 4631
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_108
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v2

    .line 4632
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4633
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4634
    goto/16 :goto_0

    .line 4627
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_109
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4623
    :pswitch_10a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4619
    :pswitch_10b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4615
    :pswitch_10c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4606
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4607
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4608
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v3

    .line 4609
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4610
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4611
    goto/16 :goto_0

    .line 4597
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4598
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4599
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeNewUserDisclaimer(I)V

    .line 4600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4601
    goto/16 :goto_0

    .line 4587
    .end local v2    # "_arg0":I
    :pswitch_10f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4588
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4589
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4590
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4591
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4592
    goto/16 :goto_0

    .line 4579
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_110
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLogoutUserId()I

    move-result v2

    .line 4580
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4581
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4582
    goto/16 :goto_0

    .line 4572
    .end local v2    # "_result":I
    :pswitch_111
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUserInternal()I

    move-result v2

    .line 4573
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4574
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4575
    goto/16 :goto_0

    .line 4563
    .end local v2    # "_result":I
    :pswitch_112
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4564
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4565
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result v3

    .line 4566
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4567
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4568
    goto/16 :goto_0

    .line 4551
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_113
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4553
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4554
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4555
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4556
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4557
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4558
    goto/16 :goto_0

    .line 4539
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_114
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4541
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4542
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4543
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4544
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4545
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4546
    goto/16 :goto_0

    .line 4527
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_115
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4529
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4530
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4531
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4532
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4533
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4534
    goto/16 :goto_0

    .line 4515
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_116
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4517
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4518
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4519
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4520
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4521
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4522
    goto/16 :goto_0

    .line 4510
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_117
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4506
    :pswitch_118
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4502
    :pswitch_119
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4491
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4493
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4494
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4495
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4496
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4498
    goto/16 :goto_0

    .line 4481
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4482
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4483
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 4484
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4485
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4486
    goto/16 :goto_0

    .line 4469
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4471
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4472
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4473
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v4

    .line 4474
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4475
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4476
    goto/16 :goto_0

    .line 4459
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_11d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4460
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4461
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4462
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4464
    goto/16 :goto_0

    .line 4447
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4449
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4450
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4451
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4452
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4453
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4454
    goto/16 :goto_0

    .line 4442
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4433
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4434
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4435
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 4436
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4437
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4438
    goto/16 :goto_0

    .line 4421
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_121
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4423
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4424
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4425
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;

    move-result-object v4

    .line 4426
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4428
    goto/16 :goto_0

    .line 4416
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_122
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4412
    :pswitch_123
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4403
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4404
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 4406
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4407
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4408
    goto/16 :goto_0

    .line 4393
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_125
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4394
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4395
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4396
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4397
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4398
    goto/16 :goto_0

    .line 4381
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_126
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4383
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4384
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4385
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4386
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4387
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4388
    goto/16 :goto_0

    .line 4372
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_127
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4373
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4374
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 4375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4376
    goto/16 :goto_0

    .line 4367
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_128
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4356
    :pswitch_129
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4358
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4359
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4360
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 4361
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4362
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4363
    goto/16 :goto_0

    .line 4351
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_12a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4342
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4343
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4344
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 4345
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4346
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4347
    goto/16 :goto_0

    .line 4331
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_12c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4333
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4334
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4335
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 4336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4337
    goto/16 :goto_0

    .line 4321
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4322
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4323
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v3

    .line 4324
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4326
    goto/16 :goto_0

    .line 4311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_12e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4312
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4314
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4316
    goto/16 :goto_0

    .line 4299
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4301
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4302
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4303
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4304
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4306
    goto/16 :goto_0

    .line 4294
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4290
    :pswitch_131
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4286
    :pswitch_132
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4276
    :pswitch_133
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4278
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4279
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4280
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4282
    goto/16 :goto_0

    .line 4271
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_134
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4262
    :pswitch_135
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4263
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4264
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4265
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4267
    goto/16 :goto_0

    .line 4252
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4254
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v3

    .line 4255
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4257
    goto/16 :goto_0

    .line 4242
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_137
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4243
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4244
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4245
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4247
    goto/16 :goto_0

    .line 4232
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4234
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 4235
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4237
    goto/16 :goto_0

    .line 4222
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_139
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4223
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4224
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4225
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    goto/16 :goto_0

    .line 4217
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4208
    :pswitch_13b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4209
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4210
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4211
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4213
    goto/16 :goto_0

    .line 4197
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4199
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4200
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4201
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4203
    goto/16 :goto_0

    .line 4185
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4187
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4188
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4189
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4190
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4192
    goto/16 :goto_0

    .line 4173
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4175
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4176
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4177
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4178
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4180
    goto/16 :goto_0

    .line 4168
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4164
    :pswitch_140
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4160
    :pswitch_141
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4156
    :pswitch_142
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4145
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4147
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4148
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4149
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4150
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4152
    goto/16 :goto_0

    .line 4140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_144
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4136
    :pswitch_145
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4125
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4127
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4128
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4129
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    .line 4130
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4132
    goto/16 :goto_0

    .line 4120
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_147
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4110
    :pswitch_148
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4112
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4113
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4114
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4116
    goto/16 :goto_0

    .line 4105
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_149
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4101
    :pswitch_14a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4094
    :pswitch_14b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v2

    .line 4095
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4096
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4097
    goto/16 :goto_0

    .line 4090
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_14c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4086
    :pswitch_14d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4073
    :pswitch_14e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4074
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4075
    if-eqz v3, :cond_a

    .line 4076
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4077
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 4080
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4082
    goto/16 :goto_0

    .line 4063
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_14f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4065
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4066
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4069
    goto/16 :goto_0

    .line 4058
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_150
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4051
    :pswitch_151
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    .line 4052
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4053
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4054
    goto/16 :goto_0

    .line 4044
    .end local v2    # "_result":Z
    :pswitch_152
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v2

    .line 4045
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4047
    goto/16 :goto_0

    .line 4036
    .end local v2    # "_result":Z
    :pswitch_153
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4037
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4038
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 4039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4040
    goto/16 :goto_0

    .line 4025
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_154
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4027
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4028
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4029
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4031
    goto/16 :goto_0

    .line 4016
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_155
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4017
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4018
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 4019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4020
    goto/16 :goto_0

    .line 4006
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4007
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v3

    .line 4009
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4010
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4011
    goto/16 :goto_0

    .line 3996
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_157
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3997
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3998
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3999
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4000
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4001
    goto/16 :goto_0

    .line 3986
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_158
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3987
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3988
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3989
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3990
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3991
    goto/16 :goto_0

    .line 3976
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3977
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3978
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3979
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3980
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3981
    goto/16 :goto_0

    .line 3971
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_15a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3964
    :pswitch_15b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v2

    .line 3965
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3966
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3967
    goto/16 :goto_0

    .line 3956
    .end local v2    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3957
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3958
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3960
    goto/16 :goto_0

    .line 3948
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_15d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 3949
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3950
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3951
    goto/16 :goto_0

    .line 3941
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v2

    .line 3942
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3943
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3944
    goto/16 :goto_0

    .line 3932
    .end local v2    # "_result":Z
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3933
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3934
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 3935
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3936
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3937
    goto/16 :goto_0

    .line 3927
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_160
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3919
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3920
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 3922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3923
    goto/16 :goto_0

    .line 3910
    .end local v2    # "_arg0":I
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3911
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3912
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 3913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3914
    goto/16 :goto_0

    .line 3901
    .end local v2    # "_arg0":I
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3902
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3903
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulBiometricAttempt(I)V

    .line 3904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3905
    goto/16 :goto_0

    .line 3892
    .end local v2    # "_arg0":I
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3893
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3894
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedBiometricAttempt(I)V

    .line 3895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3896
    goto/16 :goto_0

    .line 3883
    .end local v2    # "_arg0":I
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3884
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3885
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 3886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3887
    goto/16 :goto_0

    .line 3874
    .end local v2    # "_arg0":I
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3875
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3876
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 3877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3878
    goto/16 :goto_0

    .line 3863
    .end local v2    # "_arg0":I
    :pswitch_167
    sget-object v2, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 3865
    .local v2, "_arg0":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3866
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3867
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3869
    goto/16 :goto_0

    .line 3858
    .end local v2    # "_arg0":Landroid/app/admin/PasswordMetrics;
    .end local v3    # "_arg1":I
    :pswitch_168
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3848
    :pswitch_169
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3850
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3851
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3852
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3854
    goto/16 :goto_0

    .line 3837
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_16a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3839
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3840
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3841
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3843
    goto/16 :goto_0

    .line 3832
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_16b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3821
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3823
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3824
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3825
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v4

    .line 3826
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3827
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3828
    goto/16 :goto_0

    .line 3811
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3812
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3813
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v3

    .line 3814
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3816
    goto/16 :goto_0

    .line 3799
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_16e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3801
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3802
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3803
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3804
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3805
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3806
    goto/16 :goto_0

    .line 3794
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_16f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3790
    :pswitch_170
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3786
    :pswitch_171
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3777
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3778
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3779
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyAppStreamingPolicy(I)I

    move-result v3

    .line 3780
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3781
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3782
    goto/16 :goto_0

    .line 3768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3769
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3770
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyAppStreamingPolicy(I)V

    .line 3771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3772
    goto/16 :goto_0

    .line 3758
    .end local v2    # "_arg0":I
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3759
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3760
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyNotificationStreamingPolicy(I)I

    move-result v3

    .line 3761
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3762
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    goto/16 :goto_0

    .line 3749
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3750
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3751
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyNotificationStreamingPolicy(I)V

    .line 3752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3753
    goto/16 :goto_0

    .line 3744
    .end local v2    # "_arg0":I
    :pswitch_176
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3740
    :pswitch_177
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3736
    :pswitch_178
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3732
    :pswitch_179
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3723
    :pswitch_17a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3724
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3725
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3726
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3727
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3728
    goto/16 :goto_0

    .line 3711
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3713
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3714
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3715
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v4

    .line 3716
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3717
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3718
    goto/16 :goto_0

    .line 3699
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_17c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3701
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3702
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3703
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3704
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3705
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3706
    goto/16 :goto_0

    .line 3687
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_17d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3689
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3690
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3691
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 3692
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3693
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3694
    goto/16 :goto_0

    .line 3676
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_17e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3678
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    .line 3679
    .local v3, "_arg1":Landroid/net/ProxyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3680
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    goto/16 :goto_0

    .line 3666
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/net/ProxyInfo;
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3667
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3668
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3669
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3670
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3671
    goto/16 :goto_0

    .line 3661
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_180
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3653
    :pswitch_181
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 3654
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3655
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 3656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3657
    goto/16 :goto_0

    .line 3645
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_182
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFactoryResetProtectionPolicySupported()Z

    move-result v2

    .line 3646
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3648
    goto/16 :goto_0

    .line 3636
    .end local v2    # "_result":Z
    :pswitch_183
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3637
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3638
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v3

    .line 3639
    .local v3, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3641
    goto/16 :goto_0

    .line 3625
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_184
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3627
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 3628
    .local v3, "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3629
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 3630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3631
    goto/16 :goto_0

    .line 3620
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_185
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3610
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3612
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3613
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3614
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(IZ)V

    .line 3615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3616
    goto/16 :goto_0

    .line 3605
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_187
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3601
    :pswitch_188
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3597
    :pswitch_189
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3593
    :pswitch_18a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3582
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3584
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3585
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3586
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 3587
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3589
    goto/16 :goto_0

    .line 3577
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_18c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3573
    :pswitch_18d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3562
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3564
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3565
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3566
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v4

    .line 3567
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3568
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3569
    goto/16 :goto_0

    .line 3552
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3553
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3554
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedBiometricAttempts(I)I

    move-result v3

    .line 3555
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    goto/16 :goto_0

    .line 3540
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3542
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3543
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3544
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v4

    .line 3545
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3546
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3547
    goto/16 :goto_0

    .line 3530
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_191
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3531
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3532
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3533
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3535
    goto/16 :goto_0

    .line 3518
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3520
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3521
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3522
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v4

    .line 3523
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3524
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    goto/16 :goto_0

    .line 3508
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3509
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3510
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredPasswordComplexity(Z)I

    move-result v3

    .line 3511
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3513
    goto/16 :goto_0

    .line 3497
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3499
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3500
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3501
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredPasswordComplexity(IZ)V

    .line 3502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3503
    goto/16 :goto_0

    .line 3487
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3488
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3489
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Z)I

    move-result v3

    .line 3490
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3491
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3492
    goto :goto_0

    .line 3475
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3477
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3478
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3479
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v4

    .line 3480
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3482
    goto :goto_0

    .line 3467
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_197
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v2

    .line 3468
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3469
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3470
    goto :goto_0

    .line 3456
    .end local v2    # "_result":Z
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3458
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3459
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3460
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v4

    .line 3461
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3463
    goto :goto_0

    .line 3451
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_199
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3447
    :pswitch_19a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3443
    :pswitch_19b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3439
    :pswitch_19c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3435
    :pswitch_19d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3424
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3426
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3427
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3428
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    .line 3429
    .local v4, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3430
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3431
    nop

    .line 6793
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/app/admin/PasswordMetrics;
    :goto_0
    return v1

    .line 3419
    :pswitch_19f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3415
    :pswitch_1a0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3411
    :pswitch_1a1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3407
    :pswitch_1a2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3403
    :pswitch_1a3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3399
    :pswitch_1a4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3395
    :pswitch_1a5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3391
    :pswitch_1a6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3387
    :pswitch_1a7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3383
    :pswitch_1a8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3379
    :pswitch_1a9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3375
    :pswitch_1aa
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3371
    :pswitch_1ab
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3367
    :pswitch_1ac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3363
    :pswitch_1ad
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3359
    :pswitch_1ae
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1ae
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
