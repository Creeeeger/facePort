.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->mIsCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    :try_start_0
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->mIsCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    iget-object p1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mhandleSetOccluded(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$1;->this$1:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method
