.class public Lcom/samsung/android/settings/eternal/provider/items/SoundItem;
.super Ljava/lang/Object;
.source "SoundItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 1169
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    .line 1168
    invoke-static {p1, p0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    .line 1171
    invoke-virtual {p0}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "SoundItem"

    const-string p1, "back up only the internal notification sound."

    .line 1172
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 1175
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const p2, 0x1040c2d

    .line 1177
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1176
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Silent"

    :cond_1
    return-object p0
.end method

.method private getDefaultNotificationTitle(I)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x2

    const-string v0, ""

    if-ne p1, p0, :cond_0

    .line 1086
    invoke-static {p1}, Landroid/media/RingtoneManager;->getOMCRingtonePropertyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, p0, :cond_1

    const-string p0, "ro.config.notification_sound"

    .line 1090
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 p0, 0x100

    if-ne p1, p0, :cond_2

    const-string p0, "ro.config.notification_sound_2"

    .line 1092
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const-string p0, "."

    .line 1096
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    const/16 p1, 0x2e

    .line 1097
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const-string p0, "content://media/internal/audio/media"

    .line 1184
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1185
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {v0, p2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1187
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "title"

    .line 1191
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1190
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_id"

    .line 1193
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1192
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1195
    invoke-static {p1, p2, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 1198
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1201
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string p0, "Silent"

    .line 1203
    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 1205
    invoke-static {p1, p2, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method private restoreSeparateAppSound(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p1

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "restore_multisound_app"

    .line 1105
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "restore_multisound_devicetype"

    const/4 v5, -0x1

    .line 1106
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "SoundItem"

    if-eqz v7, :cond_0

    const-string v0, "restoreSeparateAppSound( restore apps : null )"

    .line 1108
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1111
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSeparateAppSound( restore apps : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " )"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v5, :cond_1

    const-string v0, "restoreSeparateAppSound( restore Device : -1 )"

    .line 1114
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1117
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreSeparateAppSound( restore Device : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    .line 1119
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v6, v11, :cond_3

    const/16 v10, 0x8

    .line 1129
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ":"

    .line 1130
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1132
    array-length v14, v13

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v15, v14, :cond_7

    aget-object v0, v13, v15

    .line 1133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1135
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v18, v13

    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1136
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v5, v10, v13}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    add-int/lit8 v11, v11, 0x1

    .line 1138
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v16, v0

    goto :goto_2

    .line 1141
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v13, v16

    :try_start_2
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v5

    .line 1143
    :goto_2
    :try_start_3
    new-instance v5, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v5, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    .line 1144
    invoke-virtual {v5, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1145
    invoke-virtual {v5, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->addToMultiSoundSupportedList(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v16, v13

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v16, v13

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v18, v13

    :goto_3
    move-object/from16 v13, v16

    :goto_4
    const-string v5, "restoreSeparateAppSound::IllegalArgumentException"

    .line 1150
    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v18, v13

    :goto_5
    move-object/from16 v13, v16

    :goto_6
    const-string v5, "restoreSeparateAppSound::NameNotFoundException"

    .line 1148
    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_5
    move-object/from16 v18, v13

    move-object/from16 v13, v16

    :cond_6
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v18

    goto :goto_1

    :cond_7
    move-object/from16 v13, v16

    if-lez v11, :cond_8

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSeparateAppSound::setMultiSoundOn( added = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "multisound_app"

    .line 1156
    invoke-static {v2, v0, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "multisound_devicetype"

    .line 1157
    invoke-static {v2, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1158
    invoke-virtual {v7, v1, v5}, Landroid/media/AudioManager;->setMultiSoundOn(ZZ)V

    :cond_8
    const/4 v1, 0x0

    .line 1162
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, -0x1

    .line 1163
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 700
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/Settings/Sound/KeyboardVibration"

    .line 692
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

    goto/16 :goto_1

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

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v0, "expectedResult"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 733
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 737
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 738
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 743
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 744
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 712
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 714
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 716
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 717
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 722
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 723
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 699
    :pswitch_2
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 701
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 702
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance p1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 707
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 708
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_1
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 123
    new-instance v3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 126
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v2, v8

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "/Settings/Sound/ChargingSound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "/Settings/Sound/VibrationPattern"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "/Settings/Sound/TouchSound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "/Settings/Sound/NotificationSound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_16
    const-string v5, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_17
    const-string v5, "/Settings/Sound/ChargingVibration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_18
    const-string v5, "/Settings/Sound/RingerMode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_19
    const-string v5, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1a
    const-string v5, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v5, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move v2, v10

    goto :goto_1

    :sswitch_1c
    const-string v5, "/Settings/Sound/KeyboardSound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move v2, v9

    :goto_1
    const-string v5, ", uri="

    const-string v11, "multisound_devicetype"

    const-string v12, "multisound_app"

    const-string v13, "current Sep Index(0) is invalid"

    const-string v14, "supportAch"

    const-string v15, "sep_Index"

    const v6, 0xc373

    const/16 v16, 0x0

    const-string v7, "SoundItem"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 378
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v10

    goto :goto_2

    :cond_1d
    move v0, v9

    :goto_2
    const-string v1, "sip_key_feedback_vibration"

    .line 381
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_1e

    move v9, v10

    .line 384
    :cond_1e
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 472
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v0, :cond_45

    .line 475
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 476
    invoke-static {v4, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_1f
    move v0, v8

    .line 479
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_20

    move v9, v10

    .line 480
    :cond_20
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 313
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_45

    const-string v0, "sync_vibration_with_notification"

    .line 315
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_21

    move v9, v10

    .line 318
    :cond_21
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup sync with notification value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 237
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_45

    const-string v0, "ringtone_vibration_sep_index_2"

    .line 239
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_22

    .line 243
    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v6, v0, :cond_23

    move v9, v10

    .line 247
    :cond_23
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup dual sim ringtone pattern sepIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_4
    const-string v0, "voip_extra_volume"

    .line 181
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_24

    move v9, v10

    .line 184
    :cond_24
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voip extra volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 283
    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_45

    const-string v0, "sync_vibration_with_ringtone"

    .line 285
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_25

    move v9, v10

    .line 288
    :cond_25
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup sync with ringtone value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 434
    :pswitch_6
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-nez v0, :cond_45

    .line 436
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 437
    invoke-static {v4, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_26
    move-object/from16 v0, v16

    .line 439
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_27

    move v9, v10

    .line 440
    :cond_27
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 162
    :pswitch_7
    invoke-static {}, Lcom/samsung/android/settings/as/utils/VibUtils;->isVibrateWhileRingingActivatedAsDefault()Z

    move-result v0

    const-string v1, "vibrate_when_ringing"

    .line 163
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_28

    move v9, v10

    .line 166
    :cond_28
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_8
    const-string v0, "charging_sounds_enabled"

    .line 145
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_29

    move v9, v10

    .line 148
    :cond_29
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_9
    const-string v0, "adjust_media_volume_only"

    .line 172
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_2a

    move v9, v10

    .line 175
    :cond_2a
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 398
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "navigation_gestures_vibrate"

    .line 399
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_2b

    move v9, v10

    .line 402
    :cond_2b
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 298
    :pswitch_b
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_45

    const-string v0, "sync_vibration_with_ringtone_2"

    .line 300
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_2c

    move v9, v10

    .line 303
    :cond_2c
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup sync with ringtone dual sim value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 195
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104040f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    .line 197
    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    sget-boolean v2, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string v11, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    if-eqz v2, :cond_30

    const-string v1, "ringtone_vibration_sep_index"

    .line 201
    invoke-static {v4, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2d

    .line 205
    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2d
    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getLegacyIdBySepIndex(I)I

    move-result v2

    if-ne v2, v8, :cond_2e

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Sep index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is invalid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v10

    .line 214
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 217
    sget-boolean v4, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 218
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-ne v6, v1, :cond_2f

    move v9, v10

    :cond_2f
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup ringtone pattern sepIndex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_30
    const/16 v2, 0x2f

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v10

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 227
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup ringtone pattern uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_d
    const/16 v2, 0x100

    .line 136
    invoke-direct {v0, v2}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getDefaultNotificationTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 139
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 259
    :pswitch_e
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v0, :cond_45

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_notification_vibration_pattern"

    .line 262
    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const v2, 0xc372

    const-string v6, "notification_vibration_sep_index"

    .line 267
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v15, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 270
    sget-boolean v6, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v14, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 271
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-ne v2, v4, :cond_31

    move v9, v10

    :cond_31
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup notification pattern sepIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_f
    const-string v0, "volumelimit_set_password"

    .line 499
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "volumelimit_secure_password"

    .line 500
    invoke-static {v4, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_32
    move-object/from16 v0, v16

    .line 502
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_33

    move v9, v10

    .line 503
    :cond_33
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 347
    :pswitch_10
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTR"

    .line 348
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "AIO"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4

    :cond_34
    move v0, v10

    goto :goto_5

    :cond_35
    :goto_4
    move v0, v9

    :goto_5
    const-string v1, "lockscreen_sounds_enabled"

    .line 351
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_36

    move v9, v10

    .line 354
    :cond_36
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_11
    const-string v0, "sound_effects_enabled"

    .line 338
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_37

    move v9, v10

    .line 341
    :cond_37
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_12
    const/4 v2, 0x2

    .line 128
    invoke-direct {v0, v2}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getDefaultNotificationTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->getBackupNotificationSoundTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 131
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 407
    :pswitch_13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "camera_feedback_vibrate"

    .line 408
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_38

    move v9, v10

    .line 411
    :cond_38
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 446
    :pswitch_14
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-nez v0, :cond_45

    .line 449
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 450
    invoke-static {v4, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    :cond_39
    move v0, v8

    .line 453
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_3a

    move v9, v10

    .line 454
    :cond_3a
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 389
    :pswitch_15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "dialing_keypad_vibrate"

    .line 390
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_3b

    move v9, v10

    .line 393
    :cond_3b
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_16
    const-string v0, "dtmf_tone"

    .line 369
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_3c

    move v9, v10

    .line 372
    :cond_3c
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 416
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "charging_vibration_enabled"

    .line 417
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_3d

    move v9, v10

    .line 420
    :cond_3d
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_18
    const-string v0, "mode_ringer"

    const/4 v1, 0x2

    .line 426
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_3e

    move v9, v10

    .line 429
    :cond_3e
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    .line 460
    :pswitch_19
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v0, :cond_45

    .line 462
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 463
    invoke-static {v4, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_3f
    move-object/from16 v0, v16

    .line 465
    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_40

    move v9, v10

    .line 466
    :cond_40
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    .line 359
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "haptic_feedback_enabled"

    .line 360
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_41

    move v9, v10

    .line 363
    :cond_41
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :pswitch_1b
    const-string v0, "volumelimit_on"

    .line 488
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "volume_limiter_value"

    const/16 v1, 0x9

    .line 489
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_7

    :cond_42
    move v0, v9

    .line 492
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_43

    move v9, v10

    .line 493
    :cond_43
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :pswitch_1c
    const-string v0, "sip_key_feedback_sound"

    .line 154
    invoke-static {v4, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v10, v0, :cond_44

    move v9, v10

    .line 157
    :cond_44
    invoke-virtual {v3, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_45
    :goto_8
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_1c
        -0x782a3dcd -> :sswitch_1b
        -0x73578aa6 -> :sswitch_1a
        -0x6b6f0411 -> :sswitch_19
        -0x6afc11a3 -> :sswitch_18
        -0x5e0b3bbc -> :sswitch_17
        -0x48073965 -> :sswitch_16
        -0x3aba98f7 -> :sswitch_15
        -0x1ddcc5dc -> :sswitch_14
        -0x1047e935 -> :sswitch_13
        -0x738eff9 -> :sswitch_12
        -0x1c60ab3 -> :sswitch_11
        0x2f7817b -> :sswitch_10
        0xbeb618c -> :sswitch_f
        0x185c16a6 -> :sswitch_e
        0x1f4906e2 -> :sswitch_d
        0x2013531b -> :sswitch_c
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

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 2

    .line 604
    new-instance p0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "/Settings/Sound/ChargingSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "/Settings/Sound/VibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "/Settings/Sound/TouchSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "/Settings/Sound/NotificationSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "/Settings/Sound/VibrationSoundEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_17
    const-string v0, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_18
    const-string v0, "/Settings/Sound/ChargingVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_19
    const-string v0, "/Settings/Sound/RingerMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v0, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v0, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v0, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1d
    const-string v0, "/Settings/Sound/KeyboardSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 655
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 656
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1

    .line 658
    :cond_1e
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_1

    .line 636
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 637
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 647
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 648
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 650
    :cond_1f
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 666
    :pswitch_3
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 674
    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMultiSoundSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 675
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 677
    :cond_20
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 628
    :pswitch_5
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 629
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 631
    :cond_21
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_1

    .line 618
    :pswitch_6
    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 684
    :cond_22
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_1d
        -0x782a3dcd -> :sswitch_1c
        -0x73578aa6 -> :sswitch_1b
        -0x6b6f0411 -> :sswitch_1a
        -0x6afc11a3 -> :sswitch_19
        -0x5e0b3bbc -> :sswitch_18
        -0x48073965 -> :sswitch_17
        -0x3aba98f7 -> :sswitch_16
        -0x34738d79 -> :sswitch_15
        -0x1ddcc5dc -> :sswitch_14
        -0x1047e935 -> :sswitch_13
        -0x738eff9 -> :sswitch_12
        -0x1c60ab3 -> :sswitch_11
        0x2f7817b -> :sswitch_10
        0xbeb618c -> :sswitch_f
        0x185c16a6 -> :sswitch_e
        0x1f4906e2 -> :sswitch_d
        0x2013531b -> :sswitch_c
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
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 516
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 517
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "/Settings/Sound/ChargingSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "/Settings/Sound/VibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "/Settings/Sound/TouchSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "/Settings/Sound/NotificationSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_16
    const-string v0, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_17
    const-string v0, "/Settings/Sound/ChargingVibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_18
    const-string v0, "/Settings/Sound/RingerMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_19
    const-string v0, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1a
    const-string v0, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1b
    const-string v0, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1c
    const-string v0, "/Settings/Sound/KeyboardSound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x0

    :goto_0
    const-string p2, "com.android.settings.Settings$SecSoundSystemSoundSettingsActivity"

    const-string v0, "com.android.settings.Settings$SoundSettingsActivity"

    const-string v2, "com.android.settings"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 568
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 569
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 553
    :pswitch_1
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.Settings$SecVolumeSettingsActivity"

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 546
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimModel(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 547
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 562
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 563
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 542
    :pswitch_4
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 583
    :pswitch_5
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMultiSoundSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 584
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.setting.multisound"

    const-string v1, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 535
    :pswitch_6
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 536
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.Settings$VibrationSystemIntensitySettingsActivity"

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 589
    :pswitch_7
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.Settings$SecVolumeLimiterSettingsActivity"

    invoke-direct {p2, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 526
    :pswitch_8
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 596
    :cond_1d
    :goto_1
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 598
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_1c
        -0x782a3dcd -> :sswitch_1b
        -0x73578aa6 -> :sswitch_1a
        -0x6b6f0411 -> :sswitch_19
        -0x6afc11a3 -> :sswitch_18
        -0x5e0b3bbc -> :sswitch_17
        -0x48073965 -> :sswitch_16
        -0x3aba98f7 -> :sswitch_15
        -0x1ddcc5dc -> :sswitch_14
        -0x1047e935 -> :sswitch_13
        -0x738eff9 -> :sswitch_12
        -0x1c60ab3 -> :sswitch_11
        0x2f7817b -> :sswitch_10
        0xbeb618c -> :sswitch_f
        0x185c16a6 -> :sswitch_e
        0x1f4906e2 -> :sswitch_d
        0x2013531b -> :sswitch_c
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 793
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    :cond_0
    const-string v6, "audio"

    .line 797
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 799
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "/Settings/Sound/KeyboardVibration"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "/Settings/Sound/SyncWithNotification"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "/Settings/Sound/VibrationPatternSim2"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "/Settings/Sound/VoipExtraVolume"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "/Settings/Sound/SyncWithRingtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "/Settings/Sound/SeparateAppSoundName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v8, "/Settings/Sound/VibrationWhileRinging"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "/Settings/Sound/ChargingSound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v8, "/Settings/Sound/UseVolumeKeyForMedia"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v8, "/Settings/Sound/NavigationGesturesVibration"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v8, "/Settings/Sound/VibrationPattern"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "/Settings/Sound/NotificationSoundSim2"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "/Settings/Sound/NotificationVibrationPattern"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v8, "/Settings/Sound/VolumeLimiterPassword"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_10
    const-string v8, "/Settings/Sound/ScreenLockSound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_11
    const-string v8, "/Settings/Sound/TouchSound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "/Settings/Sound/NotificationSound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string v8, "/Settings/Sound/CameraFeedbackVibration"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "/Settings/Sound/SeparateAppSoundDevice"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_15
    const-string v8, "/Settings/Sound/DialingKeypadVibration"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_16
    const-string v8, "/Settings/Sound/DialingKeypadTone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_17
    const-string v8, "/Settings/Sound/ChargingVibration"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_18
    const-string v8, "/Settings/Sound/RingerMode"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_19
    const-string v8, "/Settings/Sound/SeparateMultiAppsSoundName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1a
    const-string v8, "/Settings/Sound/VibrationFeedback"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v8, "/Settings/Sound/VolumeLimiterLevel"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1c
    const-string v8, "/Settings/Sound/KeyboardSound"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v2, 0x0

    :goto_1
    const-string v13, "supportAch"

    const-string v14, ", uri="

    const-string v15, ", sepIndex="

    const-string v7, ", id="

    const-string v9, "legacyId="

    const-string v8, "sync_vibration_with_notification"

    const-string v10, "sync_vibration_with_ringtone"

    const-string v11, "sep_Index"

    const-string v12, "Do not restore!"

    move-object/from16 v16, v6

    const-string v6, "SoundItem"

    packed-switch v2, :pswitch_data_0

    :cond_1e
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1032
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sip_key_feedback_vibration"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 997
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 998
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore sync with notification value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 905
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 906
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ringtone_vibration_sep_index_2"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore dual sim ringtone pattern sepIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 827
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "voip_extra_volume"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore Voip Extra Volume Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 975
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 976
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore sync with ringtone value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 819
    :pswitch_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 811
    :pswitch_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "charging_sounds_enabled"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 823
    :pswitch_7
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeMode(IZ)V

    goto/16 :goto_2

    .line 1040
    :pswitch_8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "navigation_gestures_vibrate"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 986
    :pswitch_9
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 987
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sync_vibration_with_ringtone_2"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore sync with ringtone dual sim value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "Restoration of ringtone pattern!"

    .line 841
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    const-string v2, "default_vibration_pattern"

    if-eqz v0, :cond_26

    const/4 v0, -0x1

    .line 843
    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v0, :cond_20

    const/16 v11, 0x2f

    .line 846
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v11, 0x1

    add-int/2addr v8, v11

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    .line 847
    invoke-static {v1, v8, v5}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getIdByLegacyId(Landroid/content/Context;II)I

    move-result v11

    if-ne v11, v0, :cond_1f

    const-string v0, "skip restoration ringtone pattern by legacyId"

    .line 849
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 852
    :cond_1f
    invoke-static {v1, v8, v11}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getSepIndexById(Landroid/content/Context;II)I

    move-result v0

    .line 853
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    goto :goto_3

    :cond_20
    const/4 v0, 0x0

    .line 855
    invoke-static {v1, v0, v8}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getIdBySepIndex(Landroid/content/Context;II)I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_21

    const-string v0, "skip restoration ringtone pattern by sepIndex"

    .line 857
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 862
    :cond_21
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getRingtoneLiveStartId()I

    move-result v0

    if-lt v11, v0, :cond_22

    .line 863
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 864
    :cond_22
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getRingtoneColorfulStartId()I

    move-result v0

    if-lt v11, v0, :cond_24

    .line 865
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 866
    :cond_23
    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 870
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v4, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "ringtone_vibration_sep_index"

    .line 873
    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore ringtone pattern sepIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 877
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getOneUIVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 878
    invoke-virtual {v3, v13, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttributeBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_25

    .line 881
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_25

    if-eqz v2, :cond_25

    .line 884
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_25
    const/4 v0, 0x0

    .line 885
    invoke-static {v4, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Sync with ringtone is turned off by the OneUI version of the backup device."

    .line 886
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_26
    const/16 v0, 0x2f

    .line 890
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 891
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getLegacyRingtoneColorfulStartId()I

    move-result v3

    if-lt v0, v3, :cond_27

    .line 892
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 893
    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 896
    :cond_27
    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore ringtone pattern uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_b
    const/16 v2, 0x100

    .line 806
    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    const-string v0, "Restoration of notification pattern!"

    .line 921
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz v0, :cond_1e

    const/4 v0, -0x1

    .line 923
    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_29

    const/16 v10, 0x2f

    .line 926
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v10, 0x1

    add-int/2addr v2, v10

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 927
    invoke-static {v1, v10, v2}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getIdByLegacyId(Landroid/content/Context;II)I

    move-result v5

    if-ne v5, v0, :cond_28

    const-string v0, "skip restoration notification pattern by legacyId"

    .line 929
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 932
    :cond_28
    invoke-static {v1, v10, v5}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getSepIndexById(Landroid/content/Context;II)I

    move-result v0

    .line 933
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_4

    :cond_29
    const/4 v0, 0x1

    .line 935
    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->getIdBySepIndex(Landroid/content/Context;II)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_2a

    const-string v0, "skip restoration notification pattern by sepIndex"

    .line 937
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 942
    :cond_2a
    :goto_4
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getNotificationLiveStartId()I

    move-result v0

    if-lt v5, v0, :cond_2b

    .line 943
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 944
    :cond_2b
    invoke-static {}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getNotificationColorfulStartId()I

    move-result v0

    if-lt v5, v0, :cond_2d

    .line 945
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 946
    :cond_2c
    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 950
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_notification_vibration_pattern"

    .line 952
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "notification_vibration_sep_index"

    .line 953
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore notification pattern sepIndex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1e

    .line 957
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->getOneUIVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 958
    invoke-virtual {v3, v13, v1}, Lcom/samsung/android/lib/episode/Scene;->getAttributeBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_2e

    .line 961
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v0, v0, v3

    if-lez v0, :cond_2e

    if-nez v2, :cond_1e

    .line 963
    :cond_2e
    invoke-static {v4, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Sync with notification is turned off by the OneUI version of the backup device."

    .line 964
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_d
    const-string v0, "volumelimit_set_password"

    const/4 v1, 0x1

    .line 1073
    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "volumelimit_secure_password"

    .line 1074
    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 1016
    :pswitch_e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1012
    :pswitch_f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sound_effects_enabled"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :pswitch_10
    const/4 v2, 0x2

    .line 801
    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreNotificationSound(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1044
    :pswitch_11
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "camera_feedback_vibrate"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1062
    :pswitch_12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "restore_multisound_devicetype"

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1063
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreSeparateAppSound(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1036
    :pswitch_13
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dialing_keypad_vibrate"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1028
    :pswitch_14
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_tone"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1048
    :pswitch_15
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "charging_vibration_enabled"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1052
    :pswitch_16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v6, v16

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto/16 :goto_2

    :pswitch_17
    const-string v2, "restore_multisound_app"

    .line 1057
    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1058
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;->restoreSeparateAppSound(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1020
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "haptic_feedback_enabled"

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    .line 1021
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1023
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :pswitch_19
    move-object/from16 v6, v16

    .line 1066
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "volumelimit_on"

    const/4 v2, 0x1

    .line 1067
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "volume_limiter_value"

    .line 1068
    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1069
    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->enableVolumeLimiter(Z)V

    .line 1070
    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->setVolumeLimiterValue(I)V

    goto/16 :goto_2

    .line 815
    :pswitch_1a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sip_key_feedback_sound"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :goto_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x792f53f5 -> :sswitch_1c
        -0x782a3dcd -> :sswitch_1b
        -0x73578aa6 -> :sswitch_1a
        -0x6b6f0411 -> :sswitch_19
        -0x6afc11a3 -> :sswitch_18
        -0x5e0b3bbc -> :sswitch_17
        -0x48073965 -> :sswitch_16
        -0x3aba98f7 -> :sswitch_15
        -0x1ddcc5dc -> :sswitch_14
        -0x1047e935 -> :sswitch_13
        -0x738eff9 -> :sswitch_12
        -0x1c60ab3 -> :sswitch_11
        0x2f7817b -> :sswitch_10
        0xbeb618c -> :sswitch_f
        0x185c16a6 -> :sswitch_e
        0x1f4906e2 -> :sswitch_d
        0x2013531b -> :sswitch_c
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
        :pswitch_17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method
