.class public final Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDefaultHeight()V

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 13

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mStackViewGroup:Lcom/google/android/material/appbar/StackViewGroup;

    iget-object v1, v1, Lcom/google/android/material/appbar/StackViewGroup;->rootView:Landroid/widget/FrameLayout;

    neg-int v2, p2

    int-to-float v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-static {v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    if-eqz v11, :cond_2

    instance-of v12, v8, Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v12, :cond_2

    move-object v12, v8

    check-cast v12, Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v12, v12, Landroidx/appcompat/widget/ActionBarContextView;->mIsActionModeAccessibilityOn:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_2
    :goto_2
    iget v11, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    if-eq v11, v0, :cond_4

    const/4 v8, 0x2

    if-eq v11, v8, :cond_3

    goto :goto_3

    :cond_3
    iget v8, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v10, v8}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3

    :cond_4
    invoke-static {v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    iget v9, v9, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v12, v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v12, v8

    iget v8, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v8

    invoke-static {v2, v5, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-virtual {v10, v8}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_3
    add-int/2addr v7, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    if-lez v4, :cond_6

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mTitleEnabled:Z

    if-eqz v2, :cond_14

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e126e98    # 0.143f

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v4, v3

    int-to-float v2, v2

    const/4 v6, 0x0

    sub-float v7, v2, v6

    mul-float/2addr v7, v4

    const/high16 v4, 0x437f0000    # 255.0f

    sub-float v7, v4, v7

    cmpg-float v8, v7, v6

    if-gez v8, :cond_7

    move v7, v6

    goto :goto_4

    :cond_7
    cmpl-float v8, v7, v4

    if-gtz v8, :cond_8

    if-nez p2, :cond_9

    cmpg-float p2, v7, v4

    if-gez p2, :cond_9

    :cond_8
    move v7, v4

    :cond_9
    :goto_4
    div-float/2addr v7, v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p2

    iget v8, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeight:F

    float-to-int v8, v8

    if-le p2, v8, :cond_b

    iget-boolean p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move p1, v5

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v0

    :goto_6
    if-eqz p1, :cond_c

    move p2, v6

    goto :goto_7

    :cond_c
    move p2, v7

    :goto_7
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    instance-of v1, p2, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_15

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_d

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_8

    :cond_d
    cmpl-float v1, v7, v6

    if-nez v1, :cond_e

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :cond_e
    :goto_8
    if-eqz p1, :cond_f

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :goto_9
    move v6, v4

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, p1

    mul-float/2addr v2, v0

    cmpg-float p1, v2, v6

    if-gez p1, :cond_10

    goto :goto_a

    :cond_10
    cmpl-float p1, v2, v4

    if-lez p1, :cond_11

    goto :goto_9

    :cond_11
    move v6, v2

    :goto_a
    float-to-int p1, v6

    div-float/2addr v6, v4

    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mFadeToolbarTitle:Z

    if-eqz p0, :cond_13

    iget-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_12
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_13
    iget-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15

    iget-object p0, p2, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_b

    :cond_14
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v4

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    :cond_15
    :goto_b
    return-void
.end method
