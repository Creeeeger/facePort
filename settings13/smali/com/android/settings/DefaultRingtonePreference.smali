.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private customizeRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v3, 0x100

    if-ne v0, v3, :cond_4

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_sound_notification:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "neutral_button"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    sget-boolean v3, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_ADD_BUTTON:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->common_add:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "neutral_button_text"

    .line 148
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->incoming_call_volume_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isCallBGEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object p0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->checkDialer(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "android.intent.extra.rintone.enabled_call_background"

    .line 154
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    :cond_4
    :goto_1
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const-string p0, "android.samsung.intent.extra.ringtone.SHOW_OPEN_THEME"

    .line 163
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HAPTIC_PLAYBACK_WITH_RINGTONE:Z

    if-eqz p0, :cond_5

    const-string p0, "from"

    const-string v0, "com.android.settings"

    .line 167
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_5
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.secsoundpicker"

    const-string v1, "com.samsung.android.secsoundpicker.SecSoundPickerActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->customizeRingtonePickerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result p0

    invoke-static {v0, p0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->setActualDefaultRingtoneUri(Landroid/net/Uri;)V

    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    const-string v1, "DefaultRingtonePreference"

    if-eqz v0, :cond_1

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSaveRingtone() : Not changed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSaveRingtone for URI:"

    if-nez v0, :cond_2

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: failure to find mimeType (no access from this context?)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, "audio/"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "application/ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: associated mimeType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an audio type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->setActualDefaultRingtoneUri(Landroid/net/Uri;)V

    return-void
.end method

.method protected onSaveSystemSound(Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 177
    iget-object v0, v0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveSystemSound( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultRingtonePreference"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "system_sound"

    .line 195
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "Open_theme"

    .line 197
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "prev_system_sound"

    .line 198
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    :cond_0
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "system/media/audio/ui/Dial_"

    const-string/jumbo v5, "system/media/audio/ui/SIP_Modifier_"

    const-string/jumbo v6, "system/media/audio/ui/S_SIP_Backspace_"

    const-string/jumbo v7, "system/media/audio/ui/TW_SIP_"

    const-string v8, "dialer_sound_theme_path"

    const-string v9, "backup_dialer_sound_theme_path"

    const-string v10, "modifier_key_sound_path"

    const-string v11, "backspace_key_sound_path"

    const-string v12, "default_key_sound_path"

    const-string/jumbo v13, "theme_touch_sound"

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

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/audio/SoundTheme;->isSoundThemeCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 203
    invoke-static {v0, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 205
    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 206
    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 208
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 209
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
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

    .line 214
    invoke-static {v0, v13, v14}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    invoke-static {v0, v12, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    invoke-static {v0, v11, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    invoke-static {v0, v10, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    invoke-static {v0, v9, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v20, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v7, v20

    .line 223
    :goto_1
    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v21, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v6, v21

    .line 225
    :goto_2
    invoke-static {v0, v15, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v3, v19

    if-nez v22, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v5, v22

    .line 227
    :goto_3
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    sget-boolean v2, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v2, :cond_c

    .line 231
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 232
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

    .line 234
    :goto_4
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v14, v2

    :goto_5
    move-object/from16 v1, v16

    .line 237
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

    .line 242
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 245
    invoke-static {v0, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-static {v0, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    .line 251
    invoke-static {v0, v9, v11}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    invoke-static {v0, v15, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    invoke-static {v0, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    invoke-static {v0, v13, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v1, :cond_8

    .line 260
    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v11, v1

    :cond_8
    move-object v14, v4

    move-object v3, v5

    move-object v5, v6

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 265
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    sget-boolean v6, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v6, :cond_a

    .line 270
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

    .line 274
    :goto_6
    invoke-static {v0, v12, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v17

    .line 275
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v1, v16

    .line 276
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v1, :cond_c

    move-object/from16 v1, v24

    .line 278
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    :goto_7
    return-void
.end method

.method setActualDefaultRingtoneUri(Landroid/net/Uri;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public setRingtoneNotificationFragment(Lcom/android/settings/SettingsPreferenceFragment;I)V
    .locals 1

    .line 130
    instance-of v0, p1, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    goto :goto_0

    .line 132
    :cond_0
    instance-of p1, p1, Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/RingtonePreference;->setRingtoneType(II)V

    :cond_1
    :goto_0
    return-void
.end method
