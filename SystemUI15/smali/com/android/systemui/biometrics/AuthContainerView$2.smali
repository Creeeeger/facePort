.class public final Lcom/android/systemui/biometrics/AuthContainerView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthContainerView;

.field public final synthetic val$timeout:J

.field public final synthetic val$type:Ljava/lang/String;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;Landroid/view/View;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$type:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AuthContainerView"

    const-string p1, "Un-attached view should not cancel Jank trace."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x38

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AuthContainerView"

    const-string p1, "Un-attached view should not end Jank trace."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x38

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AuthContainerView"

    const-string p1, "Un-attached view should not begin Jank trace."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthContainerView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$2;->val$timeout:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method
