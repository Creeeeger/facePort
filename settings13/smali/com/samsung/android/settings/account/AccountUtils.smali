.class public Lcom/samsung/android/settings/account/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# static fields
.field private static final SupportTwoPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/account/AccountUtils;->SupportTwoPhone:Z

    return-void
.end method

.method public static addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/16 v0, 0x3e9

    .line 243
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 246
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 248
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 250
    array-length p0, p0

    if-nez p0, :cond_0

    .line 253
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "client_id"

    const-string v1, "s5d189ajvs"

    .line 254
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mypackage"

    const-string v1, "com.samsung.android.scloud"

    .line 255
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "OSP_VER"

    const-string v1, "OSP_02"

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MODE"

    const-string v1, "ADD_ACCOUNT"

    .line 257
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static checkCarrierByodCondition()Z
    .locals 7

    const-string v0, "NONE"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ro.csc.sales_code"

    .line 184
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "ro.boot.carrierid"

    .line 185
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "persist.sys.omc_byod"

    .line 186
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v0

    .line 188
    :goto_0
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v3, v1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_1
    const-string v4, "VZW"

    .line 193
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VPP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 197
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierByodCondition: byod condition - carrierid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sales_code:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "device_policy"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkKTservicePackage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.kt.olleh.servicemenu"

    .line 63
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkMyProfile(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.unifiedprofile"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 163
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static checkSamsungBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-static {p0, v0}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static checkSamsungBackup(Landroid/content/Context;Z)Z
    .locals 4

    const-string v0, "SEC_FLOATING_FEATURE_SAMSUNGCLOUD_ENABLE_SETTING_MENU"

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "device_policy"

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 88
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungCloudEnabler(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 93
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.scloud"

    const/4 v3, 0x5

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 94
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_4

    .line 97
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->checkCarrierByodCondition()Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "true"

    const-string v0, "DisablingSamsungCloudMenu"

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    :cond_3
    return v1

    :catch_0
    :cond_4
    return v2
.end method

.method public static checkSamsungBackupAvailble(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.scloud"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 214
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->isDisableSamsungBackupMenu()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 217
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 219
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungCloudEnabler(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static checkSamsungCloudEnabler(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.app.samsungcloud.enabler"

    .line 52
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSamsungBackupLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.SCLOUD_BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSamsungCloudFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 108
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSamsungCloudVariation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 111
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 112
    aget-object v3, v0, v2

    const-string v4, ":"

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 115
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 116
    aget-object v5, v3, v5

    const/4 v5, 0x2

    .line 117
    aget-object v3, v3, v5

    .line 119
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : value="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSamsungCloudLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.SCLOUD_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSamsungRestoreLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.SCLOUD_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSamsungSyncSettingLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isAppSeparationActivated(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "persona"

    .line 360
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 361
    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 363
    invoke-static {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isDisableSamsungBackupMenu()Z
    .locals 2

    .line 146
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->checkCarrierByodCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Utils"

    const-string v1, "carrier byod activated"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "DisablingSamsungBackup"

    .line 152
    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKTPlayGameServiceAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.game.gametools.action.KT_PLAY_GAME_FROM_SETTINGS"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isKnoxActivated(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "persona"

    .line 337
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 338
    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 340
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isSamsungAccountExists(Landroid/content/Context;)Z
    .locals 1

    .line 233
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 234
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 236
    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSecureFolderActivated(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "persona"

    .line 349
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 350
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    .line 351
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 352
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isSupportTwoPhone()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/samsung/android/settings/account/AccountUtils;->SupportTwoPhone:Z

    return v0
.end method

.method public static removeDualAppManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 326
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 327
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static removeNonKnoxManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 315
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static showDownloadSamsungCloudDialog(Landroid/content/Context;)V
    .locals 7

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cloud_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->download_scloud_title:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->download_scloud_message:I

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->monotype_dialog_button:I

    new-instance v2, Lcom/samsung/android/settings/account/AccountUtils$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/account/AccountUtils$2;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/settings/account/AccountUtils$1;

    invoke-direct {v1}, Lcom/samsung/android/settings/account/AccountUtils$1;-><init>()V

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
