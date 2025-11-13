.class public Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActiveKeySettingsReceiver.java"


# instance fields
.field private final activeKeyID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    sget v0, Lcom/android/settings/R$drawable;->stat_notify_activity_zone:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->activeKeyID:I

    return-void
.end method

.method private static getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method private static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    .line 185
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 188
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 190
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private makeActiveKeyNotification(Landroid/content/Context;)V
    .locals 10

    .line 129
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.android.settings"

    .line 130
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 131
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 132
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActiveKeySettingsReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "pref_active_key_noti"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 134
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.settings.Settings$UsefulFeatureMainActivity"

    .line 138
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v3, "com.android.settings.Settings$ActiveKeySettingsActivity"

    .line 141
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v3, 0xc000000

    .line 144
    invoke-static {p1, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v3, "notification"

    .line 147
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const-string v4, "activekey_notification_channel"

    .line 148
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    sget v7, Lcom/android/settings/R$string;->xcover_top_key_noti_title:I

    .line 152
    sget v8, Lcom/android/settings/R$string;->xcover_top_key_notification:I

    goto :goto_2

    .line 153
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    sget v7, Lcom/android/settings/R$string;->xcover_key_title:I

    .line 155
    sget v8, Lcom/android/settings/R$string;->xcover_key_notification:I

    goto :goto_2

    .line 157
    :cond_3
    sget v7, Lcom/android/settings/R$string;->active_key_title:I

    .line 158
    sget v8, Lcom/android/settings/R$string;->active_key_notification:I

    :goto_2
    if-nez v6, :cond_4

    .line 161
    new-instance v1, Landroid/app/NotificationChannel;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-direct {v1, v4, v2, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 164
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 165
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_3

    .line 167
    :cond_4
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 168
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 169
    invoke-virtual {v3, v1, v2, v6}, Landroid/app/NotificationManager;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 172
    :cond_5
    :goto_3
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->activeKeyID:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-wide/16 v5, 0x0

    .line 177
    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 180
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->activeKeyID:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 47
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 50
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result p0

    const-string p2, "dedicated_app_label_xcover"

    const-string v0, "dedicated_app_xcover"

    const-string v1, "dedicated_app_xcover_switch"

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "verizon_dedicated_ptt_switch"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "com.verizon.pushtotalkplus"

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "Push To Talk+"

    invoke-static {p0, p2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "bmc_ptt_first_check"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "short_press_app"

    invoke-static {p0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "long_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.bell.ptt/com.bell.ptt.StartupActivity"

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, ""

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "quickMessageSender/quickMessageSender"

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    invoke-static {v2, v2, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 71
    invoke-static {v3, v3, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p0

    const-string v5, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    if-eqz p0, :cond_2

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v7, "torch/torch"

    invoke-static {p0, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    invoke-static {v3, v2, v7}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 76
    invoke-static {v3, v3, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-static {v3, v2, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 81
    invoke-static {v3, v3, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 84
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_4

    .line 85
    invoke-static {p1, v3, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    const-string p0, "com.bell.ptt"

    .line 86
    invoke-static {p1, v3, p0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    const-string p0, "Push-to-Talk"

    .line 87
    invoke-static {p1, v3, p0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 93
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "tmo_ptt_first_check"

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_8

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_8

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.sprint.sdcplus"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "TDC"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    const-string v1, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "notification"

    if-eqz v1, :cond_6

    .line 107
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 108
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_active_key_noti"

    .line 109
    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 114
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->activeKeyID:I

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :cond_6
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "reason"

    .line 116
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 119
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 120
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->activeKeyID:I

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    :cond_7
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ActiveKeySettingsReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    const-string p0, "ActiveKeySettingsReceiver"

    const-string p1, "LOCALE_CHANGED"

    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method
