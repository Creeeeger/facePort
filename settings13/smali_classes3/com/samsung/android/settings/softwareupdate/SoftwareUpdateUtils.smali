.class public Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;
.super Ljava/lang/Object;
.source "SoftwareUpdateUtils.java"


# direct methods
.method public static checkNewSoftwareUpdate(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "PrintSettingsFragment"

    const-string v0, "context is null"

    .line 86
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10000020

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.wssyncmldm"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getDataSimSlotId(Landroid/content/Context;)I
    .locals 4

    .line 138
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getOmcVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "PrintSettingsFragment"

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDualSim()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 144
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "subscriptionInfo is null, so return sim slot 0"

    .line 146
    invoke-static {v2, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscriptionID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", slotId : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    :goto_0
    const-string p0, "omc version is under 5 or device is not dual sim, so return 0"

    .line 140
    invoke-static {v2, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFotaBadgeCount(Landroid/content/Context;)I
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "badge_for_fota"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFotaBadgeCount badgeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrintSettingsFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static getLanguage()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSalesCode()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFirmwareAutoUpdateAllowed(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "false"

    .line 124
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isFirmwareAutoUpdateAllowed"

    .line 125
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirmwareAutoUpdateAllowed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrintSettingsFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKeepOrderEvenRTL()Z
    .locals 1

    .line 156
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isUrdu()Z

    move-result v0

    return v0
.end method

.method public static isNoNeedWifiAutoDownloadMenu(Landroid/content/Context;)Z
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isEnableNotiDeltaBinarySizeBeforeDownload(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->needToRemoveWifiAutoDownloadMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOTAUpgradeAllowed(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v1, "isOTAUpgradeAllowed"

    const/4 v2, 0x0

    .line 117
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOTAUpgradeAllowed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrintSettingsFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUrdu()Z
    .locals 2

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsingATTFota(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.ws.dm"

    .line 105
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUsingSamsungFota(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.wssyncmldm"

    .line 97
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isUsingVZWFota(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.sdm.sdmviewer"

    .line 101
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V
    .locals 4

    .line 54
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isUsingATTFota(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.ws.dm"

    const-string v2, "com.att.fotaagent.enabler.ui.userinit.UserInitActivity"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isUsingVZWFota(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TFN"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "com.samsung.sdm.sdmviewer"

    if-nez v2, :cond_2

    const-string v2, "TFV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TFO"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TFA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.sdm.sdmviewer.VZWSystemUpdatesLauncher"

    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "com.samsung.sdm.sdmviewer.TFNSoftwareUpdateLauncher"

    .line 69
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 80
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->checkNewSoftwareUpdate(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public static needSoftwareUpdateBlockonDexMode(Landroid/content/Context;)Z
    .locals 1

    .line 172
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
