.class public Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityLaunchController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public mRunner:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->mActivityLaunchController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->mRunner:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->onAnimationCancelled()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mActivityTransitionAnimator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->mActivityLaunchController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->createRunner(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->mRunner:Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
