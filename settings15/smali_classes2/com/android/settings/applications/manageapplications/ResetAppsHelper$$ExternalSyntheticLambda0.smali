.class public final synthetic Lcom/android/settings/applications/manageapplications/ResetAppsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0300b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v0, v6, v12}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v6, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v14, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v17, "miscellaneous"

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v16, v6

    invoke-interface/range {v14 .. v19}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    if-eqz v6, :cond_3

    const/16 v7, -0x3e8

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v7, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v9, v6}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_3
    iget-object v6, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8, v5}, Landroid/app/INotificationManager;->clearData(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_1

    :try_start_1
    iget-object v6, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v10, v12

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "ResetAppsHelper"

    const-string v7, "Error during reset disabled apps."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

    const-string v6, "context"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->appOptimizationModeLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-object v7, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppOptModeSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v6

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v7

    invoke-static {v0, v3, v4, v6, v7}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->resetAppOptimizationModeInternal(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Lcom/android/settings/fuelgauge/BatteryUtils;)V

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->resetDenylistIfNeeded(Ljava/lang/String;Z)V

    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    if-nez v3, :cond_5

    new-instance v3, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    :cond_5
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    if-eqz v3, :cond_7

    if-nez v3, :cond_6

    new-instance v3, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    :cond_6
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.sdhms.action.FAS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.android.sdhms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "fas_verification_type"

    const-string v6, "init"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    iget-object v0, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    array-length v4, v0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_9

    aget v7, v0, v6

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, v3, :cond_8

    iget-object v8, v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v8, v7, v5}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_8
    add-int/2addr v6, v1

    goto :goto_1

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
