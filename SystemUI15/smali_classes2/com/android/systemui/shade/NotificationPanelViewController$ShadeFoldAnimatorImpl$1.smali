.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$cancelAction:Ljava/lang/Runnable;

.field public final synthetic val$endAction:Ljava/lang/Runnable;

.field public final synthetic val$startAction:Ljava/lang/Runnable;

.field public final synthetic val$viewAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$startAction:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$cancelAction:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$endAction:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$viewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$cancelAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$viewAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$viewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;->val$startAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
