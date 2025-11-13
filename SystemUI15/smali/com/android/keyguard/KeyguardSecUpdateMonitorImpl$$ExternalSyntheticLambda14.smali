.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setEnabled()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onFaceAuthenticationSucceeded end"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->requestSessionOpen()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_face_session_open_fallback

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionOpen()V

    goto :cond_1

    :cond_face_session_open_fallback

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->semSessionOpen()V

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_SESSION_CLOSE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const-string v1, "KeyguardFace"

    const-string v2, "requestSessionClose()"

    if-eqz v0, :cond_face_session_close_fallback

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestSessionClose()V

    goto :cond_3

    :cond_face_session_close_fallback

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_3

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->semSessionClose()V

    :cond_3
    return-void

    :pswitch_3
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onFpAuthenticationSucceeded end"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const-wide/16 v4, 0x14

    const/4 v9, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    return-void

    :pswitch_9
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    const-string v2, "PowerManager#userActivity"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :pswitch_a
    check-cast p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardFingerprint"

    const-string v1, "Waiting window focus change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
