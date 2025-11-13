.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;


# instance fields
.field public mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;

    return-void
.end method


# virtual methods
.method public final onSampleStarting(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSampleStarting : SeekBarVolumizer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "past :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSystemSoundSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->postStopSample()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    return-void
.end method

.method public final onStreamValueChanged(II)V
    .locals 2

    const-string v0, "SecSystemSoundSettings"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "onStreamValueChanged : STREAM_SYSTEM, progress : "

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStreamValueChanged - not controlled stream :"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
