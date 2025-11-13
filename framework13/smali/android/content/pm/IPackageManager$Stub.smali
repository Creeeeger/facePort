.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final greylist-max-o TRANSACTION_activitySupportsIntent:I = 0xc

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x3e

.field static final greylist-max-o TRANSACTION_addPermission:I = 0xc0

.field static final greylist-max-o TRANSACTION_addPermissionAsync:I = 0xc1

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x3c

.field static final greylist-max-o TRANSACTION_addPreferredActivity:I = 0x38

.field static final blacklist TRANSACTION_applyRuntimePermissionsForAllApplicationsForMDM:I = 0xe0

.field static final blacklist TRANSACTION_applyRuntimePermissionsForMDM:I = 0xdf

.field static final greylist-max-o TRANSACTION_canForwardTo:I = 0x1d

.field static final blacklist TRANSACTION_canPackageQuery:I = 0xd2

.field static final greylist-max-o TRANSACTION_canRequestPackageInstalls:I = 0x9d

.field static final blacklist TRANSACTION_cancelEMPHandlerSendPendingBroadcast:I = 0xb8

.field static final greylist-max-o TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final blacklist TRANSACTION_changeMonetizationBadgeState:I = 0xea

.field static final blacklist TRANSACTION_checkASKSTarget:I = 0xdb

.field static final blacklist TRANSACTION_checkDeletableListForASKS:I = 0xd8

.field static final greylist-max-o TRANSACTION_checkPackageStartable:I = 0x1

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0xc3

.field static final greylist-max-o TRANSACTION_checkSignatures:I = 0x11

.field static final greylist-max-o TRANSACTION_checkUidPermission:I = 0xc5

.field static final greylist-max-o TRANSACTION_checkUidSignatures:I = 0x12

.field static final greylist-max-o TRANSACTION_clearApplicationProfileData:I = 0x5c

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x5b

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x3f

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x3d

.field static final greylist-max-o TRANSACTION_clearPackagePreferredActivities:I = 0x3a

.field static final blacklist TRANSACTION_clearPackagePreferredActivitiesAsUserForMDM:I = 0xde

.field static final blacklist TRANSACTION_createEncAppData:I = 0xe4

.field static final greylist-max-o TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFiles:I = 0x59

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x5a

.field static final blacklist TRANSACTION_deleteExistingPackageAsUser:I = 0x32

.field static final greylist-max-o TRANSACTION_deletePackageAsUser:I = 0x30

.field static final greylist-max-o TRANSACTION_deletePackageVersioned:I = 0x31

.field static final greylist-max-o TRANSACTION_deletePreloadsFileCache:I = 0x9e

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x6a

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x61

.field static final greylist-max-o TRANSACTION_extendVerificationTimeout:I = 0x77

.field static final greylist-max-o TRANSACTION_findPersistentPreferredActivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_finishPackageInstall:I = 0x2d

.field static final greylist-max-o TRANSACTION_flushPackageRestrictionsAsUser:I = 0x55

.field static final greylist-max-o TRANSACTION_forceDexOpt:I = 0x6b

.field static final greylist-max-o TRANSACTION_freeStorage:I = 0x58

.field static final greylist-max-o TRANSACTION_freeStorageAndNotify:I = 0x57

.field static final greylist-max-o TRANSACTION_getActivityInfo:I = 0xb

.field static final greylist-max-o TRANSACTION_getAllIntentFilters:I = 0x7c

.field static final greylist-max-o TRANSACTION_getAllPackages:I = 0x13

.field static final greylist-max-o TRANSACTION_getAppOpPermissionPackages:I = 0xbe

.field static final blacklist TRANSACTION_getAppPredictionServicePackageName:I = 0xad

.field static final greylist-max-o TRANSACTION_getApplicationEnabledSetting:I = 0x53

.field static final greylist-max-o TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x83

.field static final greylist-max-r TRANSACTION_getApplicationInfo:I = 0x9

.field static final greylist-max-o TRANSACTION_getArtManager:I = 0xa3

.field static final blacklist TRANSACTION_getAttentionServicePackageName:I = 0xaa

.field static final greylist-max-o TRANSACTION_getBlockUninstallForUser:I = 0x88

.field static final greylist-max-o TRANSACTION_getChangedPackages:I = 0x98

.field static final greylist-max-o TRANSACTION_getComponentEnabledSetting:I = 0x51

.field static final blacklist TRANSACTION_getComponentMetadataForIconTray:I = 0xd5

.field static final blacklist TRANSACTION_getContentCaptureServicePackageName:I = 0xb1

.field static final blacklist TRANSACTION_getDeclaredSharedLibraries:I = 0x9c

.field static final greylist-max-o TRANSACTION_getDefaultAppsBackup:I = 0x47

.field static final blacklist TRANSACTION_getDefaultTextClassifierPackageName:I = 0xa8

.field static final blacklist TRANSACTION_getDomainVerificationBackup:I = 0x49

.field static final greylist-max-o TRANSACTION_getFlagsForUid:I = 0x18

.field static final blacklist TRANSACTION_getGrantedPermissionsForMDM:I = 0xdd

.field static final greylist-max-o TRANSACTION_getHarmfulAppWarning:I = 0xa5

.field static final blacklist TRANSACTION_getHoldLockToken:I = 0xcd

.field static final greylist-max-o TRANSACTION_getHomeActivities:I = 0x4b

.field static final blacklist TRANSACTION_getIncidentReportApproverPackageName:I = 0xb0

.field static final greylist-max-o TRANSACTION_getInstallLocation:I = 0x74

.field static final greylist-max-o TRANSACTION_getInstallReason:I = 0x9a

.field static final blacklist TRANSACTION_getInstallSourceInfo:I = 0x34

.field static final greylist-max-o TRANSACTION_getInstalledApplications:I = 0x26

.field static final blacklist TRANSACTION_getInstalledModules:I = 0xb4

.field static final greylist-max-o TRANSACTION_getInstalledPackages:I = 0x24

.field static final greylist-max-o TRANSACTION_getInstallerPackageName:I = 0x33

.field static final greylist-max-o TRANSACTION_getInstantAppAndroidId:I = 0xa2

.field static final greylist-max-o TRANSACTION_getInstantAppCookie:I = 0x90

.field static final greylist-max-o TRANSACTION_getInstantAppIcon:I = 0x92

.field static final greylist-max-o TRANSACTION_getInstantAppInstallerComponent:I = 0xa1

.field static final greylist-max-o TRANSACTION_getInstantAppResolverComponent:I = 0x9f

.field static final greylist-max-o TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xa0

.field static final greylist-max-o TRANSACTION_getInstantApps:I = 0x8f

.field static final greylist-max-o TRANSACTION_getInstrumentationInfo:I = 0x2b

.field static final greylist-max-o TRANSACTION_getIntentFilterVerifications:I = 0x7b

.field static final greylist-max-o TRANSACTION_getIntentVerificationStatus:I = 0x79

.field static final greylist-max-o TRANSACTION_getKeySetByAlias:I = 0x89

.field static final greylist-max-o TRANSACTION_getLastChosenActivity:I = 0x36

.field static final blacklist TRANSACTION_getLaunchIntentSenderForPackage:I = 0xbd

.field static final blacklist TRANSACTION_getMetadataForIconTray:I = 0xd4

.field static final blacklist TRANSACTION_getMimeGroup:I = 0xc9

.field static final blacklist TRANSACTION_getModuleInfo:I = 0xb5

.field static final greylist-max-o TRANSACTION_getMoveStatus:I = 0x6d

.field static final greylist-max-o TRANSACTION_getNameForUid:I = 0x15

.field static final greylist-max-o TRANSACTION_getNamesForUids:I = 0x16

.field static final greylist-max-o TRANSACTION_getPackageGids:I = 0x6

.field static final blacklist TRANSACTION_getPackageGrantedPermissionsForMDM:I = 0xdc

.field static final greylist-max-o TRANSACTION_getPackageInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final greylist-max-o TRANSACTION_getPackageInstaller:I = 0x86

.field static final blacklist TRANSACTION_getPackageListForDualDarPolicy:I = 0xe3

.field static final greylist-max-o TRANSACTION_getPackageSizeInfo:I = 0x5d

.field static final greylist-max-o TRANSACTION_getPackageUid:I = 0x5

.field static final greylist-max-o TRANSACTION_getPackagesForUid:I = 0x14

.field static final greylist-max-o TRANSACTION_getPackagesHoldingPermissions:I = 0x25

.field static final greylist-max-o TRANSACTION_getPermissionControllerPackageName:I = 0x8d

.field static final greylist-max-o TRANSACTION_getPermissionGroupInfo:I = 0xbf

.field static final greylist-max-o TRANSACTION_getPersistentApplications:I = 0x27

.field static final greylist-max-o TRANSACTION_getPreferredActivities:I = 0x3b

.field static final greylist-max-o TRANSACTION_getPreferredActivityBackup:I = 0x45

.field static final greylist-max-o TRANSACTION_getPrivateFlagsForUid:I = 0x19

.field static final blacklist TRANSACTION_getProgressionOfPackageChanged:I = 0xb7

.field static final blacklist TRANSACTION_getProperty:I = 0xcf

.field static final greylist-max-o TRANSACTION_getProviderInfo:I = 0xf

.field static final greylist-max-o TRANSACTION_getReceiverInfo:I = 0xd

.field static final blacklist TRANSACTION_getRequestedRuntimePermissionsForMDM:I = 0xe1

.field static final blacklist TRANSACTION_getRotationResolverPackageName:I = 0xab

.field static final blacklist TRANSACTION_getRuntimePermissionsVersion:I = 0xb9

.field static final blacklist TRANSACTION_getSdkSandboxPackageName:I = 0x8e

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xe

.field static final greylist-max-o TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0x96

.field static final blacklist TRANSACTION_getSetupWizardPackageName:I = 0xaf

.field static final greylist-max-o TRANSACTION_getSharedLibraries:I = 0x9b

.field static final greylist-max-o TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0x97

.field static final greylist-max-o TRANSACTION_getSigningKeySet:I = 0x8a

.field static final blacklist TRANSACTION_getSplashScreenTheme:I = 0xc7

.field static final greylist-max-o TRANSACTION_getSuspendedPackageAppExtras:I = 0x44

.field static final greylist-max-o TRANSACTION_getSystemAvailableFeatures:I = 0x5f

.field static final blacklist TRANSACTION_getSystemCaptionsServicePackageName:I = 0xae

.field static final greylist-max-o TRANSACTION_getSystemSharedLibraryNames:I = 0x5e

.field static final greylist-max-o TRANSACTION_getSystemTextClassifierPackageName:I = 0xa9

.field static final blacklist TRANSACTION_getTargetSdkVersion:I = 0xa

.field static final blacklist TRANSACTION_getUNvalueForASKS:I = 0xda

.field static final greylist-max-o TRANSACTION_getUidForSharedUser:I = 0x17

.field static final blacklist TRANSACTION_getUnknownSourcePackagesAsUser:I = 0xe9

.field static final blacklist TRANSACTION_getUnsuspendablePackagesForUser:I = 0x42

.field static final greylist-max-o TRANSACTION_getVerifierDeviceIdentity:I = 0x7d

.field static final blacklist TRANSACTION_getWellbeingPackageName:I = 0xac

.field static final greylist-max-o TRANSACTION_grantRuntimePermission:I = 0xc4

.field static final greylist-max-o TRANSACTION_hasSigningCertificate:I = 0xa6

.field static final greylist-max-o TRANSACTION_hasSystemFeature:I = 0x60

.field static final greylist-max-o TRANSACTION_hasSystemUidErrors:I = 0x63

.field static final greylist-max-o TRANSACTION_hasUidSigningCertificate:I = 0xa7

.field static final blacklist TRANSACTION_holdLock:I = 0xce

.field static final greylist-max-o TRANSACTION_installExistingPackageAsUser:I = 0x75

.field static final blacklist TRANSACTION_isAutoRevokeWhitelisted:I = 0xca

.field static final blacklist TRANSACTION_isDeviceUpgrading:I = 0x80

.field static final greylist-max-o TRANSACTION_isFirstBoot:I = 0x7e

.field static final greylist-max-o TRANSACTION_isInstantApp:I = 0x93

.field static final greylist-max-o TRANSACTION_isOnlyCoreApps:I = 0x7f

.field static final blacklist TRANSACTION_isPackageAutoDisabled:I = 0xe7

.field static final greylist-max-o TRANSACTION_isPackageAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0x99

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySet:I = 0x8b

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySetExactly:I = 0x8c

.field static final greylist-max-o TRANSACTION_isPackageStateProtected:I = 0xb2

.field static final greylist-max-o TRANSACTION_isPackageSuspendedForUser:I = 0x43

.field static final greylist-max-o TRANSACTION_isProtectedBroadcast:I = 0x10

.field static final greylist-max-o TRANSACTION_isSafeMode:I = 0x62

.field static final greylist-max-o TRANSACTION_isStorageLow:I = 0x81

.field static final greylist-max-o TRANSACTION_isUidPrivileged:I = 0x1a

.field static final blacklist TRANSACTION_isUnknownSourcePackage:I = 0xe8

.field static final greylist-max-o TRANSACTION_logAppProcessStartIfNeeded:I = 0x54

.field static final blacklist TRANSACTION_makeProviderVisible:I = 0xcb

.field static final blacklist TRANSACTION_makeUidVisible:I = 0xcc

.field static final greylist-max-o TRANSACTION_movePackage:I = 0x70

.field static final blacklist TRANSACTION_movePackageToSd:I = 0x71

.field static final greylist-max-o TRANSACTION_movePrimaryStorage:I = 0x72

.field static final greylist-max-o TRANSACTION_notifyDexLoad:I = 0x65

.field static final greylist-max-o TRANSACTION_notifyPackageUse:I = 0x64

.field static final blacklist TRANSACTION_notifyPackagesReplacedReceived:I = 0xbb

.field static final blacklist TRANSACTION_overrideLabelAndIcon:I = 0x4d

.field static final blacklist TRANSACTION_performDexOptForADCP:I = 0x69

.field static final greylist-max-o TRANSACTION_performDexOptMode:I = 0x67

.field static final greylist-max-o TRANSACTION_performDexOptSecondary:I = 0x68

.field static final greylist-max-o TRANSACTION_queryContentProviders:I = 0x2a

.field static final greylist-max-o TRANSACTION_queryInstrumentation:I = 0x2c

.field static final greylist-max-o TRANSACTION_queryIntentActivities:I = 0x1e

.field static final greylist-max-o TRANSACTION_queryIntentActivityOptions:I = 0x1f

.field static final greylist-max-o TRANSACTION_queryIntentContentProviders:I = 0x23

.field static final greylist-max-o TRANSACTION_queryIntentReceivers:I = 0x20

.field static final greylist-max-o TRANSACTION_queryIntentServices:I = 0x22

.field static final blacklist TRANSACTION_queryProperty:I = 0xd0

.field static final greylist-max-o TRANSACTION_querySyncProviders:I = 0x29

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFiles:I = 0x6c

.field static final greylist-max-o TRANSACTION_registerDexModule:I = 0x66

.field static final greylist-max-o TRANSACTION_registerMoveCallback:I = 0x6e

.field static final blacklist TRANSACTION_removeEncPkgDir:I = 0xe6

.field static final blacklist TRANSACTION_removeEncUserDir:I = 0xe5

.field static final greylist-max-o TRANSACTION_removePermission:I = 0xc2

.field static final greylist-max-o TRANSACTION_replacePreferredActivity:I = 0x39

.field static final blacklist TRANSACTION_requestPackageChecksums:I = 0xbc

.field static final greylist-max-o TRANSACTION_resetApplicationPreferences:I = 0x35

.field static final greylist-max-o TRANSACTION_resolveContentProvider:I = 0x28

.field static final greylist-max-o TRANSACTION_resolveIntent:I = 0x1b

.field static final greylist-max-o TRANSACTION_resolveService:I = 0x21

.field static final greylist-max-o TRANSACTION_restoreDefaultApps:I = 0x48

.field static final blacklist TRANSACTION_restoreDomainVerification:I = 0x4a

.field static final blacklist TRANSACTION_restoreLabelAndIcon:I = 0x4e

.field static final greylist-max-o TRANSACTION_restorePreferredActivities:I = 0x46

.field static final blacklist TRANSACTION_semGetSystemFeatureLevel:I = 0xd3

.field static final blacklist TRANSACTION_semIsPermissionRevokedByUserFixed:I = 0xd6

.field static final blacklist TRANSACTION_sendDeviceCustomizationReadyBroadcast:I = 0xb3

.field static final greylist-max-o TRANSACTION_setApplicationCategoryHint:I = 0x2f

.field static final greylist-max-o TRANSACTION_setApplicationEnabledSetting:I = 0x52

.field static final blacklist TRANSACTION_setApplicationEnabledSettingWithList:I = 0xb6

.field static final greylist-max-o TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x82

.field static final greylist-max-o TRANSACTION_setBlockUninstallForUser:I = 0x87

.field static final greylist-max-o TRANSACTION_setComponentEnabledSetting:I = 0x4f

.field static final blacklist TRANSACTION_setComponentEnabledSettings:I = 0x50

.field static final blacklist TRANSACTION_setDistractingPackageRestrictionsAsUser:I = 0x40

.field static final greylist-max-o TRANSACTION_setHarmfulAppWarning:I = 0xa4

.field static final greylist-max-o TRANSACTION_setHomeActivity:I = 0x4c

.field static final greylist-max-o TRANSACTION_setInstallLocation:I = 0x73

.field static final greylist-max-o TRANSACTION_setInstallerPackageName:I = 0x2e

.field static final greylist-max-o TRANSACTION_setInstantAppCookie:I = 0x91

.field static final blacklist TRANSACTION_setKeepUninstalledPackages:I = 0xd1

.field static final greylist-max-o TRANSACTION_setLastChosenActivity:I = 0x37

.field static final blacklist TRANSACTION_setLicensePermissionsForMDM:I = 0xd7

.field static final blacklist TRANSACTION_setMimeGroup:I = 0xc6

.field static final greylist-max-o TRANSACTION_setPackageStoppedState:I = 0x56

.field static final greylist-max-o TRANSACTION_setPackagesSuspendedAsUser:I = 0x41

.field static final greylist-max-o TRANSACTION_setRequiredForSystemUser:I = 0x94

.field static final blacklist TRANSACTION_setRuntimePermissionsVersion:I = 0xba

.field static final blacklist TRANSACTION_setSplashScreenTheme:I = 0xc8

.field static final blacklist TRANSACTION_setSystemAppHiddenUntilInstalled:I = 0x84

.field static final blacklist TRANSACTION_setSystemAppInstallState:I = 0x85

.field static final blacklist TRANSACTION_setTrustTimebyStatusChanged:I = 0xd9

.field static final greylist-max-o TRANSACTION_setUpdateAvailable:I = 0x95

.field static final blacklist TRANSACTION_shouldAppSupportBadgeIcon:I = 0xeb

.field static final greylist-max-o TRANSACTION_unregisterMoveCallback:I = 0x6f

.field static final blacklist TRANSACTION_updateAppInfoForPackage:I = 0xe2

.field static final greylist-max-o TRANSACTION_updateIntentVerificationStatus:I = 0x7a

.field static final greylist-max-o TRANSACTION_verifyIntentFilter:I = 0x78

.field static final greylist-max-o TRANSACTION_verifyPendingInstall:I = 0x76


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 1183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1184
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1192
    if-nez p0, :cond_0

    .line 1193
    const/4 v0, 0x0

    return-object v0

    .line 1195
    :cond_0
    const-string v0, "android.content.pm.IPackageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1196
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 1197
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageManager;

    return-object v1

    .line 1199
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1208
    packed-switch p0, :pswitch_data_0

    .line 2152
    const/4 v0, 0x0

    return-object v0

    .line 2148
    :pswitch_0
    const-string/jumbo v0, "shouldAppSupportBadgeIcon"

    return-object v0

    .line 2144
    :pswitch_1
    const-string v0, "changeMonetizationBadgeState"

    return-object v0

    .line 2140
    :pswitch_2
    const-string v0, "getUnknownSourcePackagesAsUser"

    return-object v0

    .line 2136
    :pswitch_3
    const-string v0, "isUnknownSourcePackage"

    return-object v0

    .line 2132
    :pswitch_4
    const-string v0, "isPackageAutoDisabled"

    return-object v0

    .line 2128
    :pswitch_5
    const-string/jumbo v0, "removeEncPkgDir"

    return-object v0

    .line 2124
    :pswitch_6
    const-string/jumbo v0, "removeEncUserDir"

    return-object v0

    .line 2120
    :pswitch_7
    const-string v0, "createEncAppData"

    return-object v0

    .line 2116
    :pswitch_8
    const-string v0, "getPackageListForDualDarPolicy"

    return-object v0

    .line 2112
    :pswitch_9
    const-string/jumbo v0, "updateAppInfoForPackage"

    return-object v0

    .line 2108
    :pswitch_a
    const-string v0, "getRequestedRuntimePermissionsForMDM"

    return-object v0

    .line 2104
    :pswitch_b
    const-string v0, "applyRuntimePermissionsForAllApplicationsForMDM"

    return-object v0

    .line 2100
    :pswitch_c
    const-string v0, "applyRuntimePermissionsForMDM"

    return-object v0

    .line 2096
    :pswitch_d
    const-string v0, "clearPackagePreferredActivitiesAsUserForMDM"

    return-object v0

    .line 2092
    :pswitch_e
    const-string v0, "getGrantedPermissionsForMDM"

    return-object v0

    .line 2088
    :pswitch_f
    const-string v0, "getPackageGrantedPermissionsForMDM"

    return-object v0

    .line 2084
    :pswitch_10
    const-string v0, "checkASKSTarget"

    return-object v0

    .line 2080
    :pswitch_11
    const-string v0, "getUNvalueForASKS"

    return-object v0

    .line 2076
    :pswitch_12
    const-string/jumbo v0, "setTrustTimebyStatusChanged"

    return-object v0

    .line 2072
    :pswitch_13
    const-string v0, "checkDeletableListForASKS"

    return-object v0

    .line 2068
    :pswitch_14
    const-string/jumbo v0, "setLicensePermissionsForMDM"

    return-object v0

    .line 2064
    :pswitch_15
    const-string/jumbo v0, "semIsPermissionRevokedByUserFixed"

    return-object v0

    .line 2060
    :pswitch_16
    const-string v0, "getComponentMetadataForIconTray"

    return-object v0

    .line 2056
    :pswitch_17
    const-string v0, "getMetadataForIconTray"

    return-object v0

    .line 2052
    :pswitch_18
    const-string/jumbo v0, "semGetSystemFeatureLevel"

    return-object v0

    .line 2048
    :pswitch_19
    const-string v0, "canPackageQuery"

    return-object v0

    .line 2044
    :pswitch_1a
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 2040
    :pswitch_1b
    const-string/jumbo v0, "queryProperty"

    return-object v0

    .line 2036
    :pswitch_1c
    const-string v0, "getProperty"

    return-object v0

    .line 2032
    :pswitch_1d
    const-string v0, "holdLock"

    return-object v0

    .line 2028
    :pswitch_1e
    const-string v0, "getHoldLockToken"

    return-object v0

    .line 2024
    :pswitch_1f
    const-string/jumbo v0, "makeUidVisible"

    return-object v0

    .line 2020
    :pswitch_20
    const-string/jumbo v0, "makeProviderVisible"

    return-object v0

    .line 2016
    :pswitch_21
    const-string v0, "isAutoRevokeWhitelisted"

    return-object v0

    .line 2012
    :pswitch_22
    const-string v0, "getMimeGroup"

    return-object v0

    .line 2008
    :pswitch_23
    const-string/jumbo v0, "setSplashScreenTheme"

    return-object v0

    .line 2004
    :pswitch_24
    const-string v0, "getSplashScreenTheme"

    return-object v0

    .line 2000
    :pswitch_25
    const-string/jumbo v0, "setMimeGroup"

    return-object v0

    .line 1996
    :pswitch_26
    const-string v0, "checkUidPermission"

    return-object v0

    .line 1992
    :pswitch_27
    const-string v0, "grantRuntimePermission"

    return-object v0

    .line 1988
    :pswitch_28
    const-string v0, "checkPermission"

    return-object v0

    .line 1984
    :pswitch_29
    const-string/jumbo v0, "removePermission"

    return-object v0

    .line 1980
    :pswitch_2a
    const-string v0, "addPermissionAsync"

    return-object v0

    .line 1976
    :pswitch_2b
    const-string v0, "addPermission"

    return-object v0

    .line 1972
    :pswitch_2c
    const-string v0, "getPermissionGroupInfo"

    return-object v0

    .line 1968
    :pswitch_2d
    const-string v0, "getAppOpPermissionPackages"

    return-object v0

    .line 1964
    :pswitch_2e
    const-string v0, "getLaunchIntentSenderForPackage"

    return-object v0

    .line 1960
    :pswitch_2f
    const-string/jumbo v0, "requestPackageChecksums"

    return-object v0

    .line 1956
    :pswitch_30
    const-string/jumbo v0, "notifyPackagesReplacedReceived"

    return-object v0

    .line 1952
    :pswitch_31
    const-string/jumbo v0, "setRuntimePermissionsVersion"

    return-object v0

    .line 1948
    :pswitch_32
    const-string v0, "getRuntimePermissionsVersion"

    return-object v0

    .line 1944
    :pswitch_33
    const-string v0, "cancelEMPHandlerSendPendingBroadcast"

    return-object v0

    .line 1940
    :pswitch_34
    const-string v0, "getProgressionOfPackageChanged"

    return-object v0

    .line 1936
    :pswitch_35
    const-string/jumbo v0, "setApplicationEnabledSettingWithList"

    return-object v0

    .line 1932
    :pswitch_36
    const-string v0, "getModuleInfo"

    return-object v0

    .line 1928
    :pswitch_37
    const-string v0, "getInstalledModules"

    return-object v0

    .line 1924
    :pswitch_38
    const-string/jumbo v0, "sendDeviceCustomizationReadyBroadcast"

    return-object v0

    .line 1920
    :pswitch_39
    const-string v0, "isPackageStateProtected"

    return-object v0

    .line 1916
    :pswitch_3a
    const-string v0, "getContentCaptureServicePackageName"

    return-object v0

    .line 1912
    :pswitch_3b
    const-string v0, "getIncidentReportApproverPackageName"

    return-object v0

    .line 1908
    :pswitch_3c
    const-string v0, "getSetupWizardPackageName"

    return-object v0

    .line 1904
    :pswitch_3d
    const-string v0, "getSystemCaptionsServicePackageName"

    return-object v0

    .line 1900
    :pswitch_3e
    const-string v0, "getAppPredictionServicePackageName"

    return-object v0

    .line 1896
    :pswitch_3f
    const-string v0, "getWellbeingPackageName"

    return-object v0

    .line 1892
    :pswitch_40
    const-string v0, "getRotationResolverPackageName"

    return-object v0

    .line 1888
    :pswitch_41
    const-string v0, "getAttentionServicePackageName"

    return-object v0

    .line 1884
    :pswitch_42
    const-string v0, "getSystemTextClassifierPackageName"

    return-object v0

    .line 1880
    :pswitch_43
    const-string v0, "getDefaultTextClassifierPackageName"

    return-object v0

    .line 1876
    :pswitch_44
    const-string v0, "hasUidSigningCertificate"

    return-object v0

    .line 1872
    :pswitch_45
    const-string v0, "hasSigningCertificate"

    return-object v0

    .line 1868
    :pswitch_46
    const-string v0, "getHarmfulAppWarning"

    return-object v0

    .line 1864
    :pswitch_47
    const-string/jumbo v0, "setHarmfulAppWarning"

    return-object v0

    .line 1860
    :pswitch_48
    const-string v0, "getArtManager"

    return-object v0

    .line 1856
    :pswitch_49
    const-string v0, "getInstantAppAndroidId"

    return-object v0

    .line 1852
    :pswitch_4a
    const-string v0, "getInstantAppInstallerComponent"

    return-object v0

    .line 1848
    :pswitch_4b
    const-string v0, "getInstantAppResolverSettingsComponent"

    return-object v0

    .line 1844
    :pswitch_4c
    const-string v0, "getInstantAppResolverComponent"

    return-object v0

    .line 1840
    :pswitch_4d
    const-string v0, "deletePreloadsFileCache"

    return-object v0

    .line 1836
    :pswitch_4e
    const-string v0, "canRequestPackageInstalls"

    return-object v0

    .line 1832
    :pswitch_4f
    const-string v0, "getDeclaredSharedLibraries"

    return-object v0

    .line 1828
    :pswitch_50
    const-string v0, "getSharedLibraries"

    return-object v0

    .line 1824
    :pswitch_51
    const-string v0, "getInstallReason"

    return-object v0

    .line 1820
    :pswitch_52
    const-string v0, "isPackageDeviceAdminOnAnyUser"

    return-object v0

    .line 1816
    :pswitch_53
    const-string v0, "getChangedPackages"

    return-object v0

    .line 1812
    :pswitch_54
    const-string v0, "getSharedSystemSharedLibraryPackageName"

    return-object v0

    .line 1808
    :pswitch_55
    const-string v0, "getServicesSystemSharedLibraryPackageName"

    return-object v0

    .line 1804
    :pswitch_56
    const-string/jumbo v0, "setUpdateAvailable"

    return-object v0

    .line 1800
    :pswitch_57
    const-string/jumbo v0, "setRequiredForSystemUser"

    return-object v0

    .line 1796
    :pswitch_58
    const-string v0, "isInstantApp"

    return-object v0

    .line 1792
    :pswitch_59
    const-string v0, "getInstantAppIcon"

    return-object v0

    .line 1788
    :pswitch_5a
    const-string/jumbo v0, "setInstantAppCookie"

    return-object v0

    .line 1784
    :pswitch_5b
    const-string v0, "getInstantAppCookie"

    return-object v0

    .line 1780
    :pswitch_5c
    const-string v0, "getInstantApps"

    return-object v0

    .line 1776
    :pswitch_5d
    const-string v0, "getSdkSandboxPackageName"

    return-object v0

    .line 1772
    :pswitch_5e
    const-string v0, "getPermissionControllerPackageName"

    return-object v0

    .line 1768
    :pswitch_5f
    const-string v0, "isPackageSignedByKeySetExactly"

    return-object v0

    .line 1764
    :pswitch_60
    const-string v0, "isPackageSignedByKeySet"

    return-object v0

    .line 1760
    :pswitch_61
    const-string v0, "getSigningKeySet"

    return-object v0

    .line 1756
    :pswitch_62
    const-string v0, "getKeySetByAlias"

    return-object v0

    .line 1752
    :pswitch_63
    const-string v0, "getBlockUninstallForUser"

    return-object v0

    .line 1748
    :pswitch_64
    const-string/jumbo v0, "setBlockUninstallForUser"

    return-object v0

    .line 1744
    :pswitch_65
    const-string v0, "getPackageInstaller"

    return-object v0

    .line 1740
    :pswitch_66
    const-string/jumbo v0, "setSystemAppInstallState"

    return-object v0

    .line 1736
    :pswitch_67
    const-string/jumbo v0, "setSystemAppHiddenUntilInstalled"

    return-object v0

    .line 1732
    :pswitch_68
    const-string v0, "getApplicationHiddenSettingAsUser"

    return-object v0

    .line 1728
    :pswitch_69
    const-string/jumbo v0, "setApplicationHiddenSettingAsUser"

    return-object v0

    .line 1724
    :pswitch_6a
    const-string v0, "isStorageLow"

    return-object v0

    .line 1720
    :pswitch_6b
    const-string v0, "isDeviceUpgrading"

    return-object v0

    .line 1716
    :pswitch_6c
    const-string v0, "isOnlyCoreApps"

    return-object v0

    .line 1712
    :pswitch_6d
    const-string v0, "isFirstBoot"

    return-object v0

    .line 1708
    :pswitch_6e
    const-string v0, "getVerifierDeviceIdentity"

    return-object v0

    .line 1704
    :pswitch_6f
    const-string v0, "getAllIntentFilters"

    return-object v0

    .line 1700
    :pswitch_70
    const-string v0, "getIntentFilterVerifications"

    return-object v0

    .line 1696
    :pswitch_71
    const-string/jumbo v0, "updateIntentVerificationStatus"

    return-object v0

    .line 1692
    :pswitch_72
    const-string v0, "getIntentVerificationStatus"

    return-object v0

    .line 1688
    :pswitch_73
    const-string/jumbo v0, "verifyIntentFilter"

    return-object v0

    .line 1684
    :pswitch_74
    const-string v0, "extendVerificationTimeout"

    return-object v0

    .line 1680
    :pswitch_75
    const-string/jumbo v0, "verifyPendingInstall"

    return-object v0

    .line 1676
    :pswitch_76
    const-string v0, "installExistingPackageAsUser"

    return-object v0

    .line 1672
    :pswitch_77
    const-string v0, "getInstallLocation"

    return-object v0

    .line 1668
    :pswitch_78
    const-string/jumbo v0, "setInstallLocation"

    return-object v0

    .line 1664
    :pswitch_79
    const-string/jumbo v0, "movePrimaryStorage"

    return-object v0

    .line 1660
    :pswitch_7a
    const-string/jumbo v0, "movePackageToSd"

    return-object v0

    .line 1656
    :pswitch_7b
    const-string/jumbo v0, "movePackage"

    return-object v0

    .line 1652
    :pswitch_7c
    const-string/jumbo v0, "unregisterMoveCallback"

    return-object v0

    .line 1648
    :pswitch_7d
    const-string/jumbo v0, "registerMoveCallback"

    return-object v0

    .line 1644
    :pswitch_7e
    const-string v0, "getMoveStatus"

    return-object v0

    .line 1640
    :pswitch_7f
    const-string/jumbo v0, "reconcileSecondaryDexFiles"

    return-object v0

    .line 1636
    :pswitch_80
    const-string v0, "forceDexOpt"

    return-object v0

    .line 1632
    :pswitch_81
    const-string v0, "dumpProfiles"

    return-object v0

    .line 1628
    :pswitch_82
    const-string/jumbo v0, "performDexOptForADCP"

    return-object v0

    .line 1624
    :pswitch_83
    const-string/jumbo v0, "performDexOptSecondary"

    return-object v0

    .line 1620
    :pswitch_84
    const-string/jumbo v0, "performDexOptMode"

    return-object v0

    .line 1616
    :pswitch_85
    const-string/jumbo v0, "registerDexModule"

    return-object v0

    .line 1612
    :pswitch_86
    const-string/jumbo v0, "notifyDexLoad"

    return-object v0

    .line 1608
    :pswitch_87
    const-string/jumbo v0, "notifyPackageUse"

    return-object v0

    .line 1604
    :pswitch_88
    const-string v0, "hasSystemUidErrors"

    return-object v0

    .line 1600
    :pswitch_89
    const-string v0, "isSafeMode"

    return-object v0

    .line 1596
    :pswitch_8a
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1592
    :pswitch_8b
    const-string v0, "hasSystemFeature"

    return-object v0

    .line 1588
    :pswitch_8c
    const-string v0, "getSystemAvailableFeatures"

    return-object v0

    .line 1584
    :pswitch_8d
    const-string v0, "getSystemSharedLibraryNames"

    return-object v0

    .line 1580
    :pswitch_8e
    const-string v0, "getPackageSizeInfo"

    return-object v0

    .line 1576
    :pswitch_8f
    const-string v0, "clearApplicationProfileData"

    return-object v0

    .line 1572
    :pswitch_90
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1568
    :pswitch_91
    const-string v0, "deleteApplicationCacheFilesAsUser"

    return-object v0

    .line 1564
    :pswitch_92
    const-string v0, "deleteApplicationCacheFiles"

    return-object v0

    .line 1560
    :pswitch_93
    const-string v0, "freeStorage"

    return-object v0

    .line 1556
    :pswitch_94
    const-string v0, "freeStorageAndNotify"

    return-object v0

    .line 1552
    :pswitch_95
    const-string/jumbo v0, "setPackageStoppedState"

    return-object v0

    .line 1548
    :pswitch_96
    const-string v0, "flushPackageRestrictionsAsUser"

    return-object v0

    .line 1544
    :pswitch_97
    const-string v0, "logAppProcessStartIfNeeded"

    return-object v0

    .line 1540
    :pswitch_98
    const-string v0, "getApplicationEnabledSetting"

    return-object v0

    .line 1536
    :pswitch_99
    const-string/jumbo v0, "setApplicationEnabledSetting"

    return-object v0

    .line 1532
    :pswitch_9a
    const-string v0, "getComponentEnabledSetting"

    return-object v0

    .line 1528
    :pswitch_9b
    const-string/jumbo v0, "setComponentEnabledSettings"

    return-object v0

    .line 1524
    :pswitch_9c
    const-string/jumbo v0, "setComponentEnabledSetting"

    return-object v0

    .line 1520
    :pswitch_9d
    const-string/jumbo v0, "restoreLabelAndIcon"

    return-object v0

    .line 1516
    :pswitch_9e
    const-string/jumbo v0, "overrideLabelAndIcon"

    return-object v0

    .line 1512
    :pswitch_9f
    const-string/jumbo v0, "setHomeActivity"

    return-object v0

    .line 1508
    :pswitch_a0
    const-string v0, "getHomeActivities"

    return-object v0

    .line 1504
    :pswitch_a1
    const-string/jumbo v0, "restoreDomainVerification"

    return-object v0

    .line 1500
    :pswitch_a2
    const-string v0, "getDomainVerificationBackup"

    return-object v0

    .line 1496
    :pswitch_a3
    const-string/jumbo v0, "restoreDefaultApps"

    return-object v0

    .line 1492
    :pswitch_a4
    const-string v0, "getDefaultAppsBackup"

    return-object v0

    .line 1488
    :pswitch_a5
    const-string/jumbo v0, "restorePreferredActivities"

    return-object v0

    .line 1484
    :pswitch_a6
    const-string v0, "getPreferredActivityBackup"

    return-object v0

    .line 1480
    :pswitch_a7
    const-string v0, "getSuspendedPackageAppExtras"

    return-object v0

    .line 1476
    :pswitch_a8
    const-string v0, "isPackageSuspendedForUser"

    return-object v0

    .line 1472
    :pswitch_a9
    const-string v0, "getUnsuspendablePackagesForUser"

    return-object v0

    .line 1468
    :pswitch_aa
    const-string/jumbo v0, "setPackagesSuspendedAsUser"

    return-object v0

    .line 1464
    :pswitch_ab
    const-string/jumbo v0, "setDistractingPackageRestrictionsAsUser"

    return-object v0

    .line 1460
    :pswitch_ac
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 1456
    :pswitch_ad
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 1452
    :pswitch_ae
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 1448
    :pswitch_af
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 1444
    :pswitch_b0
    const-string v0, "getPreferredActivities"

    return-object v0

    .line 1440
    :pswitch_b1
    const-string v0, "clearPackagePreferredActivities"

    return-object v0

    .line 1436
    :pswitch_b2
    const-string/jumbo v0, "replacePreferredActivity"

    return-object v0

    .line 1432
    :pswitch_b3
    const-string v0, "addPreferredActivity"

    return-object v0

    .line 1428
    :pswitch_b4
    const-string/jumbo v0, "setLastChosenActivity"

    return-object v0

    .line 1424
    :pswitch_b5
    const-string v0, "getLastChosenActivity"

    return-object v0

    .line 1420
    :pswitch_b6
    const-string/jumbo v0, "resetApplicationPreferences"

    return-object v0

    .line 1416
    :pswitch_b7
    const-string v0, "getInstallSourceInfo"

    return-object v0

    .line 1412
    :pswitch_b8
    const-string v0, "getInstallerPackageName"

    return-object v0

    .line 1408
    :pswitch_b9
    const-string v0, "deleteExistingPackageAsUser"

    return-object v0

    .line 1404
    :pswitch_ba
    const-string v0, "deletePackageVersioned"

    return-object v0

    .line 1400
    :pswitch_bb
    const-string v0, "deletePackageAsUser"

    return-object v0

    .line 1396
    :pswitch_bc
    const-string/jumbo v0, "setApplicationCategoryHint"

    return-object v0

    .line 1392
    :pswitch_bd
    const-string/jumbo v0, "setInstallerPackageName"

    return-object v0

    .line 1388
    :pswitch_be
    const-string v0, "finishPackageInstall"

    return-object v0

    .line 1384
    :pswitch_bf
    const-string/jumbo v0, "queryInstrumentation"

    return-object v0

    .line 1380
    :pswitch_c0
    const-string v0, "getInstrumentationInfo"

    return-object v0

    .line 1376
    :pswitch_c1
    const-string/jumbo v0, "queryContentProviders"

    return-object v0

    .line 1372
    :pswitch_c2
    const-string/jumbo v0, "querySyncProviders"

    return-object v0

    .line 1368
    :pswitch_c3
    const-string/jumbo v0, "resolveContentProvider"

    return-object v0

    .line 1364
    :pswitch_c4
    const-string v0, "getPersistentApplications"

    return-object v0

    .line 1360
    :pswitch_c5
    const-string v0, "getInstalledApplications"

    return-object v0

    .line 1356
    :pswitch_c6
    const-string v0, "getPackagesHoldingPermissions"

    return-object v0

    .line 1352
    :pswitch_c7
    const-string v0, "getInstalledPackages"

    return-object v0

    .line 1348
    :pswitch_c8
    const-string/jumbo v0, "queryIntentContentProviders"

    return-object v0

    .line 1344
    :pswitch_c9
    const-string/jumbo v0, "queryIntentServices"

    return-object v0

    .line 1340
    :pswitch_ca
    const-string/jumbo v0, "resolveService"

    return-object v0

    .line 1336
    :pswitch_cb
    const-string/jumbo v0, "queryIntentReceivers"

    return-object v0

    .line 1332
    :pswitch_cc
    const-string/jumbo v0, "queryIntentActivityOptions"

    return-object v0

    .line 1328
    :pswitch_cd
    const-string/jumbo v0, "queryIntentActivities"

    return-object v0

    .line 1324
    :pswitch_ce
    const-string v0, "canForwardTo"

    return-object v0

    .line 1320
    :pswitch_cf
    const-string v0, "findPersistentPreferredActivity"

    return-object v0

    .line 1316
    :pswitch_d0
    const-string/jumbo v0, "resolveIntent"

    return-object v0

    .line 1312
    :pswitch_d1
    const-string v0, "isUidPrivileged"

    return-object v0

    .line 1308
    :pswitch_d2
    const-string v0, "getPrivateFlagsForUid"

    return-object v0

    .line 1304
    :pswitch_d3
    const-string v0, "getFlagsForUid"

    return-object v0

    .line 1300
    :pswitch_d4
    const-string v0, "getUidForSharedUser"

    return-object v0

    .line 1296
    :pswitch_d5
    const-string v0, "getNamesForUids"

    return-object v0

    .line 1292
    :pswitch_d6
    const-string v0, "getNameForUid"

    return-object v0

    .line 1288
    :pswitch_d7
    const-string v0, "getPackagesForUid"

    return-object v0

    .line 1284
    :pswitch_d8
    const-string v0, "getAllPackages"

    return-object v0

    .line 1280
    :pswitch_d9
    const-string v0, "checkUidSignatures"

    return-object v0

    .line 1276
    :pswitch_da
    const-string v0, "checkSignatures"

    return-object v0

    .line 1272
    :pswitch_db
    const-string v0, "isProtectedBroadcast"

    return-object v0

    .line 1268
    :pswitch_dc
    const-string v0, "getProviderInfo"

    return-object v0

    .line 1264
    :pswitch_dd
    const-string v0, "getServiceInfo"

    return-object v0

    .line 1260
    :pswitch_de
    const-string v0, "getReceiverInfo"

    return-object v0

    .line 1256
    :pswitch_df
    const-string v0, "activitySupportsIntent"

    return-object v0

    .line 1252
    :pswitch_e0
    const-string v0, "getActivityInfo"

    return-object v0

    .line 1248
    :pswitch_e1
    const-string v0, "getTargetSdkVersion"

    return-object v0

    .line 1244
    :pswitch_e2
    const-string v0, "getApplicationInfo"

    return-object v0

    .line 1240
    :pswitch_e3
    const-string v0, "canonicalToCurrentPackageNames"

    return-object v0

    .line 1236
    :pswitch_e4
    const-string v0, "currentToCanonicalPackageNames"

    return-object v0

    .line 1232
    :pswitch_e5
    const-string v0, "getPackageGids"

    return-object v0

    .line 1228
    :pswitch_e6
    const-string v0, "getPackageUid"

    return-object v0

    .line 1224
    :pswitch_e7
    const-string v0, "getPackageInfoVersioned"

    return-object v0

    .line 1220
    :pswitch_e8
    const-string v0, "getPackageInfo"

    return-object v0

    .line 1216
    :pswitch_e9
    const-string v0, "isPackageAvailable"

    return-object v0

    .line 1212
    :pswitch_ea
    const-string v0, "checkPackageStartable"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 2
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 3442
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3444
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3445
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1203
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 9718
    const/16 v0, 0xea

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2159
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.content.pm.IPackageManager"

    .line 2164
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 2165
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 2175
    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_1

    .line 4909
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2171
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    return v14

    .line 4900
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4901
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4902
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->shouldAppSupportBadgeIcon(Ljava/lang/String;)Z

    move-result v1

    .line 4903
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4904
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4905
    goto/16 :goto_1

    .line 4889
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4891
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4892
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4893
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4895
    goto/16 :goto_1

    .line 4877
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 4879
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4880
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4881
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getUnknownSourcePackagesAsUser(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 4882
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4883
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4884
    goto/16 :goto_1

    .line 4867
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4868
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4869
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->isUnknownSourcePackage(Ljava/lang/String;)Z

    move-result v1

    .line 4870
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4871
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4872
    goto/16 :goto_1

    .line 4855
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4857
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4858
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4859
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v2

    .line 4860
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4861
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4862
    goto/16 :goto_1

    .line 4843
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4845
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4846
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4847
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v2

    .line 4848
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4849
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4850
    goto/16 :goto_1

    .line 4833
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4834
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4835
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->removeEncUserDir(I)Z

    move-result v1

    .line 4836
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4837
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4838
    goto/16 :goto_1

    .line 4821
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4823
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4824
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4825
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->createEncAppData(Ljava/lang/String;I)Z

    move-result v2

    .line 4826
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4827
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4828
    goto/16 :goto_1

    .line 4811
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4812
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4813
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4814
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4815
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4816
    goto/16 :goto_1

    .line 4799
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4801
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4802
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4803
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4804
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4805
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4806
    goto/16 :goto_1

    .line 4789
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4790
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4791
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4792
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4793
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4794
    goto/16 :goto_1

    .line 4777
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4779
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4780
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4781
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    move-result v2

    .line 4782
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4783
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4784
    goto/16 :goto_1

    .line 4761
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4763
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4765
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4767
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4768
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4769
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v4

    .line 4770
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4771
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4772
    goto/16 :goto_1

    .line 4750
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4752
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4753
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4754
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V

    .line 4755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4756
    goto/16 :goto_1

    .line 4740
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4741
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4742
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4743
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4744
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4745
    goto/16 :goto_1

    .line 4730
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4731
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4732
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4733
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4734
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4735
    goto/16 :goto_1

    .line 4720
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4721
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4722
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->checkASKSTarget(I)[Ljava/lang/String;

    move-result-object v1

    .line 4723
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4724
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4725
    goto/16 :goto_1

    .line 4712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getUNvalueForASKS()Ljava/lang/String;

    move-result-object v0

    .line 4713
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4714
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4715
    goto/16 :goto_1

    .line 4706
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->setTrustTimebyStatusChanged()V

    .line 4707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4708
    goto/16 :goto_1

    .line 4700
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->checkDeletableListForASKS()V

    .line 4701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4702
    goto/16 :goto_1

    .line 4691
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4692
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4693
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    move-result v1

    .line 4694
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4695
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4696
    goto/16 :goto_1

    .line 4677
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4679
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4681
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4682
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4683
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 4684
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4685
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4686
    goto/16 :goto_1

    .line 4661
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4663
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4665
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4667
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4668
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4669
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 4670
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4671
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4672
    goto/16 :goto_1

    .line 4644
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4646
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4648
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4650
    .local v2, "_arg2":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4651
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4652
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Z

    move-result v4

    .line 4653
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4654
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4655
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4656
    goto/16 :goto_1

    .line 4634
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4635
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4636
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 4637
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4638
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    goto/16 :goto_1

    .line 4620
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4622
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4624
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4625
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4626
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 4627
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4628
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4629
    goto/16 :goto_1

    .line 4611
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4612
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4613
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->setKeepUninstalledPackages(Ljava/util/List;)V

    .line 4614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4615
    goto/16 :goto_1

    .line 4599
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4601
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4602
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4603
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 4604
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4605
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4606
    goto/16 :goto_1

    .line 4585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4587
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4589
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4590
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4591
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v3

    .line 4592
    .local v3, "_result":Landroid/content/pm/PackageManager$Property;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4593
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4594
    goto/16 :goto_1

    .line 4574
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/PackageManager$Property;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4576
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4577
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4578
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 4579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4580
    goto/16 :goto_1

    .line 4566
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4567
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4568
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4569
    goto/16 :goto_1

    .line 4556
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4558
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4559
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4560
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->makeUidVisible(II)V

    .line 4561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4562
    goto/16 :goto_1

    .line 4545
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4547
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4548
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4549
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->makeProviderVisible(ILjava/lang/String;)V

    .line 4550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4551
    goto/16 :goto_1

    .line 4535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4536
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4537
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->isAutoRevokeWhitelisted(Ljava/lang/String;)Z

    move-result v1

    .line 4538
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4539
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4540
    goto/16 :goto_1

    .line 4523
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4525
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4526
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4527
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4528
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4529
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4530
    goto/16 :goto_1

    .line 4510
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4512
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4514
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4515
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4516
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4518
    goto/16 :goto_1

    .line 4498
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4500
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4501
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4502
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4503
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4504
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4505
    goto/16 :goto_1

    .line 4485
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4487
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4489
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4490
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4491
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    goto/16 :goto_1

    .line 4473
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4475
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4476
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4477
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    .line 4478
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4479
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4480
    goto/16 :goto_1

    .line 4460
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4462
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4464
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4465
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4466
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4468
    goto/16 :goto_1

    .line 4446
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4448
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4450
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4451
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4452
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 4453
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4454
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    goto/16 :goto_1

    .line 4437
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4438
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4439
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 4440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4441
    goto/16 :goto_1

    .line 4427
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 4428
    .local v0, "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4429
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v1

    .line 4430
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4431
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4432
    goto/16 :goto_1

    .line 4417
    .end local v0    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v1    # "_result":Z
    :pswitch_2c
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 4418
    .restart local v0    # "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4419
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v1

    .line 4420
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4421
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4422
    goto/16 :goto_1

    .line 4405
    .end local v0    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4407
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4408
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4409
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    .line 4410
    .local v2, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4411
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4412
    goto/16 :goto_1

    .line 4395
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4396
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4397
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4398
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4399
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4400
    goto/16 :goto_1

    .line 4379
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4381
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4383
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4385
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4386
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4387
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v4

    .line 4388
    .local v4, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4389
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4390
    goto/16 :goto_1

    .line 4357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/content/IntentSender;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4359
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 4361
    .local v15, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4363
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 4365
    .local v17, "_arg3":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4366
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v18

    .line 4368
    .local v18, "_arg4":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v19

    .line 4370
    .local v19, "_arg5":Landroid/content/pm/IOnChecksumsReadyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 4371
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4372
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v21, v7

    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .local v21, "cl":Ljava/lang/ClassLoader;
    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IPackageManager$Stub;->requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V

    .line 4373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4374
    goto/16 :goto_1

    .line 4348
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/util/List;
    .end local v19    # "_arg5":Landroid/content/pm/IOnChecksumsReadyListener;
    .end local v20    # "_arg6":I
    .end local v21    # "cl":Ljava/lang/ClassLoader;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 4349
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4350
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->notifyPackagesReplacedReceived([Ljava/lang/String;)V

    .line 4351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4352
    goto/16 :goto_1

    .line 4337
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4339
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4340
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4341
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setRuntimePermissionsVersion(II)V

    .line 4342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    goto/16 :goto_1

    .line 4327
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4328
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4329
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionsVersion(I)I

    move-result v1

    .line 4330
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4331
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4332
    goto/16 :goto_1

    .line 4320
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->cancelEMPHandlerSendPendingBroadcast()V

    .line 4321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4322
    goto/16 :goto_1

    .line 4313
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getProgressionOfPackageChanged()I

    move-result v0

    .line 4314
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4316
    goto/16 :goto_1

    .line 4293
    .end local v0    # "_result":I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 4295
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4297
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4299
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 4301
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 4303
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 4305
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 4306
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4307
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    .line 4308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4309
    goto/16 :goto_1

    .line 4281
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4283
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4284
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4285
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v2

    .line 4286
    .local v2, "_result":Landroid/content/pm/ModuleInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4287
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4288
    goto/16 :goto_1

    .line 4271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ModuleInfo;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4272
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4273
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getInstalledModules(I)Ljava/util/List;

    move-result-object v1

    .line 4274
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4275
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4276
    goto/16 :goto_1

    .line 4264
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->sendDeviceCustomizationReadyBroadcast()V

    .line 4265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    goto/16 :goto_1

    .line 4253
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4255
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4256
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4257
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v2

    .line 4258
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4259
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4260
    goto/16 :goto_1

    .line 4245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getContentCaptureServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4246
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4247
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4248
    goto/16 :goto_1

    .line 4238
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getIncidentReportApproverPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4239
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4240
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4241
    goto/16 :goto_1

    .line 4231
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4232
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4233
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4234
    goto/16 :goto_1

    .line 4224
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4225
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4226
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    goto/16 :goto_1

    .line 4217
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4218
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4219
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4220
    goto/16 :goto_1

    .line 4210
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4211
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4212
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4213
    goto/16 :goto_1

    .line 4203
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4204
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4205
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4206
    goto/16 :goto_1

    .line 4196
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4197
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4198
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4199
    goto/16 :goto_1

    .line 4189
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4190
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4191
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4192
    goto/16 :goto_1

    .line 4182
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4183
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4184
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4185
    goto/16 :goto_1

    .line 4169
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4171
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4173
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4174
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4175
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->hasUidSigningCertificate(I[BI)Z

    move-result v3

    .line 4176
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4177
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4178
    goto/16 :goto_1

    .line 4155
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4157
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4159
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4160
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4161
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v3

    .line 4162
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4163
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4164
    goto/16 :goto_1

    .line 4137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4139
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4140
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4141
    invoke-virtual {v9, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4142
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4143
    if-eqz v3, :cond_1

    .line 4144
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 4145
    invoke-static {v3, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1

    .line 4148
    :cond_1
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4150
    goto/16 :goto_1

    .line 4124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4126
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4128
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4129
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4130
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4132
    goto/16 :goto_1

    .line 4116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":I
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    .line 4117
    .local v0, "_result":Landroid/content/pm/dex/IArtManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4119
    goto/16 :goto_1

    .line 4105
    .end local v0    # "_result":Landroid/content/pm/dex/IArtManager;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4107
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4108
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4109
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4110
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4111
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4112
    goto/16 :goto_1

    .line 4097
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4098
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4099
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4100
    goto/16 :goto_1

    .line 4090
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4091
    .restart local v0    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4092
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4093
    goto/16 :goto_1

    .line 4083
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4084
    .restart local v0    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4085
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4086
    goto/16 :goto_1

    .line 4077
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->deletePreloadsFileCache()V

    .line 4078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4079
    goto/16 :goto_1

    .line 4066
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4068
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4069
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4070
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v2

    .line 4071
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4072
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4073
    goto/16 :goto_1

    .line 4052
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4054
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4056
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4057
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4058
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 4059
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4060
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4061
    goto/16 :goto_1

    .line 4038
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4040
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4042
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4043
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4044
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 4045
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4047
    goto/16 :goto_1

    .line 4026
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4028
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4029
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4030
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallReason(Ljava/lang/String;I)I

    move-result v2

    .line 4031
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4032
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4033
    goto/16 :goto_1

    .line 4016
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4018
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v1

    .line 4019
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4020
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4021
    goto/16 :goto_1

    .line 4004
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4006
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4007
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v2

    .line 4009
    .local v2, "_result":Landroid/content/pm/ChangedPackages;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4010
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4011
    goto/16 :goto_1

    .line 3996
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ChangedPackages;
    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3997
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3998
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3999
    goto/16 :goto_1

    .line 3989
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3990
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3991
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3992
    goto/16 :goto_1

    .line 3979
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3981
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3982
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3983
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 3984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3985
    goto/16 :goto_1

    .line 3967
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3969
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3970
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3971
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v2

    .line 3972
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3973
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3974
    goto/16 :goto_1

    .line 3955
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3957
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3958
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3959
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isInstantApp(Ljava/lang/String;I)Z

    move-result v2

    .line 3960
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3961
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3962
    goto/16 :goto_1

    .line 3943
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3945
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3946
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3947
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3948
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3949
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3950
    goto/16 :goto_1

    .line 3929
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3931
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3933
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3934
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3935
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v3

    .line 3936
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3937
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3938
    goto/16 :goto_1

    .line 3917
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3919
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3920
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3922
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3923
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3924
    goto/16 :goto_1

    .line 3907
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3908
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3909
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 3910
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3911
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3912
    goto/16 :goto_1

    .line 3899
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3900
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3901
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3902
    goto/16 :goto_1

    .line 3892
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3893
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3894
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3895
    goto/16 :goto_1

    .line 3881
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3883
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/KeySet;

    .line 3884
    .local v1, "_arg1":Landroid/content/pm/KeySet;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3885
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v2

    .line 3886
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3887
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3888
    goto/16 :goto_1

    .line 3869
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/KeySet;
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3871
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/KeySet;

    .line 3872
    .restart local v1    # "_arg1":Landroid/content/pm/KeySet;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3873
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v2

    .line 3874
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3875
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3876
    goto/16 :goto_1

    .line 3859
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/KeySet;
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3860
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3861
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v1

    .line 3862
    .local v1, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3863
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3864
    goto/16 :goto_1

    .line 3847
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/KeySet;
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3849
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3850
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3851
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v2

    .line 3852
    .local v2, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3853
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3854
    goto/16 :goto_1

    .line 3835
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3837
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3838
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3839
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 3840
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3841
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3842
    goto/16 :goto_1

    .line 3821
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3823
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3825
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3826
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3827
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 3828
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3829
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3830
    goto/16 :goto_1

    .line 3813
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 3814
    .local v0, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3816
    goto/16 :goto_1

    .line 3800
    .end local v0    # "_result":Landroid/content/pm/IPackageInstaller;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3802
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3804
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3805
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3806
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    move-result v3

    .line 3807
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3808
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3809
    goto/16 :goto_1

    .line 3789
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3791
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3792
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3793
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V

    .line 3794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3795
    goto/16 :goto_1

    .line 3777
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3779
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3780
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3781
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v2

    .line 3782
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3783
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3784
    goto/16 :goto_1

    .line 3763
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3765
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3767
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3768
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3769
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 3770
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3771
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3772
    goto/16 :goto_1

    .line 3755
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v0

    .line 3756
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3757
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3758
    goto/16 :goto_1

    .line 3748
    .end local v0    # "_result":Z
    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isDeviceUpgrading()Z

    move-result v0

    .line 3749
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3750
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3751
    goto/16 :goto_1

    .line 3741
    .end local v0    # "_result":Z
    :pswitch_6d
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v0

    .line 3742
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3743
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3744
    goto/16 :goto_1

    .line 3734
    .end local v0    # "_result":Z
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v0

    .line 3735
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3736
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3737
    goto/16 :goto_1

    .line 3727
    .end local v0    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    .line 3728
    .local v0, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3729
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3730
    goto/16 :goto_1

    .line 3718
    .end local v0    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3719
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3720
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 3721
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3722
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3723
    goto/16 :goto_1

    .line 3708
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3709
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3710
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 3711
    .restart local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3712
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3713
    goto/16 :goto_1

    .line 3694
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3696
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3698
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3699
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3700
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v3

    .line 3701
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3702
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3703
    goto/16 :goto_1

    .line 3682
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3684
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3685
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3686
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v2

    .line 3687
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3688
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3689
    goto/16 :goto_1

    .line 3669
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3671
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3673
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3674
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3675
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 3676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3677
    goto/16 :goto_1

    .line 3656
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3658
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3660
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3661
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3662
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 3663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3664
    goto/16 :goto_1

    .line 3645
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3647
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3648
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3649
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 3650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3651
    goto/16 :goto_1

    .line 3627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3629
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3631
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3633
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3635
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 3636
    .local v16, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0

    .line 3638
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3640
    goto/16 :goto_1

    .line 3619
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_78
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v0

    .line 3620
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3621
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    goto/16 :goto_1

    .line 3610
    .end local v0    # "_result":I
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3611
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3612
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v1

    .line 3613
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3614
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3615
    goto/16 :goto_1

    .line 3600
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3601
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3602
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 3603
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3604
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3605
    goto/16 :goto_1

    .line 3586
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3588
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3590
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IMemorySaverPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IMemorySaverPackageMoveObserver;

    move-result-object v2

    .line 3591
    .local v2, "_arg2":Landroid/content/pm/IMemorySaverPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3592
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I

    move-result v3

    .line 3593
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3594
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3595
    goto/16 :goto_1

    .line 3574
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/pm/IMemorySaverPackageMoveObserver;
    .end local v3    # "_result":I
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3576
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3577
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3578
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3579
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3580
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3581
    goto/16 :goto_1

    .line 3565
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v0

    .line 3566
    .local v0, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3567
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3569
    goto/16 :goto_1

    .line 3556
    .end local v0    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v0

    .line 3557
    .restart local v0    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3558
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3560
    goto/16 :goto_1

    .line 3546
    .end local v0    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3547
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3548
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v1

    .line 3549
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3550
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3551
    goto/16 :goto_1

    .line 3537
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3538
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3539
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 3540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    goto/16 :goto_1

    .line 3528
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3529
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3530
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 3531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3532
    goto/16 :goto_1

    .line 3517
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3519
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3520
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3521
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->dumpProfiles(Ljava/lang/String;Z)V

    .line 3522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3523
    goto/16 :goto_1

    .line 3505
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3507
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3508
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3509
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOptForADCP(Ljava/lang/String;Z)I

    move-result v2

    .line 3510
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3512
    goto/16 :goto_1

    .line 3491
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3493
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3495
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3496
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3497
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 3498
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3499
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3500
    goto/16 :goto_1

    .line 3471
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3473
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 3475
    .local v8, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3477
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 3479
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 3481
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3482
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3483
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    .line 3484
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3485
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3486
    goto/16 :goto_1

    .line 3457
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3459
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3461
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3463
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDexModuleRegisterCallback;

    move-result-object v3

    .line 3464
    .local v3, "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3465
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V

    .line 3466
    goto/16 :goto_1

    .line 3436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3439
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3440
    .local v2, "N":I
    if-gez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3441
    .local v3, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v4, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v4, v11, v3}, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3449
    .end local v2    # "N":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3450
    .local v0, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3451
    invoke-virtual {v9, v1, v3, v0}, Landroid/content/pm/IPackageManager$Stub;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 3452
    goto/16 :goto_1

    .line 3426
    .end local v0    # "_arg2":Ljava/lang/String;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3429
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3430
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3431
    goto/16 :goto_1

    .line 3418
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v0

    .line 3419
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3421
    goto/16 :goto_1

    .line 3411
    .end local v0    # "_result":Z
    :pswitch_8a
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v0

    .line 3412
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3413
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3414
    goto/16 :goto_1

    .line 3405
    .end local v0    # "_result":Z
    :pswitch_8b
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 3406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    goto/16 :goto_1

    .line 3394
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3396
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3397
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3398
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    .line 3399
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3400
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3401
    goto/16 :goto_1

    .line 3386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_8d
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3387
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3388
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3389
    goto/16 :goto_1

    .line 3379
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_8e
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    .line 3380
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3381
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3382
    goto/16 :goto_1

    .line 3367
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3369
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3371
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v2

    .line 3372
    .local v2, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 3374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    goto/16 :goto_1

    .line 3358
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3359
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3360
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 3361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3362
    goto/16 :goto_1

    .line 3345
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3347
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v1

    .line 3349
    .local v1, "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3350
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3351
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 3352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3353
    goto/16 :goto_1

    .line 3332
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v2    # "_arg2":I
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3334
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3336
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3337
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3338
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 3339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    goto/16 :goto_1

    .line 3321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :pswitch_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v1

    .line 3324
    .local v1, "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 3326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    goto/16 :goto_1

    .line 3306
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3308
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 3310
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3312
    .local v15, "_arg2":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/IntentSender;

    .line 3313
    .local v16, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3314
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    .line 3315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    goto/16 :goto_1

    .line 3291
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/content/IntentSender;
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3293
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 3295
    .restart local v7    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3297
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v16

    .line 3298
    .local v16, "_arg3":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3299
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 3300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    goto/16 :goto_1

    .line 3278
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/content/pm/IPackageDataObserver;
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3280
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3282
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3283
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3284
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 3285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3286
    goto/16 :goto_1

    .line 3269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3270
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3271
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    .line 3272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    goto/16 :goto_1

    .line 3250
    .end local v0    # "_arg0":I
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3252
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3254
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3256
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3258
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3260
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 3261
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3262
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3264
    goto/16 :goto_1

    .line 3238
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3240
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3241
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3242
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    .line 3243
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3244
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3245
    goto/16 :goto_1

    .line 3221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3223
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3225
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3227
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3229
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3230
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3231
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 3232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3233
    goto/16 :goto_1

    .line 3209
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_9b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3211
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3212
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3213
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v2

    .line 3214
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3216
    goto/16 :goto_1

    .line 3198
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9c
    sget-object v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3200
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3201
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3202
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSettings(Ljava/util/List;I)V

    .line 3203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3204
    goto/16 :goto_1

    .line 3183
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local v1    # "_arg1":I
    :pswitch_9d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3185
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3187
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3189
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3190
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 3192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    goto/16 :goto_1

    .line 3172
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_9e
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3174
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3175
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3176
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->restoreLabelAndIcon(Landroid/content/ComponentName;I)V

    .line 3177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3178
    goto/16 :goto_1

    .line 3157
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :pswitch_9f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3159
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3161
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3163
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3164
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3165
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 3166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    goto/16 :goto_1

    .line 3146
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_a0
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3148
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3149
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3150
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 3151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3152
    goto/16 :goto_1

    .line 3135
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :pswitch_a1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3136
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3137
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3138
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3139
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3140
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3141
    goto/16 :goto_1

    .line 3124
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3126
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3127
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3128
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->restoreDomainVerification([BI)V

    .line 3129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3130
    goto/16 :goto_1

    .line 3114
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3115
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getDomainVerificationBackup(I)[B

    move-result-object v1

    .line 3117
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3119
    goto/16 :goto_1

    .line 3103
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3105
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3106
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3107
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 3108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3109
    goto/16 :goto_1

    .line 3093
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3094
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v1

    .line 3096
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3098
    goto/16 :goto_1

    .line 3082
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3084
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3085
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3086
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 3087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3088
    goto/16 :goto_1

    .line 3072
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3073
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3074
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v1

    .line 3075
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3077
    goto/16 :goto_1

    .line 3060
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3062
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3063
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3064
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3065
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3067
    goto/16 :goto_1

    .line 3048
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3050
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3051
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3052
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 3053
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3055
    goto/16 :goto_1

    .line 3036
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3038
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3039
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3040
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3041
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3042
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3043
    goto/16 :goto_1

    .line 3014
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 3016
    .local v8, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 3018
    .local v15, "_arg1":Z
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/PersistableBundle;

    .line 3020
    .local v16, "_arg2":Landroid/os/PersistableBundle;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/PersistableBundle;

    .line 3022
    .local v17, "_arg3":Landroid/os/PersistableBundle;
    sget-object v0, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/SuspendDialogInfo;

    .line 3024
    .local v18, "_arg4":Landroid/content/pm/SuspendDialogInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3026
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3027
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3028
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3029
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3031
    goto/16 :goto_1

    .line 3000
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v15    # "_arg1":Z
    .end local v16    # "_arg2":Landroid/os/PersistableBundle;
    .end local v17    # "_arg3":Landroid/os/PersistableBundle;
    .end local v18    # "_arg4":Landroid/content/pm/SuspendDialogInfo;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3004
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3005
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3006
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 3007
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3009
    goto/16 :goto_1

    .line 2989
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2991
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2992
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2993
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 2994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    goto/16 :goto_1

    .line 2972
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_ae
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/IntentFilter;

    .line 2974
    .local v6, "_arg0":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2976
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2978
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2980
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2981
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2982
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    goto/16 :goto_1

    .line 2961
    .end local v6    # "_arg0":Landroid/content/IntentFilter;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2963
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2964
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2965
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2967
    goto/16 :goto_1

    .line 2948
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_b0
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 2950
    .local v0, "_arg0":Landroid/content/IntentFilter;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2952
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2953
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    goto/16 :goto_1

    .line 2932
    .end local v0    # "_arg0":Landroid/content/IntentFilter;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :pswitch_b1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2934
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2936
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2937
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2938
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    .line 2939
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2940
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2941
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2942
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2943
    goto/16 :goto_1

    .line 2923
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2924
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2925
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2927
    goto/16 :goto_1

    .line 2906
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b3
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/IntentFilter;

    .line 2908
    .restart local v6    # "_arg0":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2910
    .local v7, "_arg1":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/content/ComponentName;

    .line 2912
    .local v8, "_arg2":[Landroid/content/ComponentName;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ComponentName;

    .line 2914
    .local v15, "_arg3":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2915
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2916
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 2917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    goto/16 :goto_1

    .line 2887
    .end local v6    # "_arg0":Landroid/content/IntentFilter;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":[Landroid/content/ComponentName;
    .end local v15    # "_arg3":Landroid/content/ComponentName;
    .end local v16    # "_arg4":I
    :pswitch_b4
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/IntentFilter;

    .line 2889
    .local v7, "_arg0":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2891
    .local v8, "_arg1":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/content/ComponentName;

    .line 2893
    .local v15, "_arg2":[Landroid/content/ComponentName;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/ComponentName;

    .line 2895
    .local v16, "_arg3":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2897
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2898
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V

    .line 2900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2901
    goto/16 :goto_1

    .line 2868
    .end local v7    # "_arg0":Landroid/content/IntentFilter;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":[Landroid/content/ComponentName;
    .end local v16    # "_arg3":Landroid/content/ComponentName;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :pswitch_b5
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Intent;

    .line 2870
    .local v7, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2872
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2874
    .local v15, "_arg2":I
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/IntentFilter;

    .line 2876
    .local v16, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2878
    .restart local v17    # "_arg4":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/ComponentName;

    .line 2879
    .local v18, "_arg5":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2880
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 2881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2882
    goto/16 :goto_1

    .line 2854
    .end local v7    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/content/IntentFilter;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/content/ComponentName;
    :pswitch_b6
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2856
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2858
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2859
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2860
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2861
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2862
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2863
    goto/16 :goto_1

    .line 2845
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2846
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2847
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 2848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2849
    goto/16 :goto_1

    .line 2835
    .end local v0    # "_arg0":I
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2836
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2837
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    .line 2838
    .local v1, "_result":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2839
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2840
    goto/16 :goto_1

    .line 2825
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/content/pm/InstallSourceInfo;
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2827
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2828
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2829
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2830
    goto/16 :goto_1

    .line 2812
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_ba
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    .line 2814
    .local v0, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    .line 2816
    .local v1, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2817
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2818
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 2819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2820
    goto/16 :goto_1

    .line 2797
    .end local v0    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v2    # "_arg2":I
    :pswitch_bb
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    .line 2799
    .restart local v0    # "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    .line 2801
    .restart local v1    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2803
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2804
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 2806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    goto/16 :goto_1

    .line 2780
    .end local v0    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2782
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2784
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v8

    .line 2786
    .local v8, "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2788
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2789
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2790
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 2791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2792
    goto/16 :goto_1

    .line 2767
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2769
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2771
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2772
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2773
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    .line 2774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2775
    goto/16 :goto_1

    .line 2756
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2758
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2759
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2760
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2762
    goto/16 :goto_1

    .line 2745
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2747
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2748
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2749
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    .line 2750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2751
    goto/16 :goto_1

    .line 2733
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2736
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2737
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2738
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2740
    goto/16 :goto_1

    .line 2721
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c1
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2723
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2724
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    .line 2726
    .local v2, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2728
    goto/16 :goto_1

    .line 2705
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/InstrumentationInfo;
    :pswitch_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2707
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2709
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2711
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2712
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2713
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-wide v3, v15

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2714
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2715
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2716
    goto/16 :goto_1

    .line 2692
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg2":J
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2694
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2695
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2696
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 2697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2698
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2699
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2700
    goto/16 :goto_1

    .line 2678
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :pswitch_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2680
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2682
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2683
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2684
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 2685
    .local v4, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2686
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2687
    goto/16 :goto_1

    .line 2668
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :pswitch_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2669
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2670
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2671
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2672
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2673
    goto/16 :goto_1

    .line 2656
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2658
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2659
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2660
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2661
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2662
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2663
    goto/16 :goto_1

    .line 2642
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 2644
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2646
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2647
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2648
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2649
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2651
    goto/16 :goto_1

    .line 2630
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2632
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2633
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2634
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2635
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2637
    goto/16 :goto_1

    .line 2614
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c9
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2616
    .local v6, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2618
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2620
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2621
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2622
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2623
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2624
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2625
    goto/16 :goto_1

    .line 2598
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_ca
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2600
    .restart local v6    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2602
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2604
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2605
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2606
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2607
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2609
    goto/16 :goto_1

    .line 2582
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_cb
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2584
    .restart local v6    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2586
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2588
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2589
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2590
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2591
    .local v0, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2593
    goto/16 :goto_1

    .line 2566
    .end local v0    # "_result":Landroid/content/pm/ResolveInfo;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_cc
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2568
    .restart local v6    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2570
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2572
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2573
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2575
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2577
    goto/16 :goto_1

    .line 2544
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_cd
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ComponentName;

    .line 2546
    .local v15, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Landroid/content/Intent;

    .line 2548
    .local v16, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 2550
    .local v17, "_arg2":[Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 2552
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2554
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 2556
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 2557
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2559
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2561
    goto/16 :goto_1

    .line 2528
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .end local v16    # "_arg1":[Landroid/content/Intent;
    .end local v17    # "_arg2":[Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":I
    :pswitch_ce
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2530
    .restart local v6    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2532
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2534
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2535
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2536
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2537
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2539
    goto/16 :goto_1

    .line 2512
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_cf
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2514
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2516
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2518
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2519
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2520
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v4

    .line 2521
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2523
    goto/16 :goto_1

    .line 2500
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_d0
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2502
    .restart local v0    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2503
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2504
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2505
    .local v2, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2507
    goto/16 :goto_1

    .line 2484
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_d1
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 2486
    .restart local v6    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2488
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 2490
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2491
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2492
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v15

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2493
    .local v0, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2495
    goto/16 :goto_1

    .line 2474
    .end local v0    # "_result":Landroid/content/pm/ResolveInfo;
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v15    # "_arg2":J
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2475
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v1

    .line 2477
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2479
    goto/16 :goto_1

    .line 2464
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2465
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2466
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v1

    .line 2467
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    goto/16 :goto_1

    .line 2454
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2455
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2456
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v1

    .line 2457
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2458
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2459
    goto/16 :goto_1

    .line 2444
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2445
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2446
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v1

    .line 2447
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    goto/16 :goto_1

    .line 2434
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 2435
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2436
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v1

    .line 2437
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2438
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2439
    goto/16 :goto_1

    .line 2424
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2425
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2426
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2427
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2429
    goto/16 :goto_1

    .line 2414
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2415
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2416
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2417
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2418
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2419
    goto/16 :goto_1

    .line 2406
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_d9
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v0

    .line 2407
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2409
    goto/16 :goto_1

    .line 2395
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2397
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2398
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2399
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v2

    .line 2400
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    goto/16 :goto_1

    .line 2383
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2385
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2387
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2388
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    goto/16 :goto_1

    .line 2373
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2375
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v1

    .line 2376
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2377
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2378
    goto/16 :goto_1

    .line 2359
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_dd
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2361
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2363
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2364
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2365
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 2366
    .local v4, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2367
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2368
    goto/16 :goto_1

    .line 2345
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :pswitch_de
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2347
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2349
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2350
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2351
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 2352
    .local v4, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2353
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2354
    goto/16 :goto_1

    .line 2331
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ServiceInfo;
    :pswitch_df
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2333
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2335
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2336
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2337
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2338
    .local v4, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2339
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2340
    goto/16 :goto_1

    .line 2317
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :pswitch_e0
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2319
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2321
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2322
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2323
    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    .line 2324
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2325
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2326
    goto/16 :goto_1

    .line 2303
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e1
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2305
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2307
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2308
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2309
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2310
    .restart local v4    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2312
    goto/16 :goto_1

    .line 2293
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :pswitch_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v1

    .line 2296
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    goto/16 :goto_1

    .line 2279
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2281
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2283
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2284
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2285
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2286
    .local v4, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2287
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2288
    goto/16 :goto_1

    .line 2269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 2270
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2271
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2273
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2274
    goto/16 :goto_1

    .line 2259
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 2260
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2261
    invoke-virtual {v9, v0}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2262
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2264
    goto/16 :goto_1

    .line 2245
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2249
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2250
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v4

    .line 2252
    .local v4, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2254
    goto/16 :goto_1

    .line 2231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[I
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2235
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2236
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 2238
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    goto :goto_1

    .line 2217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_e8
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    .line 2219
    .local v0, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2221
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2222
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2223
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2224
    .local v4, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2226
    goto :goto_1

    .line 2203
    .end local v0    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2205
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2207
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2208
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2209
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2210
    .restart local v4    # "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2212
    goto :goto_1

    .line 2191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2193
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2194
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2195
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v2

    .line 2196
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2198
    goto :goto_1

    .line 2180
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2182
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2183
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2184
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    .line 2185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2186
    nop

    .line 4912
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :goto_1
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
