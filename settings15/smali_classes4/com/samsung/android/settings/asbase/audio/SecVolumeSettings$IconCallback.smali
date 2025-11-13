.class public final Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    if-eqz v0, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;->updatePreferenceIcon(I)V

    :cond_0
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    if-eqz p0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->updatePreferenceIcon(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->postStopSample()V

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
