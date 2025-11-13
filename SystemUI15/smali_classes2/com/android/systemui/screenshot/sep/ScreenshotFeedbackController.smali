.class public final Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

.field public final mContext:Landroid/content/Context;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundIds:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    iget-object v4, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    aget-object v7, v1, v3

    invoke-virtual {v4, v7, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v4, v2, v3

    if-ne v4, v6, :cond_1

    iget-object v4, v0, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final semPlayCameraSound()V
    .locals 11

    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "service.camera.rec.running"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "service.camera.sfs.running"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "service.bioface.authenticating"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "skip_adaptive_sound"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    const-string v7, "isCameraRunning = "

    const-string v8, ", isRecordRunning = "

    const-string v9, ", isSmartStayRunning = "

    invoke-static {v7, v8, v9, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVtCallRunning = false, isBioFaceRunning = "

    const-string v9, ", isAdaptiveBrightness = "

    invoke-static {v7, v4, v8, v1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Screenshot"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v7, v9, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mCaptureSound:Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    xor-int/lit8 p0, v3, 0x1

    xor-int/lit8 v0, v4, 0x1

    and-int/2addr p0, v0

    xor-int/lit8 v0, v1, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Camera is running. Play capture sound!"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v5}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v7, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "[forcedShutterSound] Camera is running!!!!"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v5}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    invoke-virtual {v9, v6}, Lcom/android/systemui/screenshot/sep/ScreenshotCaptureSound;->play(Z)V

    goto :goto_3

    :cond_6
    if-ne v3, v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SupportedVibrationType() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v5, :cond_7

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->mVibrator:Landroid/os/Vibrator;

    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_8
    :goto_3
    return-void
.end method
