.class public Lcom/samsung/android/settings/bixby/target/SoundAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SoundAction.java"


# instance fields
.field private final ERROR_ALREADY_SILENT:Ljava/lang/String;

.field private final ERROR_ALREADY_SOUND:Ljava/lang/String;

.field private final ERROR_ALREADY_VIBRATE:Ljava/lang/String;

.field private final ERROR_FAILED_UNKNOWN:Ljava/lang/String;

.field private final RINGER_MODE_SILENT:Ljava/lang/String;

.field private final RINGER_MODE_SOUND:Ljava/lang/String;

.field private final RINGER_MODE_VIBRATE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 19
    const-class v0, Lcom/samsung/android/settings/bixby/target/SoundAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->TAG:Ljava/lang/String;

    const-string v0, "ringer_mode_sound"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->RINGER_MODE_SOUND:Ljava/lang/String;

    const-string v0, "ringer_mode_vibrate"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->RINGER_MODE_VIBRATE:Ljava/lang/String;

    const-string v0, "ringer_mode_silent"

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->RINGER_MODE_SILENT:Ljava/lang/String;

    const-string v0, "ringer_mode_already_sound"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->ERROR_ALREADY_SOUND:Ljava/lang/String;

    const-string v0, "ringer_mode_already_vibrate"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->ERROR_ALREADY_VIBRATE:Ljava/lang/String;

    const-string v0, "ringer_mode_already_silent"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->ERROR_ALREADY_SILENT:Ljava/lang/String;

    const-string v0, "ringer_mode_set_failed_unknown"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->ERROR_FAILED_UNKNOWN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mTaskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, 0x2

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRingerModeInternal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->TAG:Ljava/lang/String;

    const-string v2, "fail to get real ringer mode"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ringer_mode_sound"

    goto :goto_1

    :cond_2
    const-string v2, "ringer_mode_vibrate"

    goto :goto_1

    :cond_3
    const-string v2, "ringer_mode_silent"

    .line 69
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "result"

    .line 72
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 92
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$SecSoundModeSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "success"

    goto :goto_1

    :cond_1
    const-string p1, "fail"

    .line 109
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "not_supported_device"

    .line 82
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoundAction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/NotiUtils;->setSoundMode(Landroid/content/Context;I)V

    const-string p1, "success"

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
