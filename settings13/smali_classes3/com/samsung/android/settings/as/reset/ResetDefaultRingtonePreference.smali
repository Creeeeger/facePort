.class public Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;
.super Ljava/lang/Object;
.source "ResetDefaultRingtonePreference.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field private static final SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetSYSTEM_SOUND_DB_LIST()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisNotSpecialThemeSound(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->isNotSpecialThemeSound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;

    const-string v1, "default_key_sound_path"

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "backspace_key_sound_path"

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "modifier_key_sound_path"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME_ONEUI31_EXTENSION:Z

    if-eqz v1, :cond_0

    const-string v1, "dialer_sound_theme_path"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/reset/ResetDefaultRingtonePreference;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNotSpecialThemeSound(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "/data/overlays"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
