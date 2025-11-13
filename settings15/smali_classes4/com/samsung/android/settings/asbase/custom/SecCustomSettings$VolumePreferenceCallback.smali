.class public final Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# instance fields
.field public mCurrent:Landroid/preference/SeekBarVolumizer;

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;

    return-void
.end method


# virtual methods
.method public final onSampleStarting()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;->mHandler:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;->mHandler:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$1;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public final onStreamValueChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;->mHandler:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/custom/SecCustomSettings;->mHandler:Lcom/samsung/android/settings/asbase/custom/SecCustomSettings$1;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
