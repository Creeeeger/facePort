.class public final Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# instance fields
.field public mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

.field public mConfirmIconLabelView:Landroid/view/ViewGroup;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public mOriginalConfirmLocationX:F

.field public mSelectedActionView:Landroid/view/ViewGroup;

.field public final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field public mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method


# virtual methods
.method public final cancelHideConfirmAnimation()V
    .locals 0

    return-void
.end method

.method public final cancelShowConfirmAnimation()V
    .locals 0

    return-void
.end method

.method public final getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    if-eqz p1, :cond_0

    iget v5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mOriginalConfirmLocationX:F

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v1

    aput v5, v6, v0

    const-string/jumbo v4, "x"

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    return-object v2
.end method

.method public final initializeSelectedActionView()V
    .locals 0

    return-void
.end method

.method public final isHideConfirmAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSafeModeConfirm()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isShowConfirmAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setListViewLand()V
    .locals 0

    return-void
.end method

.method public final setListViewPort()V
    .locals 0

    return-void
.end method

.method public final showMainViewLand()V
    .locals 0

    return-void
.end method

.method public final showMainViewPort()V
    .locals 0

    return-void
.end method

.method public final startDismissAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mForceDismiss:Z

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    :goto_0
    return-void
.end method

.method public final startDismissConfirmAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-boolean v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mForceDismiss:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mForceDismiss:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startDismissSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public final startSetSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public final startShowAnimation()V
    .locals 0

    return-void
.end method

.method public final startShowConfirmAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;->inflateView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;->setViewAttrs(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final startShowSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public final startToastAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->toastMessage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
