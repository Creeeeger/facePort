.class public final Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "special_edition_system_sound_set"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const-string/jumbo v1, "theme_touch_sound"

    const-string v2, "Galaxy"

    const-string/jumbo v3, "system_sound"

    const/4 v4, 0x0

    if-eq p1, v0, :cond_0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p1, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference;->SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "Open_theme"

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "/data/overlays"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference;->SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    const-string/jumbo p1, "prev_system_sound"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_theme_touch_sound"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_key_sound_path"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_backspace_key_sound_path"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_modifier_key_sound_path"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz p1, :cond_4

    const-string p1, "backup_dialer_sound_theme_path"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-void
.end method
