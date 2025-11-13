.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;FF[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$1:F

    iput p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$2:F

    iput-object p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$3:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$1:F

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$2:F

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;->f$3:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-int v7, v1

    float-to-int v8, v2

    const/4 v1, 0x3

    aget v10, p0, v1

    const/4 v1, 0x4

    aget v9, p0, v1

    iget-object p0, v0, Lcom/android/systemui/doze/DozeTriggers;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchView:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2

    :cond_3
    const-string p0, "UdfpsController"

    const-string v0, "No haptics played. Could not obtain overlay view to performvibration. Either the controller overlay is null or has no view"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_5

    iget-wide v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;JIIFF)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    :cond_6
    :goto_2
    return-void
.end method
