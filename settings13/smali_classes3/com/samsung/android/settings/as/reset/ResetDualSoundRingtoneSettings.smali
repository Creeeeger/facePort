.class public Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;
.super Ljava/lang/Object;
.source "ResetDualSoundRingtoneSettings.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field private static mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private static mDefaultNotificationFilename_2:Ljava/lang/String;

.field private static mDefaultRingtoneFilename_2:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmDefaultNotificationFilename_2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->mDefaultNotificationFilename_2:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDefaultRingtoneFilename_2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smSettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetDefaultRingtoneFileNames(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->setDefaultRingtoneFileNames(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "\'"

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 97
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "ResetDualSoundRingtoneSettings"

    if-nez v3, :cond_1

    .line 100
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning! Cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in setting DB is null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 v12, 0x0

    .line 104
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 106
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    .line 112
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v2, p2

    .line 115
    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p0

    .line 114
    invoke-static {v5, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write again. Default "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]  Result is ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-void

    .line 107
    :cond_3
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v9, :cond_4

    .line 120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    move-object v9, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v9, :cond_5

    .line 119
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_6

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_6
    throw v1
.end method

.method private static setDefaultRingtoneFileNames(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ro.config.alarm_alert"

    .line 82
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimModel(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ro.config.ringtone_2"

    .line 85
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    const-string p0, "ro.config.notification_sound_2"

    .line 87
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/as/reset/ResetDualSoundRingtoneSettings;->mDefaultNotificationFilename_2:Ljava/lang/String;

    :cond_0
    return-void
.end method
