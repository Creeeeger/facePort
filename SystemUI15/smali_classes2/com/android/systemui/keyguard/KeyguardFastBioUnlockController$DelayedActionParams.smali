.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final action:Lkotlin/jvm/functions/Function0;

.field public atTime:J

.field public final handler:Landroid/os/Handler;

.field public isDiscard:Z

.field public final maxDelayMills:J

.field public final runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function0;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->action:Lkotlin/jvm/functions/Function0;

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->maxDelayMills:J

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    return-void
.end method


# virtual methods
.method public final start(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BioUnlock"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->maxDelayMills:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->atTime:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
