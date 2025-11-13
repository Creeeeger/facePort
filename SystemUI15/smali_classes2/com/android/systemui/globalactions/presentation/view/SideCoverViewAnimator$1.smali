.class public final Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x7d

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
