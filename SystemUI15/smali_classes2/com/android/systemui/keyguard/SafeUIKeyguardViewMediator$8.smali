.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "SafeUIKeyguardViewMediator"

    const-string v1, "Unocclude animation cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    const-string p1, "SafeUIKeyguardViewMediator"

    const-string p2, "UnoccludeAnimator#onAnimationStart. Set occluded = false."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p3, 0x0

    const/16 p4, 0x40

    invoke-virtual {p1, p4, p3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    const-string p3, "UNOCCLUDE"

    invoke-virtual {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setOccluded(ZZ)V

    if-eqz p5, :cond_0

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_0
    return-void
.end method
