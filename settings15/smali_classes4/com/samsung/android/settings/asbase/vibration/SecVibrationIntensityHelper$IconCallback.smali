.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mRingtoneController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityIncomingCallController;

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityIncomingCallController;->updatePreferenceIcon(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mNotificationController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityNotificationController;

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityNotificationController;->updatePreferenceIcon(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mTouchController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityTouchVibrationController;

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityTouchVibrationController;->updatePreferenceIcon(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mMediaController:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityMediaController;

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityMediaController;->updatePreferenceIcon(I)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
