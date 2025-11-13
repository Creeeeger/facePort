.class public final Lcom/samsung/android/settings/eternal/provider/items/SoundItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# direct methods
.method public static getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040d5c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Silent"

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SoundItem"

    const-string p1, "back up only the internal notification sound."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getDefaultNotificationTitle(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-static {p0}, Landroid/media/RingtoneManager;->getOMCRingtonePropertyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p0, v1, :cond_1

    const-string/jumbo p0, "ro.config.notification_sound"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    if-ne p0, v1, :cond_2

    const-string/jumbo p0, "ro.config.notification_sound_2"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static getStreamVolume(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public static restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    const-string v0, "content://media/internal/audio/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "Silent"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method public static restoreSeparateAppSound(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "restore_multisound_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "restore_multisound_devicetype"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "SoundItem"

    if-eqz v7, :cond_0

    const-string/jumbo v0, "restoreSeparateAppSound( restore apps : null )"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "restoreSeparateAppSound( restore apps : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " )"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v5, :cond_1

    const-string/jumbo v0, "restoreSeparateAppSound( restore Device : -1 )"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v7, "restoreSeparateAppSound( restore Device : "

    invoke-static {v6, v7, v9, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "audio"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v6, v10, :cond_3

    const/16 v11, 0x8

    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v5, 0x0

    move v10, v5

    move v15, v10

    const/16 v16, 0x0

    :goto_1
    if-ge v15, v14, :cond_7

    aget-object v0, v13, v15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v17, v13

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v13, v11, v5}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    add-int/lit8 v10, v10, 0x1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v16, v0

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v5, v16

    :try_start_1
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v5

    :goto_2
    :try_start_2
    new-instance v5, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v5, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v5, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->addToMultiSoundSupportedList(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_4

    :goto_3
    const-string/jumbo v5, "restoreSeparateAppSound::IllegalArgumentException"

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_4
    const-string/jumbo v5, "restoreSeparateAppSound::NameNotFoundException"

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_5
    move-object/from16 v17, v13

    move-object/from16 v5, v16

    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v17

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v5, v16

    if-lez v10, :cond_8

    const-string/jumbo v0, "restoreSeparateAppSound::setMultiSoundOn( added = "

    invoke-static {v10, v0, v9, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "multisound_app"

    invoke-static {v2, v0, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "multisound_devicetype"

    invoke-static {v2, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/media/AudioManager;->setMultiSoundOn(ZZ)V

    :cond_8
    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, -0x1

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    return-void
.end method

.method public static setStreamVolume(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "/Settings/Sound/ChargingSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "/Settings/Sound/VibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "/Settings/Sound/TouchSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "/Settings/Sound/NotificationSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_10
    const-string v0, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_11
    const-string v0, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_12
    const-string v0, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "/Settings/Sound/ChargingVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_14
    const-string v0, "/Settings/Sound/RingerMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_15
    const-string v0, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_16
    const-string v0, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_17
    const-string v0, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    goto :goto_1

    :sswitch_18
    const-string v0, "/Settings/Sound/KeyboardSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v0, "expectedResult"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - test case size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SoundItem"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_18
        -0x782a3dcd -> :sswitch_17
        -0x73578aa6 -> :sswitch_16
        -0x6b6f0411 -> :sswitch_15
        -0x6afc11a3 -> :sswitch_14
        -0x5e0b3bbc -> :sswitch_13
        -0x48073965 -> :sswitch_12
        -0x3aba98f7 -> :sswitch_11
        -0x1ddcc5dc -> :sswitch_10
        -0x1047e935 -> :sswitch_f
        -0x738eff9 -> :sswitch_e
        -0x1c60ab3 -> :sswitch_d
        0x2f7817b -> :sswitch_c
        0xbeb618c -> :sswitch_b
        0x185c16a6 -> :sswitch_a
        0x1f4906e2 -> :sswitch_9
        0x2013531b -> :sswitch_8
        0x33032f17 -> :sswitch_7
        0x3c0025d6 -> :sswitch_6
        0x475f43c1 -> :sswitch_5
        0x4bdb5a96 -> :sswitch_4
        0x513c31d9 -> :sswitch_3
        0x5d79ff6d -> :sswitch_2
        0x75271e3d -> :sswitch_1
        0x7e84f78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    const/16 v3, 0xa

    new-instance v7, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v7, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, ", uri="

    const-string/jumbo v10, "supportAch"

    const-string/jumbo v11, "sep_Index"

    const-string/jumbo v12, "multisound_app"

    const-string v13, "current Sep Index(0) is invalid"

    const-string/jumbo v15, "multisound_devicetype"

    const/16 v16, 0x0

    const-string/jumbo v6, "mode_ringer"

    const-string v4, "SoundItem"

    const/4 v14, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "/Settings/Sound/RingVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "/Settings/Sound/AccessibilityVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "/Settings/Sound/BixbyVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "/Settings/Sound/AlarmVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "/Settings/Sound/MediaVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "/Settings/Sound/ChargingSound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "/Settings/Sound/NotificationVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "/Settings/Sound/ChromeCastModeEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "/Settings/Sound/VibrationPattern"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "/Settings/Sound/WaitingToneVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_16
    const-string v5, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v5, "/Settings/Sound/SystemSoundTheme"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_18
    const-string v5, "/Settings/Sound/SystemVolume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_19
    const-string v5, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1a
    const-string v5, "/Settings/Sound/TouchVibrationMagnitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1b
    const-string v5, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_1c
    const-string v5, "/Settings/Sound/TouchSound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1d
    const-string v5, "/Settings/Sound/NotificationVibrationMagnitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1e
    const-string v5, "/Settings/Sound/NotificationSound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1f
    const-string v5, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_20
    const-string v5, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_21
    const-string v5, "/Settings/Sound/VibrationSoundEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_22
    const-string v5, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    move v0, v3

    goto/16 :goto_1

    :sswitch_23
    const-string v5, "/Settings/Sound/CallVibrationMagnitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_24
    const-string v5, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_25
    const-string v5, "/Settings/Sound/MediaVibrationMagnitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_26
    const-string v5, "/Settings/Sound/ChargingVibration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_27
    const-string v5, "/Settings/Sound/RingerMode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_28
    const-string v5, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_29
    const-string v5, "/Settings/Sound/HardPressVibrationMagnitude"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2a
    const-string v5, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    move v0, v14

    goto :goto_1

    :sswitch_2b
    const-string v5, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2c
    const-string v5, "/Settings/Sound/KeyboardSound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2

    :cond_2d
    move v0, v2

    :goto_2
    const-string/jumbo v1, "sip_key_feedback_vibration"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1
    invoke-static {v8, v6, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_6e

    invoke-static {v14}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v0

    invoke-static {v1, v14}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_2f

    const/4 v2, 0x1

    :cond_2f
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_2
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v0

    invoke-static {v1, v3}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_30

    const/4 v2, 0x1

    :cond_30
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v0, :cond_6e

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, -0x1

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v1, v17

    goto :goto_3

    :cond_31
    const/4 v0, -0x1

    move v1, v0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_32

    const/4 v2, 0x1

    :cond_32
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_4
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_36

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "bixby_voice_isenable"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_34

    :goto_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_33
    :goto_5
    move v0, v2

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_34
    :try_start_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_35

    const/4 v0, 0x1

    goto :goto_6

    :cond_35
    move v0, v2

    :goto_6
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_36
    if-eqz v3, :cond_33

    goto :goto_4

    :goto_8
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_5

    :goto_9
    if-eqz v0, :cond_6e

    const/16 v3, 0xb

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v0

    invoke-static {v1, v3}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_37

    const/4 v2, 0x1

    :cond_37
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "sync_vibration_with_notification"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_38

    const/4 v2, 0x1

    :cond_38
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup sync with notification value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_6
    const-string/jumbo v0, "ringtone_vibration_sep_index_2"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const v1, 0xc373

    if-ne v1, v0, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup dual sim ringtone pattern sepIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isInstalledClockApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isUseGlobalAlarmVolume(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v3, v0, :cond_3b

    const/4 v2, 0x1

    :cond_3b
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_8
    const-string/jumbo v0, "voip_extra_volume"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Voip extra volume = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_9
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "sync_vibration_with_ringtone"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup sync with ringtone value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_a
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v3, v0, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_b
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-nez v0, :cond_6e

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v8, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_3f
    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_40

    const/4 v2, 0x1

    :cond_40
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_a

    :cond_41
    move v0, v2

    goto :goto_b

    :cond_42
    :goto_a
    const/4 v0, 0x1

    :goto_b
    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_43

    const/4 v2, 0x1

    :cond_43
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_d
    const-string v0, "charging_sounds_enabled"

    const/4 v1, 0x1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_44

    move v2, v1

    :cond_44
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_e
    const/4 v1, 0x1

    const-string v0, "adjust_media_volume_only"

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_45

    const/4 v2, 0x1

    :cond_45
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "navigation_gestures_vibrate"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_46

    const/4 v2, 0x1

    :cond_46
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_10
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "sync_vibration_with_ringtone_2"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_47

    const/4 v2, 0x1

    :cond_47
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup sync with ringtone dual sim value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_11
    invoke-static {v8, v6, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_6e

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v3, v0, :cond_48

    const/4 v2, 0x1

    :cond_48
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_12
    const-string/jumbo v0, "wifispeaker_chromecast_mode_enabled"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_49

    const/4 v2, 0x1

    :cond_49
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v8, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    if-eqz v3, :cond_4f

    const-string/jumbo v1, "ringtone_vibration_sep_index"

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    sget-object v3, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v8, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->sPatternLookupTable:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper$PatternLookupInfo;

    iget v8, v8, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper$PatternLookupInfo;->mSepIndex:I

    if-ne v1, v8, :cond_4b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_c
    const/4 v6, -0x1

    goto :goto_d

    :cond_4c
    const/4 v3, -0x1

    goto :goto_c

    :goto_d
    if-ne v3, v6, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "current Sep index "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v11}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v5, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const v0, 0xc373

    if-ne v0, v1, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "backup ringtone pattern sepIndex="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_4f
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "backup ringtone pattern uri="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_14
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getDefaultNotificationTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_15
    invoke-static {v8, v6, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_6e

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_6e

    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v3, v0, :cond_50

    const/4 v2, 0x1

    :cond_50
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_16
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v0, :cond_6e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_notification_vibration_pattern"

    invoke-static {v8, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v3, "notification_vibration_sep_index"

    const v5, 0xc372

    invoke-static {v8, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6, v11}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v6, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-ne v5, v3, :cond_51

    const/4 v2, 0x1

    :cond_51
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "backup notification pattern sepIndex="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "Galaxy"

    if-eqz v1, :cond_52

    move-object v0, v3

    :cond_52
    const-string v1, "Open_theme"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "Custom"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {v7, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_18
    invoke-static {v8, v6, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_6e

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v0

    invoke-static {v1, v3}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_53

    const/4 v2, 0x1

    :cond_53
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_19
    const-string/jumbo v0, "volumelimit_set_password"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo v0, "volumelimit_secure_password"

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_54
    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_55

    const/4 v2, 0x1

    :cond_55
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "supportDC"

    if-eqz v0, :cond_56

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_e

    :cond_56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v8, v0, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v14, v0, :cond_57

    const/4 v2, 0x1

    :cond_57
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1b
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "AIO"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_f

    :cond_58
    const/4 v0, 0x1

    goto :goto_10

    :cond_59
    :goto_f
    move v0, v2

    :goto_10
    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_5a

    const/4 v2, 0x1

    :cond_5a
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1c
    const-string/jumbo v0, "sound_effects_enabled"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1d
    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const/4 v1, 0x5

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_5c

    const/4 v2, 0x1

    :cond_5c
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1e
    invoke-static {v14}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getDefaultNotificationTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v14}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "camera_feedback_vibrate"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_5d

    const/4 v2, 0x1

    :cond_5d
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_20
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-nez v0, :cond_6e

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, -0x1

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_11

    :cond_5e
    const/4 v0, -0x1

    move v1, v0

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_5f

    const/4 v2, 0x1

    :cond_5f
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_21
    const-string/jumbo v0, "vibration_sound_enabled"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_60

    const/4 v2, 0x1

    :cond_60
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup vibration sound enabled value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_22
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "dialing_keypad_vibrate"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_61

    const/4 v2, 0x1

    :cond_61
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_23
    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    const/4 v1, 0x5

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_62

    const/4 v2, 0x1

    :cond_62
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_24
    const-string v0, "dtmf_tone"

    const/4 v1, 0x1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_63

    const/4 v2, 0x1

    :cond_63
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_25
    const-string v0, "media_vibration_intensity"

    const/4 v1, 0x5

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_64

    const/4 v2, 0x1

    :cond_64
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "charging_vibration_enabled"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_65

    const/4 v2, 0x1

    :cond_65
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_27
    invoke-static {v8, v6, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v14, v0, :cond_66

    const/4 v2, 0x1

    :cond_66
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_13

    :pswitch_28
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v0, :cond_6e

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {v8, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_67
    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_68

    const/4 v2, 0x1

    :cond_68
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_13

    :pswitch_29
    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const/4 v1, 0x4

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_69

    const/4 v2, 0x1

    :cond_69
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_13

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_6a

    const/4 v2, 0x1

    :cond_6a
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_13

    :pswitch_2b
    const-string/jumbo v0, "volumelimit_on"

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "volume_limiter_value"

    const/16 v1, 0x9

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_12

    :cond_6b
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_6c

    const/4 v2, 0x1

    :cond_6c
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_13

    :pswitch_2c
    const-string/jumbo v0, "sip_key_feedback_sound"

    const/4 v1, 0x1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_6d

    move v2, v1

    :cond_6d
    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    :cond_6e
    :goto_13
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_2c
        -0x782a3dcd -> :sswitch_2b
        -0x73578aa6 -> :sswitch_2a
        -0x6bf572c7 -> :sswitch_29
        -0x6b6f0411 -> :sswitch_28
        -0x6afc11a3 -> :sswitch_27
        -0x5e0b3bbc -> :sswitch_26
        -0x499d027b -> :sswitch_25
        -0x48073965 -> :sswitch_24
        -0x3d7b48a7 -> :sswitch_23
        -0x3aba98f7 -> :sswitch_22
        -0x34738d79 -> :sswitch_21
        -0x1ddcc5dc -> :sswitch_20
        -0x1047e935 -> :sswitch_1f
        -0x738eff9 -> :sswitch_1e
        -0x4d0f05a -> :sswitch_1d
        -0x1c60ab3 -> :sswitch_1c
        0x2f7817b -> :sswitch_1b
        0x6fd6c20 -> :sswitch_1a
        0xbeb618c -> :sswitch_19
        0xd87d726 -> :sswitch_18
        0x11841806 -> :sswitch_17
        0x185c16a6 -> :sswitch_16
        0x185f7a7c -> :sswitch_15
        0x1f4906e2 -> :sswitch_14
        0x2013531b -> :sswitch_13
        0x24ca5928 -> :sswitch_12
        0x25357f22 -> :sswitch_11
        0x321fa59b -> :sswitch_10
        0x33032f17 -> :sswitch_f
        0x3c0025d6 -> :sswitch_e
        0x475f43c1 -> :sswitch_d
        0x4bdb5a96 -> :sswitch_c
        0x513c31d9 -> :sswitch_b
        0x55700381 -> :sswitch_a
        0x57a3f340 -> :sswitch_9
        0x5d79ff6d -> :sswitch_8
        0x6da1c82e -> :sswitch_7
        0x71d59ff6 -> :sswitch_6
        0x74524189 -> :sswitch_5
        0x748819c5 -> :sswitch_4
        0x75271e3d -> :sswitch_3
        0x76ac0a6b -> :sswitch_2
        0x7b4f25a7 -> :sswitch_1
        0x7e84f78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 4

    new-instance p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "/Settings/Sound/ChargingSound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "/Settings/Sound/ChromeCastModeEnabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "/Settings/Sound/VibrationPattern"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "/Settings/Sound/TouchVibrationMagnitude"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "/Settings/Sound/TouchSound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "/Settings/Sound/NotificationVibrationMagnitude"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "/Settings/Sound/NotificationSound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "/Settings/Sound/VibrationSoundEnabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "/Settings/Sound/CallVibrationMagnitude"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "/Settings/Sound/MediaVibrationMagnitude"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v3, "/Settings/Sound/ChargingVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v3, "/Settings/Sound/RingerMode"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v3, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_20
    const-string v3, "/Settings/Sound/HardPressVibrationMagnitude"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_21
    const-string v3, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_22
    const-string v3, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_0

    :cond_22
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_23
    const-string v3, "/Settings/Sound/KeyboardSound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_0

    :cond_23
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_24

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :cond_24
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result p1

    if-eqz p1, :cond_29

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_25

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :cond_25
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_1

    :pswitch_3
    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :pswitch_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eqz p1, :cond_26

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_1

    :cond_26
    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_27

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :cond_27
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto :goto_1

    :cond_28
    iput-object v0, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_1

    :pswitch_7
    iput-object v1, p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    :cond_29
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_23
        -0x782a3dcd -> :sswitch_22
        -0x73578aa6 -> :sswitch_21
        -0x6bf572c7 -> :sswitch_20
        -0x6b6f0411 -> :sswitch_1f
        -0x6afc11a3 -> :sswitch_1e
        -0x5e0b3bbc -> :sswitch_1d
        -0x499d027b -> :sswitch_1c
        -0x48073965 -> :sswitch_1b
        -0x3d7b48a7 -> :sswitch_1a
        -0x3aba98f7 -> :sswitch_19
        -0x34738d79 -> :sswitch_18
        -0x1ddcc5dc -> :sswitch_17
        -0x1047e935 -> :sswitch_16
        -0x738eff9 -> :sswitch_15
        -0x4d0f05a -> :sswitch_14
        -0x1c60ab3 -> :sswitch_13
        0x2f7817b -> :sswitch_12
        0x6fd6c20 -> :sswitch_11
        0xbeb618c -> :sswitch_10
        0x185c16a6 -> :sswitch_f
        0x1f4906e2 -> :sswitch_e
        0x2013531b -> :sswitch_d
        0x24ca5928 -> :sswitch_c
        0x321fa59b -> :sswitch_b
        0x33032f17 -> :sswitch_a
        0x3c0025d6 -> :sswitch_9
        0x475f43c1 -> :sswitch_8
        0x4bdb5a96 -> :sswitch_7
        0x513c31d9 -> :sswitch_6
        0x57a3f340 -> :sswitch_5
        0x5d79ff6d -> :sswitch_4
        0x71d59ff6 -> :sswitch_3
        0x74524189 -> :sswitch_2
        0x75271e3d -> :sswitch_1
        0x7e84f78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.settings.Settings$SecSoundSystemSoundSettingsActivity"

    const-string v1, "com.android.settings.Settings$VibrationSystemIntensitySettingsActivity"

    const-string v2, "com.android.settings.Settings$SoundSettingsActivity"

    const-string v3, "com.android.settings"

    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x23

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x1f

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "/Settings/Sound/ChargingSound"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "/Settings/Sound/ChromeCastModeEnabled"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "/Settings/Sound/VibrationPattern"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "/Settings/Sound/TouchVibrationMagnitude"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "/Settings/Sound/TouchSound"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "/Settings/Sound/NotificationVibrationMagnitude"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "/Settings/Sound/NotificationSound"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "/Settings/Sound/VibrationSoundEnabled"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "/Settings/Sound/CallVibrationMagnitude"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "/Settings/Sound/MediaVibrationMagnitude"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v5, "/Settings/Sound/ChargingVibration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v5, "/Settings/Sound/RingerMode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v5, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_20
    const-string v5, "/Settings/Sound/HardPressVibrationMagnitude"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_21
    const-string v5, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_22
    const-string v5, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_0

    :cond_22
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_23
    const-string v5, "/Settings/Sound/KeyboardSound"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_0

    :cond_23
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {v3, v0, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    const-string p2, "com.android.settings.Settings$SecVolumeSettingsActivity"

    invoke-static {v3, p2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v3, v2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {v3, v2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {v3, v2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v3, v1, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_6
    invoke-static {v3, v2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_1

    :cond_24
    const-string p2, "com.samsung.android.setting.multisound"

    const-string v0, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    invoke-static {p2, v0, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_8
    invoke-static {v3, v1, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {v3, v1, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_a
    const-string p2, "com.android.settings.Settings$SecVolumeLimiterSettingsActivity"

    invoke-static {v3, p2, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_b
    invoke-static {v3, v0, p0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_25
    :goto_1
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_23
        -0x782a3dcd -> :sswitch_22
        -0x73578aa6 -> :sswitch_21
        -0x6bf572c7 -> :sswitch_20
        -0x6b6f0411 -> :sswitch_1f
        -0x6afc11a3 -> :sswitch_1e
        -0x5e0b3bbc -> :sswitch_1d
        -0x499d027b -> :sswitch_1c
        -0x48073965 -> :sswitch_1b
        -0x3d7b48a7 -> :sswitch_1a
        -0x3aba98f7 -> :sswitch_19
        -0x34738d79 -> :sswitch_18
        -0x1ddcc5dc -> :sswitch_17
        -0x1047e935 -> :sswitch_16
        -0x738eff9 -> :sswitch_15
        -0x4d0f05a -> :sswitch_14
        -0x1c60ab3 -> :sswitch_13
        0x2f7817b -> :sswitch_12
        0x6fd6c20 -> :sswitch_11
        0xbeb618c -> :sswitch_10
        0x185c16a6 -> :sswitch_f
        0x1f4906e2 -> :sswitch_e
        0x2013531b -> :sswitch_d
        0x24ca5928 -> :sswitch_c
        0x321fa59b -> :sswitch_b
        0x33032f17 -> :sswitch_a
        0x3c0025d6 -> :sswitch_9
        0x475f43c1 -> :sswitch_8
        0x4bdb5a96 -> :sswitch_7
        0x513c31d9 -> :sswitch_6
        0x57a3f340 -> :sswitch_5
        0x5d79ff6d -> :sswitch_4
        0x71d59ff6 -> :sswitch_3
        0x74524189 -> :sswitch_2
        0x75271e3d -> :sswitch_1
        0x7e84f78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v13}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    return-object v15

    :cond_0
    const-string v15, "audio"

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "restore call vibration magnitude value="

    const/high16 v17, 0x40800000    # 4.0f

    const-string/jumbo v8, "supportAch"

    const-string v11, ", uri="

    const-string v12, ", sepIndex="

    const-string v9, ", id="

    const-string v7, "legacyId="

    const-string/jumbo v4, "sep_Index"

    const-string/jumbo v5, "sync_vibration_with_ringtone"

    const-string/jumbo v10, "sync_vibration_with_notification"

    move-object/from16 v18, v15

    const-string v15, "Do not restore!"

    move-object/from16 v19, v13

    const-string v13, "SoundItem"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    move-object/from16 v20, v8

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x2c

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/RingVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x2b

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/AccessibilityVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x2a

    goto/16 :goto_2

    :sswitch_3
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x29

    goto/16 :goto_2

    :sswitch_4
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/BixbyVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x28

    goto/16 :goto_2

    :sswitch_5
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x27

    goto/16 :goto_2

    :sswitch_6
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x26

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/AlarmVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x25

    goto/16 :goto_2

    :sswitch_8
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x24

    goto/16 :goto_2

    :sswitch_9
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x23

    goto/16 :goto_2

    :sswitch_a
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/MediaVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0x22

    goto/16 :goto_2

    :sswitch_b
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0x21

    goto/16 :goto_2

    :sswitch_c
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v1, 0x20

    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/ChargingSound"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x1f

    goto/16 :goto_2

    :sswitch_e
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x1e

    goto/16 :goto_2

    :sswitch_f
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x1d

    goto/16 :goto_2

    :sswitch_10
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x1c

    goto/16 :goto_2

    :sswitch_11
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NotificationVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x1b

    goto/16 :goto_2

    :sswitch_12
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/ChromeCastModeEnabled"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v1, 0x1a

    goto/16 :goto_2

    :sswitch_13
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VibrationPattern"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x19

    goto/16 :goto_2

    :sswitch_14
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v1, 0x18

    goto/16 :goto_2

    :sswitch_15
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/WaitingToneVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x17

    goto/16 :goto_2

    :sswitch_16
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0x16

    goto/16 :goto_2

    :sswitch_17
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SystemSoundTheme"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_18
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SystemVolume"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_19
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_1a
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/TouchVibrationMagnitude"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_1b
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_1c
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/TouchSound"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v1, 0x10

    goto/16 :goto_2

    :sswitch_1d
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NotificationVibrationMagnitude"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_1e
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/NotificationSound"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_1f
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_20
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_21
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VibrationSoundEnabled"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_22
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_23
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/CallVibrationMagnitude"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_24
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_25
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/MediaVibrationMagnitude"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_1

    :cond_26
    const/4 v1, 0x7

    goto/16 :goto_2

    :sswitch_26
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/ChargingVibration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_1

    :cond_27
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_27
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/RingerMode"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_1

    :cond_28
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_28
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_1

    :cond_29
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_29
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/HardPressVibrationMagnitude"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_1

    :cond_2a
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_2a
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_1

    :cond_2b
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_2b
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_1

    :cond_2c
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2c
    move-object/from16 v20, v8

    const-string v8, "/Settings/Sound/KeyboardSound"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    :goto_1
    goto/16 :goto_0

    :cond_2d
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    :cond_2e
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_7

    :pswitch_0
    const-string/jumbo v0, "sip_key_feedback_vibration"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :pswitch_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_3

    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_3

    :pswitch_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_3

    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2e

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v14, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore sync with notification value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_5
    const-string/jumbo v0, "ringtone_vibration_sep_index_2"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore dual sim ringtone pattern sepIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto :goto_3

    :pswitch_7
    const-string/jumbo v0, "voip_extra_volume"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restore Voip Extra Volume Value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_8
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2e

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v14, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore sync with ringtone value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto/16 :goto_3

    :pswitch_a
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_b
    const-string v0, "charging_sounds_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_c
    new-instance v1, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v1, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeMode(IZ)V

    goto/16 :goto_3

    :pswitch_d
    const-string/jumbo v0, "navigation_gestures_vibrate"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_e
    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "sync_vibration_with_ringtone_2"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore sync with ringtone dual sim value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto/16 :goto_3

    :pswitch_10
    const-string/jumbo v0, "wifispeaker_chromecast_mode_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_11
    const-string v1, "Restoration of ringtone pattern!"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string v8, "default_vibration_pattern"

    if-eqz v1, :cond_36

    const/4 v1, -0x1

    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_30

    const/16 v10, 0x2f

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v10, 0x1

    add-int/2addr v4, v10

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v0, v6, v4}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->getIdByLegacyId(Landroid/content/Context;II)I

    move-result v10

    if-ne v10, v1, :cond_2f

    const-string/jumbo v0, "skip restoration ringtone pattern by legacyId"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2f
    invoke-static {v0, v6, v10}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->getSepIndexById(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v7, v9, v4, v10, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v1, v13}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v4, v1

    goto :goto_4

    :cond_30
    const/4 v6, 0x0

    invoke-static {v0, v6, v4}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->findIdByQuery(Landroid/content/Context;II)I

    move-result v10

    if-ne v10, v1, :cond_31

    const-string/jumbo v0, "skip restoration ringtone pattern by sepIndex"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_31
    :goto_4
    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN:Ljava/util/List;

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sget-object v7, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    if-lt v10, v7, :cond_32

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_33

    :cond_32
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    add-int/2addr v1, v6

    if-lt v10, v1, :cond_34

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_33
    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "ringtone_vibration_sep_index"

    invoke-static {v14, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restore ringtone pattern sepIndex="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v0, v13}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2e

    iget-object v0, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttributeBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_35

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, v17

    if-lez v0, :cond_35

    if-eqz v1, :cond_35

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    if-eqz v0, :cond_2e

    :cond_35
    const/4 v0, 0x0

    invoke-static {v14, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Sync with ringtone is turned off by the OneUI version of the backup device."

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_36
    const/16 v1, 0x2f

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_37

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_37
    invoke-static {v14, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "restore ringtone pattern uri="

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_12
    const/16 v1, 0x100

    invoke-static {v0, v1, v6}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_13
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v1, v20

    const-string v5, "Restoration of notification pattern!"

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v5, :cond_2e

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_39

    const/16 v8, 0x2f

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v8, 0x1

    add-int/2addr v4, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v8, v4}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->getIdByLegacyId(Landroid/content/Context;II)I

    move-result v6

    if-ne v6, v5, :cond_38

    const-string/jumbo v0, "skip restoration notification pattern by legacyId"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_38
    invoke-static {v0, v8, v6}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->getSepIndexById(Landroid/content/Context;II)I

    move-result v5

    invoke-static {v7, v9, v4, v6, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v5, v13}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v4, v5

    goto :goto_5

    :cond_39
    const/4 v8, 0x1

    invoke-static {v0, v8, v4}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->findIdByQuery(Landroid/content/Context;II)I

    move-result v6

    if-ne v6, v5, :cond_3a

    const-string/jumbo v0, "skip restoration notification pattern by sepIndex"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3a
    :goto_5
    sget-object v5, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v8

    sget-object v8, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    if-lt v6, v8, :cond_3b

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3c

    :cond_3b
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    if-lt v6, v5, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_3c
    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "default_notification_vibration_pattern"

    invoke-static {v14, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "notification_vibration_sep_index"

    invoke-static {v14, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restore notification pattern sepIndex="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v5, v11, v0, v13}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_2e

    iget-object v0, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttributeBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_3e

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, v17

    if-lez v0, :cond_3e

    if-nez v1, :cond_2e

    :cond_3e
    const/4 v0, 0x0

    invoke-static {v14, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Sync with notification is turned off by the OneUI version of the backup device."

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_15
    const-string/jumbo v0, "system_sound"

    invoke-static {v14, v0, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    :pswitch_16
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->setStreamVolume(Landroid/content/Context;II)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v2, 0x1

    const-string/jumbo v0, "volumelimit_set_password"

    invoke-static {v14, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "volumelimit_secure_password"

    invoke-static {v14, v0, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    :pswitch_18
    const-string/jumbo v1, "supportDC"

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttributeBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez v1, :cond_43

    const/4 v0, 0x5

    if-ne v2, v0, :cond_3f

    const/4 v9, 0x3

    goto :goto_6

    :cond_3f
    const/4 v3, 0x3

    if-lt v2, v3, :cond_40

    const/4 v9, 0x2

    goto :goto_6

    :cond_40
    const/4 v0, 0x1

    if-lt v2, v0, :cond_43

    const/4 v9, 0x1

    goto :goto_6

    :cond_41
    const/4 v0, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_43

    if-ne v2, v3, :cond_42

    move v9, v0

    goto :goto_6

    :cond_42
    const/4 v0, 0x2

    if-ne v2, v0, :cond_43

    move v9, v3

    goto :goto_6

    :cond_43
    move v9, v2

    :goto_6
    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v14, v0, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore touch vibration magnitude value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_19
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1a
    const-string/jumbo v0, "sound_effects_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1b
    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1c
    const/4 v1, 0x2

    invoke-static {v0, v1, v6}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1d
    const-string v0, "camera_feedback_vibrate"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1e
    const-string/jumbo v1, "restore_multisound_devicetype"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v14, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreSeparateAppSound(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_1f
    const-string/jumbo v0, "vibration_sound_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore vibration sound enabled value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_20
    const-string v0, "dialing_keypad_vibrate"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_21
    move-object/from16 v1, v19

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v14, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_22
    const-string v0, "dtmf_tone"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_23
    const-string v0, "media_vibration_intensity"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore media vibration magnitude value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_24
    const-string v0, "charging_vibration_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_25
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v15, v18

    invoke-virtual {v15, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto/16 :goto_3

    :pswitch_26
    const-string/jumbo v1, "restore_multisound_app"

    invoke-static {v14, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreSeparateAppSound(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_27
    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore hard press vibration magnitude value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_28
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "haptic_feedback_enabled"

    if-nez v0, :cond_44

    const/4 v0, 0x0

    invoke-static {v14, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_44
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v14, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_29
    move-object/from16 v15, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "volumelimit_on"

    const/4 v2, 0x1

    invoke-static {v14, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "volume_limiter_value"

    invoke-static {v14, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v15, v2}, Landroid/media/AudioManager;->enableVolumeLimiter(Z)V

    invoke-virtual {v15, v0}, Landroid/media/AudioManager;->setVolumeLimiterValue(I)V

    goto/16 :goto_3

    :pswitch_2a
    const-string/jumbo v0, "sip_key_feedback_sound"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :goto_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_2c
        -0x782a3dcd -> :sswitch_2b
        -0x73578aa6 -> :sswitch_2a
        -0x6bf572c7 -> :sswitch_29
        -0x6b6f0411 -> :sswitch_28
        -0x6afc11a3 -> :sswitch_27
        -0x5e0b3bbc -> :sswitch_26
        -0x499d027b -> :sswitch_25
        -0x48073965 -> :sswitch_24
        -0x3d7b48a7 -> :sswitch_23
        -0x3aba98f7 -> :sswitch_22
        -0x34738d79 -> :sswitch_21
        -0x1ddcc5dc -> :sswitch_20
        -0x1047e935 -> :sswitch_1f
        -0x738eff9 -> :sswitch_1e
        -0x4d0f05a -> :sswitch_1d
        -0x1c60ab3 -> :sswitch_1c
        0x2f7817b -> :sswitch_1b
        0x6fd6c20 -> :sswitch_1a
        0xbeb618c -> :sswitch_19
        0xd87d726 -> :sswitch_18
        0x11841806 -> :sswitch_17
        0x185c16a6 -> :sswitch_16
        0x185f7a7c -> :sswitch_15
        0x1f4906e2 -> :sswitch_14
        0x2013531b -> :sswitch_13
        0x24ca5928 -> :sswitch_12
        0x25357f22 -> :sswitch_11
        0x321fa59b -> :sswitch_10
        0x33032f17 -> :sswitch_f
        0x3c0025d6 -> :sswitch_e
        0x475f43c1 -> :sswitch_d
        0x4bdb5a96 -> :sswitch_c
        0x513c31d9 -> :sswitch_b
        0x55700381 -> :sswitch_a
        0x57a3f340 -> :sswitch_9
        0x5d79ff6d -> :sswitch_8
        0x6da1c82e -> :sswitch_7
        0x71d59ff6 -> :sswitch_6
        0x74524189 -> :sswitch_5
        0x748819c5 -> :sswitch_4
        0x75271e3d -> :sswitch_3
        0x76ac0a6b -> :sswitch_2
        0x7b4f25a7 -> :sswitch_1
        0x7e84f78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_26
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
