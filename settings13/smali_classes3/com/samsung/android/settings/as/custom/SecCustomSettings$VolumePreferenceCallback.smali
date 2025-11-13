.class final Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SecCustomSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/custom/SecCustomSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/custom/SecCustomSettings;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 3

    .line 220
    iget-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
