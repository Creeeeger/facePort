.class Lcom/samsung/android/settings/as/reset/ResetSoundSettings$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "ResetSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/reset/ResetSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method

.method private updateSilentMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "audio"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const-string v0, "melody"

    .line 72
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ResetSoundSettings"

    if-eqz v0, :cond_0

    const-string p0, "updateSilentMode: melody"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 74
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_0
    const-string v0, "mute"

    .line 75
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "updateSilentMode: mute"

    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 77
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_1
    const-string v0, "vib"

    .line 78
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const-string p0, "updateSilentMode: vib"

    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_2
    const-string p1, "updateSilentMode: vibmelody"

    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "vibrate_when_ringing"

    .line 83
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 2

    const-string v0, "Settings.Main.Sound.RngToneAlertType"

    .line 59
    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ResetSoundSettings"

    if-eqz p2, :cond_0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/reset/ResetSoundSettings$1;->updateSilentMode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "RngToneAlertType is not found"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resetSettings(Landroid/content/Context;)V
    .locals 5

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 26
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mode_ringer_time"

    const/16 v1, 0x3c

    .line 30
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mode_ringer_time_on"

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const-string v2, "vibrate_on"

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const-string v0, "USC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    :goto_1
    and-int/lit8 p1, p1, 0x3

    if-ne p1, v4, :cond_2

    move v1, v4

    :cond_2
    const-string p1, "vibrate_when_ringing"

    .line 51
    invoke-static {p0, p1, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
