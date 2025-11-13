.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic f$4:Landroid/view/SyncRtSurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$9;Z[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SyncRtSurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$4:Landroid/view/SyncRtSurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$2:[Landroid/view/RemoteAnimationTarget;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$$ExternalSyntheticLambda1;->f$4:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez v2, :cond_2

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowCommunalWhenUnoccluding:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda92;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda92;-><init>(Ljava/lang/Object;Landroid/view/SyncRtSurfaceTransactionApplier;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$9;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->initAlphaForAnimationTargets([Landroid/view/RemoteAnimationTarget;)V

    if-eqz v2, :cond_3

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamViewModel:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;->startTransitionFromDream()V

    :cond_3
    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnoccludeFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
