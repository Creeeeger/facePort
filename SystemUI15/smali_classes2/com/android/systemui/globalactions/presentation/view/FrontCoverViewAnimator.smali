.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# instance fields
.field public mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmDescriptionView:Landroid/widget/TextView;

.field public mConfirmIconLabelView:Landroid/view/ViewGroup;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mDismissDuringSecureConfirm:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public mOriginalConfirmLocationX:F

.field public mOriginalConfirmLocationY:F

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

.field public mSelectedActionView:Landroid/view/ViewGroup;

.field public final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field public mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mDismissDuringSecureConfirm:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

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
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    iget v7, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mOriginalConfirmLocationY:F

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    new-array v8, v6, [I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v8, v5

    int-to-float v7, v7

    :goto_0
    new-array v8, v6, [F

    aput v4, v8, v1

    aput v7, v8, v5

    const-string/jumbo v4, "y"

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    if-eqz p1, :cond_1

    iget v8, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mOriginalConfirmLocationX:F

    iget-object v9, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v9, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    iget-object v8, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v8, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v10, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v8, v10}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    new-array v9, v6, [I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v9, v1

    iget-object v9, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    :goto_1
    new-array v9, v6, [F

    aput v7, v9, v1

    aput v8, v9, v5

    const-string/jumbo v7, "x"

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p1, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_3
    new-array v11, v6, [F

    aput v10, v11, v1

    aput v8, v11, v5

    const-string v8, "alpha"

    invoke-static {v7, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v8, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-boolean v8, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    const/4 v12, 0x3

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v13

    const/high16 v14, 0x3f400000    # 0.75f

    if-eqz p1, :cond_4

    move v15, v14

    goto :goto_3

    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_3
    new-array v9, v6, [F

    aput v13, v9, v1

    aput v15, v9, v5

    const-string/jumbo v13, "scaleX"

    invoke-static {v8, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v13

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_4
    new-array v15, v6, [F

    aput v13, v15, v1

    aput v14, v15, v5

    const-string/jumbo v13, "scaleY"

    invoke-static {v9, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/4 v13, 0x5

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v3, v13, v1

    aput-object v4, v13, v5

    aput-object v7, v13, v6

    aput-object v8, v13, v12

    const/4 v1, 0x4

    aput-object v9, v13, v1

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_5

    :cond_6
    new-array v8, v12, [Landroid/animation/Animator;

    aput-object v3, v8, v1

    aput-object v4, v8, v5

    aput-object v7, v8, v6

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_6

    :cond_7
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$3;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_6
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
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mForceDismiss:Z

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    const v0, 0x7f0a0482

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070427

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070426

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060657

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "power"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10405f5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-boolean p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ANIM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mDismissDuringSecureConfirm:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mForceDismiss:Z

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mDismissDuringSecureConfirm:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$1;

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/HandlerUtil;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->dismiss()V

    :goto_1
    return-void
.end method

.method public final startDismissConfirmAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-boolean v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mForceDismiss:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->setCoverSecureConfirmState(Z)V

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mForceDismiss:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

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

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    new-instance v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-boolean v5, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    iget-boolean v6, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    iget-object v7, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;ZZLcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    iget-object v4, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    new-instance v3, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v8, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-interface {v0, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final startShowSafeModeAnimation()V
    .locals 0

    return-void
.end method
