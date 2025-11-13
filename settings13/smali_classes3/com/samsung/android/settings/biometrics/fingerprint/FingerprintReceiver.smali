.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelFingerprintTemplateChangedNotification(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string v0, "FpstFingerprintReceiver"

    const-string v1, "cancelFingerprintTemplateChangedNotification"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff6

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "fingerprint_all_remove_notifcation_channel"

    .line 190
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method private createFingerprintTemplateChangedNotification(Landroid/content/Context;)V
    .locals 14

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "FpstFingerprintReceiver"

    const-string v1, "createFingerprintTemplateChangedNotification"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notification"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 126
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 127
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0xff6

    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    .line 128
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-ne v7, v6, :cond_0

    const-string v2, "onCreate : Remove template changed notification"

    .line 129
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;->cancelFingerprintTemplateChangedNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    new-instance v0, Landroid/app/NotificationChannel;

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_noti_title:I

    .line 136
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v7, "fingerprint_all_remove_notifcation_channel"

    invoke-direct {v0, v7, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v0, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 140
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.settings.biometrics.fingerprint.FingerprintEntry"

    .line 141
    invoke-virtual {v10, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10808000

    .line 142
    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "allremovenoti"

    const/4 v5, 0x1

    .line 143
    invoke-virtual {v10, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_TEMPLATE_CHANGED_NOTIFY_DISMISS"

    .line 146
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-class v8, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p1, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x10000000

    .line 153
    invoke-static {p1, v4, v10, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_2

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintKnoxId(Landroid/content/Context;)I

    move-result v3

    if-gez v3, :cond_3

    move v3, v4

    .line 157
    :cond_3
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    move-object v8, p1

    .line 158
    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 160
    :goto_2
    new-instance v8, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v9, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_noti_remove_and_register:I

    .line 161
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v8

    .line 163
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v9, p1, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v10, Lcom/android/settings/R$drawable;->sec_fingerprint_wof_notification:I

    .line 165
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 166
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v9, Lcom/android/settings/R$string;->sec_fingerprint_template_changed_noti_summary:I

    .line 167
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 169
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0, v8}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    sget v3, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.substName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    .line 180
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 181
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 182
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private resetFingerprintSupportingFeatures(Landroid/content/Context;)V
    .locals 5

    const-string v0, "FpstFingerprintReceiver"

    const-string v1, "ResetFingerprintSupportingFeatures"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "fingerprint_secret_box"

    const/4 v3, 0x0

    .line 93
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "fingerprint_webpass"

    .line 95
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "fingerprint_fingerIndex"

    .line 97
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "fingerprint_used_samsungaccount"

    .line 99
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v4, "fingerprint_samsungaccount_confirmed"

    .line 101
    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 103
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;->setFingerprintScreenLockDisable(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setFingerprintScreenLockDisable(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "FpstFingerprintReceiver"

    const-string v0, "setFingerprintScreenLockDisable"

    .line 115
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;->resetFingerprintSupportingFeatures(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p2, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 59
    invoke-virtual {p2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    if-nez p0, :cond_6

    .line 60
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintKnoxId(Landroid/content/Context;)I

    move-result p0

    if-gez p0, :cond_6

    .line 61
    invoke-virtual {p2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->semUpdateMatcher(I)Z

    goto/16 :goto_0

    :cond_0
    const-string p0, "Fingerprint exist!"

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_WEB_SIGNIN"

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const-string v0, "fingerprint_webpass"

    .line 68
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_TEMPLATE_CHANGED_NOTIFY"

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isFPTemplateChangeForKnox(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 72
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintSettingsCreateValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p2, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasNewMatcher(I)Z

    move-result v3

    .line 78
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFpSettingsLaunched : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " | isNotificationNeed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;->createFingerprintTemplateChangedNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string p0, "onReceive : Multifactor auth enforced"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p0, "com.samsung.android.intent.action.FINGERPRINT_TEMPLATE_CHANGED_NOTIFY_DISMISS"

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 87
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintReceiver;->cancelFingerprintTemplateChangedNotification(Landroid/content/Context;)V

    :cond_6
    :goto_0
    return-void
.end method
