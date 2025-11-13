.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;
.super Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->onAnimationCancelled()V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Occlude animation cancelled by WM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aget-object v2, p2, v1

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludingRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p3, 0x0

    const/16 p4, 0x40

    invoke-virtual {p1, p4, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->createInteractionJankMonitorConf$1(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    const-string p3, "OCCLUDE"

    invoke-virtual {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    const-string p1, "KeyguardViewMediator"

    const-string p2, "OccludeAnimator#onAnimationStart. Set occluded = true."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    return-void
.end method
