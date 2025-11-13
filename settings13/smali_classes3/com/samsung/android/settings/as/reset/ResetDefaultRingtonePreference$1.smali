.class Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetDefaultRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$7BmtGyPA-JF0JkC6IXgu4nEuZkU(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1;->lambda$resetSettings$1(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SYoWNUdyWZY1U8bDnE7A1sPM21E(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1;->lambda$resetSettings$0(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method

.method private static synthetic lambda$resetSettings$0(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static synthetic lambda$resetSettings$1(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->-$$Nest$smisNotSpecialThemeSound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 5

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "special_edition_system_sound_set"

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "theme_touch_sound"

    const-string v1, "Galaxy"

    const-string v2, "system_sound"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    .line 49
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->-$$Nest$sfgetSYSTEM_SOUND_DB_LIST()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Open_theme"

    .line 56
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 58
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    :cond_1
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->-$$Nest$smisNotSpecialThemeSound(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->-$$Nest$sfgetSYSTEM_SOUND_DB_LIST()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    const-string p1, "prev_system_sound"

    .line 72
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_theme_touch_sound"

    .line 73
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_key_sound_path"

    .line 74
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_backspace_key_sound_path"

    .line 75
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "backup_modifier_key_sound_path"

    .line 76
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz p1, :cond_3

    const-string p1, "backup_dialer_sound_theme_path"

    .line 78
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method
