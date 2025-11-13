.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "KeyguardViewMediator"

    const-string v0, "aodAppearAnimator onAnimationCancel"

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aodAppearAnimator onAnimationEnd aodAppearAnimationFrameCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardViewMediator"

    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
