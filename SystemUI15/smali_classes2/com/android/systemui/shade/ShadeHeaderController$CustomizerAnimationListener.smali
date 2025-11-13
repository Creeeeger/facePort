.class public final Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final enteringCustomizing:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->enteringCustomizing:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object p1, p1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->enteringCustomizing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->customizing:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->customizing:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->enteringCustomizing:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$CustomizerAnimationListener;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->customizing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->customizing:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    :cond_0
    return-void
.end method
