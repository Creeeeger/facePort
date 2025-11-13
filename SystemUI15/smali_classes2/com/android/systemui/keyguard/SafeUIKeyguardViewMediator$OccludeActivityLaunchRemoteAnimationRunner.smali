.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;
.super Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Occlude animation cancelled by WM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p3, 0x0

    const/16 p4, 0x40

    invoke-virtual {p1, p4, p3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    const-string p3, "OCCLUDE"

    invoke-virtual {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string p2, "OccludeAnimator#onAnimationStart. Set occluded = true."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setOccluded(ZZ)V

    return-void
.end method
