.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-wide v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    iget-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    sub-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-wide v5, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->waitStartTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v0

    const-string v7, "foreground is shown / vis="

    const-string v8, "ms"

    const-string v9, "ms, end="

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-lez v0, :cond_1

    div-long/2addr v1, v5

    sub-long v5, p1, v1

    const-string p0, "ms, goingAway="

    invoke-static {v7, v3, v4, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms, keyguard="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v8, p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$onFrameCommit$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz p0, :cond_2

    const-string p0, "foreground is shown / blankScreen, vis="

    invoke-static {p0, v3, v4, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2, v8, p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v7, v3, v4, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2, v8, p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "BioUnlock"

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
