.class public Lcom/samsung/android/settings/as/utils/VibUtils;
.super Ljava/lang/Object;
.source "VibUtils.java"


# direct methods
.method public static getNotificationVibrationPattern(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "notification_vibration_sep_index"

    const v1, 0xc372

    .line 68
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v1, "sync_vibration_with_notification"

    const/4 v6, 0x1

    .line 72
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string p0, "Sync with notification sound"

    goto :goto_4

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

    .line 76
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "vibration_pattern=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 78
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_custom"

    .line 79
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "Custom pattern"

    goto :goto_1

    :cond_1
    const-string v0, "vibration_name"

    .line 82
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 75
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v7

    :goto_1
    if-eqz p0, :cond_3

    .line 85
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v7, v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 86
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v7

    :goto_4
    return-object p0
.end method

.method public static getVibrationPattern(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "ringtone_vibration_sep_index"

    const v1, 0xc373

    .line 41
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v1, "sync_vibration_with_ringtone"

    const/4 v6, 0x1

    .line 45
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string p0, "Sync with ringtone"

    goto :goto_4

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    .line 48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "vibration_pattern=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    .line 48
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 50
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_custom"

    .line 51
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "Custom pattern"

    goto :goto_1

    :cond_1
    const-string v0, "vibration_name"

    .line 54
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 48
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v7

    :goto_1
    if-eqz p0, :cond_3

    .line 57
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v7, v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 58
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v7

    :goto_4
    return-object p0
.end method

.method public static hasSystemVibrationMenu(Landroid/content/Context;)Z
    .locals 2

    .line 94
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "vibrator_manager"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibratorManager;

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "vibrator_manager"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibratorManager;

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isSupportDcHaptic(Landroid/content/Context;)Z
    .locals 2

    .line 102
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportVibrateWhenRing(Landroid/content/Context;)Z
    .locals 1

    .line 109
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/android/settings/Utils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVibrateWhileRingingActivatedAsDefault()Z
    .locals 2

    .line 114
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
