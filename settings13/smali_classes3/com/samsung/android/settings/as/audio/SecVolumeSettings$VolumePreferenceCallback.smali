.class final Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SecVolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSampleStarting : SeekBarVolumizer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "past :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SecVolumeSettings"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged - not controlled stream :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged : STREAM_ASSISTANT, progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged : STREAM_NOTIFICATION, progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 294
    invoke-virtual {p1}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 300
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged : STREAM_MUSIC, progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 286
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged : STREAM_RING, progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 305
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamValueChanged : STREAM_SYSTEM, progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_0
    return-void
.end method

.method public stopSample()V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
