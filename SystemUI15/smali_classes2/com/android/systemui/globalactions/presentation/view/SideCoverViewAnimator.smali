.class public final Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# instance fields
.field public mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

.field public mConfirmDescriptionView:Landroid/widget/TextView;

.field public mConfirmIconLabelView:Landroid/view/ViewGroup;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public mOriginalConfirmLocationX:F

.field public mOriginalConfirmLocationY:F

.field public mSelectedActionView:Landroid/view/ViewGroup;

.field public final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field public mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

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
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mOriginalConfirmLocationX:F

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    :goto_0
    new-array v7, v2, [F

    aput v5, v7, v1

    aput v6, v7, v0

    const-string/jumbo v5, "x"

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    if-eqz p1, :cond_1

    iget v7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mOriginalConfirmLocationY:F

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v7

    int-to-float v7, v8

    :goto_1
    new-array v8, v2, [F

    aput v6, v8, v1

    aput v7, v8, v0

    const-string/jumbo v6, "y"

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    new-array v8, v2, [F

    aput v9, v8, v1

    aput v7, v8, v0

    const-string v7, "alpha"

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x7d

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v5, v9, v1

    aput-object v4, v9, v0

    aput-object v6, v9, v2

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_4
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    return-object v3
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

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mForceDismiss:Z

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x7d

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    :goto_0
    return-void
.end method

.method public final startDismissConfirmAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-boolean v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mForceDismiss:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mForceDismiss:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

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
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    new-instance v8, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZ)V

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->inflateView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->setViewAttrs(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final startShowSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public final startToastAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->toastMessage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
