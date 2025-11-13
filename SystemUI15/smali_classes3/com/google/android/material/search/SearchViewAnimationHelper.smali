.class public final Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

.field public backProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field public final clearButton:Landroid/widget/ImageButton;

.field public final contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field public final divider:Landroid/view/View;

.field public final dummyToolbar:Landroidx/appcompat/widget/Toolbar;

.field public final editText:Landroid/widget/EditText;

.field public final headerContainer:Landroid/widget/FrameLayout;

.field public final rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field public final scrim:Landroid/view/View;

.field public searchBar:Lcom/google/android/material/search/SearchBar;

.field public final searchPrefix:Landroid/widget/TextView;

.field public final searchView:Lcom/google/android/material/search/SearchView;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

.field public final toolbarContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->scrim:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->headerContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbarContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->searchPrefix:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->clearButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->divider:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-instance p1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-direct {p1, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-void
.end method

.method public static access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    iget-boolean v0, v0, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    iget-boolean p0, p0, Lcom/google/android/material/search/SearchView;->animatedNavigationIcon:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_2

    instance-of p0, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    move-object p0, v1

    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p0, v3, [Landroid/animation/Animator;

    aput-object v4, p0, v2

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    instance-of p0, v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_4

    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    new-array p0, v0, [F

    fill-array-data p0, :array_1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    instance-of p0, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    if-eqz p0, :cond_3

    move-object p0, v1

    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    instance-of p0, v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_4

    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v4}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    new-array v8, v1, [F

    aput v7, v8, v2

    aput v6, v8, v0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v0, [Landroid/view/View;

    aput-object v5, v8, v2

    new-instance v9, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v10, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v2

    aput v6, v9, v0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-array v9, v0, [Landroid/view/View;

    aput-object v5, v9, v2

    invoke-static {v9}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v1, [Landroid/animation/Animator;

    aput-object v7, v5, v2

    aput-object v8, v5, v0

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    invoke-static {v4}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    new-array v7, v1, [F

    aput v5, v7, v2

    aput v6, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v7, v0, [Landroid/view/View;

    aput-object v4, v7, v2

    new-instance v8, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v9, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v8, v9, v7}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result p0

    int-to-float p0, p0

    new-array v7, v1, [F

    aput p0, v7, v2

    aput v6, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v6, v0, [Landroid/view/View;

    aput-object v4, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v5, v1, v2

    aput-object p0, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0xfa

    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v3
.end method

.method public final getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-array v4, v9, [Landroid/animation/Animator;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v12}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz v1, :cond_1

    const-wide/16 v13, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0xfa

    :goto_0
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v13, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {v1, v13}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v12, v4, v11

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    aput-object v12, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    const/16 v4, 0x9

    new-array v4, v4, [Landroid/animation/Animator;

    if-eqz v1, :cond_2

    sget-object v12, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_2

    :cond_2
    sget-object v12, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    :goto_2
    new-array v14, v9, [F

    fill-array-data v14, :array_0

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x12c

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0xfa

    :goto_3
    invoke-virtual {v14, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v12}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v10, [Landroid/view/View;

    iget-object v6, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->scrim:Landroid/view/View;

    aput-object v6, v5, v11

    new-instance v6, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v12, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v12, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v6, v12, v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v14, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v14, v4, v11

    iget-object v5, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->backHelper:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v6, v5, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideToClipBounds:Landroid/graphics/Rect;

    iget-object v12, v5, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->initialHideFromClipBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v6, v7, v8, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    iget-object v7, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    iget-object v8, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v7, v8}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v12

    :goto_5
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    iget-object v13, v13, Lcom/google/android/material/search/SearchBar;->backgroundShape:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v13}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v13

    iget v7, v7, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->cornerRadius:F

    invoke-virtual {v5}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerSize()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    new-instance v7, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v7, v8}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v12, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v13, v5, v8}, Lcom/google/android/material/search/SearchViewAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;FFLandroid/graphics/Rect;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v1, :cond_6

    const-wide/16 v7, 0x12c

    goto :goto_6

    :cond_6
    const-wide/16 v7, 0xfa

    :goto_6
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {v1, v5}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v6, v4, v10

    new-array v6, v9, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    if-eqz v1, :cond_7

    const-wide/16 v7, 0x32

    goto :goto_7

    :cond_7
    const-wide/16 v7, 0x2a

    :goto_7
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    const-wide/16 v12, 0xfa

    goto :goto_8

    :cond_8
    const-wide/16 v12, 0x0

    :goto_8
    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v12, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v12}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v13, v10, [Landroid/view/View;

    iget-object v15, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->clearButton:Landroid/widget/ImageButton;

    aput-object v15, v13, v11

    new-instance v15, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v7, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v15, v7, v13}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v6, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v6, v4, v9

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v2, [Landroid/animation/Animator;

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v1, :cond_9

    const-wide/16 v16, 0x96

    :goto_9
    move-object v15, v3

    move-wide/from16 v2, v16

    goto :goto_a

    :cond_9
    const-wide/16 v16, 0x53

    goto :goto_9

    :goto_a
    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_a

    const-wide/16 v2, 0x4b

    goto :goto_b

    :cond_a
    const-wide/16 v2, 0x0

    :goto_b
    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-static {v1, v12}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v9, [Landroid/view/View;

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->contentContainer:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    aput-object v3, v2, v10

    new-instance v12, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v13, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    const/4 v10, 0x3

    invoke-direct {v13, v10}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v12, v13, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v8, v7, v11

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    new-array v8, v9, [F

    aput v2, v8, v11

    const/4 v2, 0x1

    const/4 v12, 0x0

    aput v12, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v1, :cond_b

    const-wide/16 v12, 0x12c

    goto :goto_c

    :cond_b
    const-wide/16 v12, 0xfa

    :goto_c
    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v5}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v12, v2, [Landroid/view/View;

    iget-object v13, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->divider:Landroid/view/View;

    aput-object v13, v12, v11

    invoke-static {v12}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v8, v7, v2

    new-array v8, v9, [F

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v1, :cond_c

    const-wide/16 v12, 0x12c

    goto :goto_d

    :cond_c
    const-wide/16 v12, 0xfa

    :goto_d
    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v5}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v12, v2, [Landroid/view/View;

    aput-object v3, v12, v11

    new-instance v2, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v3, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v2, v3, v12}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v2, 0x3

    aput-object v6, v4, v2

    iget-object v2, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->headerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1, v11}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v4, v3

    iget-object v2, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->dummyToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2, v1, v11}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v4, v6

    new-array v3, v9, [F

    fill-array-data v3, :array_4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v1, :cond_d

    const-wide/16 v6, 0x12c

    goto :goto_e

    :cond_d
    const-wide/16 v6, 0xfa

    :goto_e
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v5}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v5, v14, Lcom/google/android/material/search/SearchView;->animatedMenuItems:Z

    if-eqz v5, :cond_e

    invoke-static {v2}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v5}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v5

    new-instance v6, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v6, v2, v5}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_e
    const/4 v2, 0x6

    aput-object v3, v4, v2

    iget-object v2, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->editText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    iget-object v2, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchPrefix:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslationAnimator(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v4, v3

    move-object v2, v15

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/google/android/material/search/SearchViewAnimationHelper$5;

    invoke-direct {v3, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getFromTranslationXEnd(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    add-int p0, v0, p1

    :goto_0
    return p0
.end method

.method public final getFromTranslationXStart(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    add-int v1, p0, v0

    :goto_0
    return v1
.end method

.method public final getFromTranslationY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->toolbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v1

    return p0
.end method

.method public final getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v5, v6, v0

    const/4 v5, 0x0

    aput v5, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v2, v2, [Landroid/view/View;

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v5, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->addBackButtonProgressAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    :goto_0
    invoke-virtual {v1, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v1
.end method

.method public final getTranslationAnimator(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXStart(Landroid/view/View;)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result p3

    :goto_0
    int-to-float p3, p3

    const/4 v3, 0x0

    new-array v4, v1, [F

    aput p3, v4, v2

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-array v4, v0, [Landroid/view/View;

    aput-object p1, v4, v2

    new-instance v5, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v6, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v5, v6, v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getFromTranslationY()I

    move-result p0

    int-to-float p0, p0

    new-array v4, v1, [F

    aput p0, v4, v2

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v3, v0, [Landroid/view/View;

    aput-object p1, v3, v2

    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p3, v1, v2

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xfa

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p2, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final hide()Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->getTranslateAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method
