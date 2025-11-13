.class public Lcom/samsung/android/settings/bixby/target/MuteDurationAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "MuteDurationAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 14
    const-class v0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    :try_start_0
    const-string p1, "temporary_mute_state_off"

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "already_set"

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    const-string p1, "success"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to set mute duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "fail"

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
