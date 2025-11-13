.class public Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;
.super Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.source "SecSoundSystemSoundController.java"

# interfaces
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "system_sound"

.field private static final REQUEST_AUDIO_SYSTEM_SOUND:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "SecSoundSystemSoundController"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "system_sound"

    .line 65
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "system_sound"

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private onSaveSystemSound(Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    iget-object v0, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveSystemSound( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecSoundSystemSoundController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "system_sound"

    .line 218
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "Open_theme"

    .line 220
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "prev_system_sound"

    .line 221
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    :cond_0
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "system/media/audio/ui/Dial_"

    const-string v5, "system/media/audio/ui/SIP_Modifier_"

    const-string v6, "system/media/audio/ui/S_SIP_Backspace_"

    const-string v7, "system/media/audio/ui/TW_SIP_"

    const-string v8, "dialer_sound_theme_path"

    const-string v9, "backup_dialer_sound_theme_path"

    const-string v10, "modifier_key_sound_path"

    const-string v11, "backspace_key_sound_path"

    const-string v12, "default_key_sound_path"

    const-string v13, "theme_touch_sound"

    const-string v14, "backup_modifier_key_sound_path"

    const-string v15, "backup_backspace_key_sound_path"

    move-object/from16 p0, v2

    const-string v2, "backup_key_sound_path"

    move-object/from16 v16, v9

    const-string v9, "backup_theme_touch_sound"

    move-object/from16 v17, v8

    const-string v8, "Galaxy"

    move-object/from16 v18, v4

    const-string v4, ".ogg"

    move-object/from16 v19, v14

    if-eqz v3, :cond_7

    .line 225
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/audio/SoundTheme;->isSoundThemeCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 226
    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 228
    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 229
    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 231
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 232
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 237
    invoke-static {v0, v13, v14}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    invoke-static {v0, v12, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    invoke-static {v0, v11, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    invoke-static {v0, v10, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    invoke-static {v0, v9, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v20, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v7, v20

    .line 246
    :goto_1
    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v21, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v6, v21

    .line 248
    :goto_2
    invoke-static {v0, v15, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v3, v19

    if-nez v22, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v5, v22

    .line 250
    :goto_3
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    sget-boolean v2, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v2, :cond_c

    .line 254
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v17

    goto :goto_4

    :cond_5
    move-object/from16 v1, v17

    const/4 v14, 0x0

    .line 257
    :goto_4
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v14, v2

    :goto_5
    move-object/from16 v1, v16

    .line 260
    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    :cond_7
    move-object/from16 v24, v17

    move-object/from16 v14, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v11

    move-object/from16 v11, p0

    move-object/from16 v25, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v25

    .line 265
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 268
    invoke-static {v0, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {v0, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    .line 274
    invoke-static {v0, v9, v11}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    invoke-static {v0, v15, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    invoke-static {v0, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    invoke-static {v0, v13, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v1, :cond_8

    .line 283
    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v11, v1

    :cond_8
    move-object v14, v4

    move-object v3, v5

    move-object v5, v6

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 288
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    sget-boolean v6, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v6, :cond_a

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    :cond_a
    move-object v14, v2

    goto :goto_6

    :cond_b
    move-object v3, v11

    move-object v5, v3

    move-object v14, v5

    .line 297
    :goto_6
    invoke-static {v0, v12, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v17

    .line 298
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v16

    .line 299
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v1, :cond_c

    move-object/from16 v1, v24

    .line 301
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p1, :cond_0

    const/16 p0, 0x200

    .line 91
    invoke-virtual {p1, p0}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 77
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "system_sound"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Galaxy"

    .line 177
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x27e2

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SecSoundSystemSoundController"

    const-string v1, "handlePreferenceTreeClick"

    .line 148
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSoundSystemSoundController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    return v0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 127
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setUpdateRingtoneType(I)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateSystemSoundNameAsync()V

    :cond_2
    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x6

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setUpdateRingtoneType(I)V

    .line 98
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->onResume()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    .line 187
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->onSaveSystemSound(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 195
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 196
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
