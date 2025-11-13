.class public Landroid/app/admin/IDevicePolicyManager$Default;
.super Ljava/lang/Object;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeDeviceCompliant()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    return-void
.end method

.method public blacklist acknowledgeNewUserDisclaimer(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    return-void
.end method

.method public blacklist addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    return-void
.end method

.method public blacklist addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    return-void
.end method

.method public blacklist addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    return-void
.end method

.method public blacklist approveCaCert(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1575
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canAdminGrantSensorsPermissionsForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canUsbDataSignalingBeDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "aliasCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    return-void
.end method

.method public blacklist clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/IPackageDataObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    return-void
.end method

.method public blacklist clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    return-void
.end method

.method public blacklist clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    return-void
.end method

.method public blacklist clearDeviceOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public blacklist clearOrganizationIdForUser(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    return-void
.end method

.method public blacklist clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    return-void
.end method

.method public blacklist clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    return-void
.end method

.method public blacklist clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    return-void
.end method

.method public blacklist createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 1
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1344
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    return-void
.end method

.method public blacklist enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    return-void
.end method

.method public blacklist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    return-void
.end method

.method public blacklist forceNetworkLogs()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public blacklist forceSecurityLogs()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    return-void
.end method

.method public blacklist generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySpec"    # Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .param p5, "idAttestationFlags"    # I
    .param p6, "attestationChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveAdmins(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActualDeviceOwnerMDM()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1255
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutoTimeRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBluetoothContactSharingDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBluetoothContactSharingEnabledForKnox(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCameraDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfileContactsSearchDisabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentFailedBiometricAttempts(I)I
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentFailedPasswordAttempts(IZ)I
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "callingUserOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceOwnerUserId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDoNotAskCredentialsOnBoot()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1337
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1223
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastBugReportRequestTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLastNetworkLogRetrievalTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLastSecurityLogRetrievalTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLockTaskFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLogoutUserId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimumRequiredWifiSecurityLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationColorForUser(I)I
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPasswordComplexity(Z)I
    .locals 1
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordExpiration(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordQuality(Landroid/content/ComponentName;IZ)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethodsAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerName(I)Ljava/lang/String;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileWithMinimumFailedPasswordsForWipe(IZ)I
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public blacklist getRequiredPasswordComplexity(Z)I
    .locals 1
    .param p1, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStorageEncryptionStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1
    .param p1, "stringId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserProvisioningState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1393
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasDeviceOwner()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUserSetupCompleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "privKeyBuffer"    # [B
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "alias"    # Ljava/lang/String;
    .param p7, "requestAccess"    # Z
    .param p8, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    return-void
.end method

.method public blacklist isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActivePasswordSufficient(IZ)Z
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActivePasswordSufficientForDeviceRequirement()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAffiliatedUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabledForUser(I)Z
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCaCertApproved(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCallingUserAffiliated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1301
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComplianceAcknowledgementRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCurrentInputMethodSetByOwner()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceProvisioningConfigApplied()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDpcDownloaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1411
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEphemeralUser(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLogoutEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManagedKiosk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNewUserDisclaimerAcknowledged(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSafeOperation(I)Z
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUnattendedManagedKiosk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1267
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUninstallInQueue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsbDataSignalingEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsbDataSignalingEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listForegroundAffiliatedUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist listPolicyExemptApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist lockNow(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    return-void
.end method

.method public blacklist logoutUser(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logoutUserInternal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    return-void
.end method

.method public blacklist notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/admin/SystemUpdateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    return-void
.end method

.method public blacklist packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .locals 0
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    return-void
.end method

.method public blacklist reboot(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    return-void
.end method

.method public blacklist rebootMDM(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    return-void
.end method

.method public blacklist reportFailedPasswordAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist reportKeyguardDismissed(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    return-void
.end method

.method public blacklist reportKeyguardSecured(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    return-void
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .locals 0
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    return-void
.end method

.method public blacklist reportSuccessfulPasswordAttempt(I)V
    .locals 0
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist requestBugreport(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1361
    return-void
.end method

.method public blacklist resetDrawables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1404
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist resetPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1044
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetStrings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1529
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowBrowser(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1522
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowIrda(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1508
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowStorageCard(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetAllowWifi(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetRequireStorageCardEncryption(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "isParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsActivePasswordSufficient(I)Z
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    return-void
.end method

.method public blacklist semSetAllowBrowser(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    return-void
.end method

.method public blacklist semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1533
    return-void
.end method

.method public blacklist semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    return-void
.end method

.method public blacklist semSetAllowIrda(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    return-void
.end method

.method public blacklist semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1505
    return-void
.end method

.method public blacklist semSetAllowStorageCard(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    return-void
.end method

.method public blacklist semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    return-void
.end method

.method public blacklist semSetAllowWifi(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    return-void
.end method

.method public blacklist semSetCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    return-void
.end method

.method public blacklist semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    return-void
.end method

.method public blacklist semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    return-void
.end method

.method public blacklist semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1464
    return-void
.end method

.method public blacklist semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    return-void
.end method

.method public blacklist semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    return-void
.end method

.method public blacklist semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    return-void
.end method

.method public blacklist semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    return-void
.end method

.method public blacklist semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    return-void
.end method

.method public blacklist semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1452
    return-void
.end method

.method public blacklist semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1455
    return-void
.end method

.method public blacklist semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1443
    return-void
.end method

.method public blacklist semSetPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    return-void
.end method

.method public blacklist semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "isParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    return-void
.end method

.method public blacklist semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    return-void
.end method

.method public blacklist sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public blacklist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    return-void
.end method

.method public blacklist setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 0
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    return-void
.end method

.method public blacklist setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p5, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    return-void
.end method

.method public blacklist setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    return-void
.end method

.method public blacklist setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    return-void
.end method

.method public blacklist setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    return-void
.end method

.method public blacklist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    return-void
.end method

.method public blacklist setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    return-void
.end method

.method public blacklist setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    return-void
.end method

.method public blacklist setBluetoothContactSharingEnabledForKnox(IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1559
    return-void
.end method

.method public blacklist setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    return-void
.end method

.method public blacklist setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    return-void
.end method

.method public blacklist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    return-void
.end method

.method public blacklist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    return-void
.end method

.method public blacklist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    return-void
.end method

.method public blacklist setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    return-void
.end method

.method public blacklist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    return-void
.end method

.method public blacklist setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "setProfileOwnerOnCurrentUserIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerInfo"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    return-void
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    return-void
.end method

.method public blacklist setDeviceProvisioningConfigApplied()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    return-void
.end method

.method public blacklist setDpcDownloaded(Z)V
    .locals 0
    .param p1, "downloaded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1415
    return-void
.end method

.method public blacklist setDrawables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    return-void
.end method

.method public blacklist setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    return-void
.end method

.method public blacklist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "forceEpehemeralUsers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    return-void
.end method

.method public blacklist setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .param p3, "privateDnsHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    return-void
.end method

.method public blacklist setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "hasGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "certBuffer"    # [B
    .param p5, "certChainBuffer"    # [B
    .param p6, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    return-void
.end method

.method public blacklist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    return-void
.end method

.method public blacklist setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    return-void
.end method

.method public blacklist setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    return-void
.end method

.method public blacklist setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    return-void
.end method

.method public blacklist setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    return-void
.end method

.method public blacklist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    return-void
.end method

.method public blacklist setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    return-void
.end method

.method public blacklist setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    return-void
.end method

.method public blacklist setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    return-void
.end method

.method public blacklist setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMinimumRequiredWifiSecurityLevel(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1383
    return-void
.end method

.method public blacklist setNearbyAppStreamingPolicy(I)V
    .locals 0
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public blacklist setNearbyNotificationStreamingPolicy(I)V
    .locals 0
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    return-void
.end method

.method public blacklist setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    return-void
.end method

.method public blacklist setNextOperationSafety(II)V
    .locals 0
    .param p1, "operation"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    return-void
.end method

.method public blacklist setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    return-void
.end method

.method public blacklist setOrganizationColorForUser(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    return-void
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1341
    return-void
.end method

.method public blacklist setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    return-void
.end method

.method public blacklist setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    return-void
.end method

.method public blacklist setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "expiration"    # J
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1162
    return-void
.end method

.method public blacklist setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    return-void
.end method

.method public blacklist setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    return-void
.end method

.method public blacklist setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    return-void
.end method

.method public blacklist setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    return-void
.end method

.method public blacklist setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    return-void
.end method

.method public blacklist setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    return-void
.end method

.method public blacklist setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    return-void
.end method

.method public blacklist setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    return-void
.end method

.method public blacklist setPasswordQuality(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    return-void
.end method

.method public blacklist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "grantState"    # I
    .param p6, "resultReceiver"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    return-void
.end method

.method public blacklist setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    return-void
.end method

.method public blacklist setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    return-void
.end method

.method public blacklist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    return-void
.end method

.method public blacklist setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public blacklist setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "isProfileOwnerOnOrganizationOwnedDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    return-void
.end method

.method public blacklist setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method

.method public blacklist setRequiredPasswordComplexity(IZ)V
    .locals 0
    .param p1, "passwordComplexity"    # I
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    return-void
.end method

.method public blacklist setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    return-void
.end method

.method public blacklist setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public blacklist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    return-void
.end method

.method public blacklist setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    return-void
.end method

.method public blacklist setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    return-void
.end method

.method public blacklist setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    return-void
.end method

.method public blacklist setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    return-void
.end method

.method public blacklist setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStrings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    return-void
.end method

.method public blacklist setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    return-void
.end method

.method public blacklist setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    return-void
.end method

.method public blacklist setTime(Landroid/content/ComponentName;J)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    return-void
.end method

.method public blacklist setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "agent"    # Landroid/content/ComponentName;
    .param p4, "args"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    return-void
.end method

.method public blacklist setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    return-void
.end method

.method public blacklist setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    return-void
.end method

.method public blacklist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    return-void
.end method

.method public blacklist setUserProvisioningState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    return-void
.end method

.method public blacklist setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    return-void
.end method

.method public blacklist setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    return-void
.end method

.method public blacklist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    return-void
.end method

.method public blacklist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 0
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "contactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    return-void
.end method

.method public blacklist startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "allDay"    # Z
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1271
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    return-void
.end method

.method public blacklist uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    return-void
.end method

.method public blacklist uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    return-void
.end method

.method public blacklist updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wipeDataWithReason(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;
    .param p3, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method
