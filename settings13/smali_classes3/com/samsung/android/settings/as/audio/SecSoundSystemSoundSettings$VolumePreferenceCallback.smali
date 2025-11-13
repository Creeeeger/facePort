.class final Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SecSoundSystemSoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSampleStarting : SeekBarVolumizer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "past :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSystemSoundSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 3

    const-string v0, "SecSystemSoundSettings"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamValueChanged : STREAM_SYSTEM, progress : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamValueChanged - not controlled stream :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
