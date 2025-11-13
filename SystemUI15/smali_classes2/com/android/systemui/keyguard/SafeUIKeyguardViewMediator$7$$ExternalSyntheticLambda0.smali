.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

.field public final synthetic f$1:Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final synthetic f$3:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;Landroid/view/RemoteAnimationTarget;Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$1:Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$1:Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v3, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v4, v4, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOpenAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda2;-><init>(Landroid/view/RemoteAnimationTarget;Landroid/view/SyncRtSurfaceTransactionApplier;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
