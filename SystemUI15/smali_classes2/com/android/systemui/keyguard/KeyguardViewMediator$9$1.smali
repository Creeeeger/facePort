.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$9;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "Failed to finish transition"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
