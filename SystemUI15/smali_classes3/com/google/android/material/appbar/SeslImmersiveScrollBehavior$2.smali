.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v2, "SeslImmersiveScrollBehavior"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsDetachedState:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AppBarLayout was DetachedState. Skip onOffsetChanged"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v5

    iget v6, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    add-int/2addr v6, v0

    int-to-float v6, v6

    cmpl-float v7, v5, v3

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_8

    move v9, v8

    goto :goto_2

    :cond_8
    move v9, v5

    :goto_2
    div-float/2addr v6, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    add-int v9, v9, p2

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iget v10, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    int-to-float v10, v10

    add-float v11, v9, v10

    mul-float/2addr v6, v9

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v6, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v12, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    int-to-float v12, v12

    add-float v13, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget v13, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    int-to-float v14, v13

    sub-float/2addr v14, v12

    const/4 v15, 0x1

    if-eqz v13, :cond_9

    goto :goto_3

    :cond_9
    move v13, v15

    :goto_3
    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v13, v5

    if-gtz v13, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->canImmersiveScroll()Z

    move-result v13

    if-eqz v13, :cond_16

    iget-object v5, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_b

    if-eqz v0, :cond_b

    int-to-float v5, v0

    add-float/2addr v5, v6

    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v7, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v7, v13}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    move v0, v4

    :goto_4
    int-to-float v0, v0

    add-float/2addr v0, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    goto :goto_5

    :cond_b
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    :goto_5
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_c
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_d
    iget v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->findSystemBarsBackground()V

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_f
    iget v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_24

    iput v11, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "AnimationController is already finished by App side"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_10
    float-to-int v2, v12

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_13

    iget-object v3, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-eq v2, v0, :cond_12

    move v0, v15

    goto :goto_7

    :cond_12
    move v0, v4

    :goto_7
    iget-boolean v3, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    if-eq v0, v3, :cond_13

    iput-boolean v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    iget-object v3, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-string v7, "hidden_semSetForceHideRoundedCorner"

    invoke-static {v5, v7, v6}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " InvocationTargetException"

    invoke-static {v5, v0, v7, v6, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalArgumentException"

    invoke-static {v5, v0, v7, v6, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalAccessException"

    invoke-static {v5, v0, v7, v6, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_13
    :goto_8
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/SeslDisplayUtils;->isPinEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/material/internal/SeslDisplayUtils;->getPinnedEdgeWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v5, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "active_edge_area"

    invoke-static {v5, v6, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget v6, v0, Landroid/graphics/Insets;->left:I

    if-ne v3, v6, :cond_14

    if-nez v5, :cond_14

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_9

    :cond_14
    iget v0, v0, Landroid/graphics/Insets;->right:I

    if-ne v3, v0, :cond_15

    if-ne v5, v15, :cond_15

    goto :goto_9

    :cond_15
    move v3, v4

    :goto_9
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    float-to-int v5, v10

    invoke-static {v4, v5, v3, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-interface {v0, v2, v8, v14}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    goto/16 :goto_c

    :cond_16
    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    if-eqz v2, :cond_17

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_17
    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_18
    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v2, :cond_1a

    int-to-float v0, v0

    if-eqz v7, :cond_19

    goto :goto_a

    :cond_19
    move v5, v8

    :goto_a
    div-float v2, v0, v5

    iget-object v5, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    :cond_1a
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_1b

    goto/16 :goto_c

    :cond_1b
    iget-object v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    iget-object v3, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    if-nez v3, :cond_1c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    :cond_1c
    if-nez v2, :cond_1d

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto/16 :goto_c

    :cond_1d
    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-ne v0, v3, :cond_1e

    invoke-interface {v2, v15}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_c

    :cond_1e
    if-ne v0, v5, :cond_24

    invoke-interface {v2, v4}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_c

    :cond_1f
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    :cond_20
    iget-boolean v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    :cond_21
    iget-boolean v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_24

    invoke-virtual {v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    iget v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_b

    :cond_22
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_23
    :goto_b
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    :cond_24
    :goto_c
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_25
    return-void
.end method
