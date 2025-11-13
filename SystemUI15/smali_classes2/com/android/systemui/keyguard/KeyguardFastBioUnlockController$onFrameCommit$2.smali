.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->atTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xa

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$2$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
