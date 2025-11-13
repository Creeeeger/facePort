.class public final Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
.super Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final hideUdfpsOverlay(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAcquired(II)V
    .locals 2

    invoke-static {p2}, Landroid/hardware/biometrics/BiometricFingerprintConstants;->shouldDisableUdfpsDisplayMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onEnrollmentHelp(I)V
    .locals 0

    return-void
.end method

.method public final onEnrollmentProgress(II)V
    .locals 0

    return-void
.end method

.method public final setDebugMessage(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 7

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p3, p3, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    iget-object p3, p3, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->_requestId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p3, p3, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v6, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    invoke-interface {p3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
