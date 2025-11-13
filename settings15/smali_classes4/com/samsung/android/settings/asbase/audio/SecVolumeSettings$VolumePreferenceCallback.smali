.class public final Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;


# instance fields
.field public mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    return-void
.end method


# virtual methods
.method public final onSampleStarting(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSampleStarting : SecSeekBarVolumizer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "past :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->postStopSample()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    return-void
.end method

.method public final onStreamValueChanged(II)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SecVolumeSettings"

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    const/16 v3, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onStreamValueChanged - not controlled stream :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string/jumbo p1, "onStreamValueChanged : STREAM_ASSISTANT, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo p1, "onStreamValueChanged : STREAM_NOTIFICATION, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "onStreamValueChanged : STREAM_ALARM, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "onStreamValueChanged : STREAM_MUSIC, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "onStreamValueChanged : STREAM_RING, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "onStreamValueChanged : STREAM_SYSTEM, progress : "

    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_0
    return-void
.end method
