.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
