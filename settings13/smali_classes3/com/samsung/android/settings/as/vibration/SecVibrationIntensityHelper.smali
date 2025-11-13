.class public Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;
.super Ljava/lang/Object;
.source "SecVibrationIntensityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffect:Landroid/os/VibrationEffect;

.field private mHandler:Landroid/os/Handler;

.field private mHardPressController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;

.field private final mIconHandler:Landroid/os/Handler;

.field private mMediaController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

.field private mNotificationController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

.field private mStopFlag:Z

.field private mTouchController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

.field private mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEffect(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mMediaController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mNotificationController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingtone(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/media/Ringtone;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mRingtone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mRingtoneController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopFlag(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mTouchController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrator(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEffect(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Landroid/os/VibrationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mEffect:Landroid/os/VibrationEffect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRingtone(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Landroid/media/Ringtone;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mRingtone:Landroid/media/Ringtone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mIconHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mContext:Landroid/content/Context;

    const-string v0, "vibrator_manager"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    return-void
.end method


# virtual methods
.method public getVibSeekBarTouchListener()Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mVibSeekBarTouchListener:Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;

    return-object p0
.end method

.method public setHardPressController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mHardPressController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;

    return-void
.end method

.method public setMediaController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mMediaController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    return-void
.end method

.method public setNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mNotificationController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    return-void
.end method

.method public setRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mRingtoneController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    return-void
.end method

.method public setStopFlag(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    return-void
.end method

.method public setTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mTouchController:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    return-void
.end method

.method public stopVibration()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 152
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_2
    return-void
.end method
