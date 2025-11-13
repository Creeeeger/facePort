.class Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 158
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$array;->config_skip_reset_apps_package_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 161
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmUm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 162
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 163
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x200

    invoke-virtual {v0, v5, v11}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v12

    move v13, v4

    .line 165
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    .line 166
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 167
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 172
    :cond_1
    :try_start_0
    iget-object v5, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    iget-object v5, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v14

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v17, "miscellaneous"

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v16, v5

    invoke-interface/range {v14 .. v19}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_2

    const/16 v6, -0x3e8

    .line 178
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v6, 0x4

    .line 179
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 180
    iget-object v6, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8, v5}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 184
    :cond_2
    iget-object v5, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v6, v7, v4}, Landroid/app/INotificationManager;->clearData(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    iget-boolean v5, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_3

    .line 189
    :try_start_1
    iget-object v5, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmIPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v11}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 191
    iget-object v5, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmIPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move v9, v11

    .line 191
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "ResetAppsHelper"

    const-string v6, "Error during reset disabled apps."

    .line 198
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 204
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmIPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    :catch_2
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmAom(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 210
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 212
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->verifyFasTable()V

    .line 216
    :cond_5
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNpm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 218
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 219
    array-length v3, v0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_7

    aget v6, v0, v5

    .line 221
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, v2, :cond_6

    .line 222
    iget-object v7, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmNpm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    :cond_7
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmResetAppsDialogCallback(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 228
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->-$$Nest$fgetmResetAppsDialogCallback(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;->onUpdateAfterResetApps()V

    :cond_8
    return-void
.end method
