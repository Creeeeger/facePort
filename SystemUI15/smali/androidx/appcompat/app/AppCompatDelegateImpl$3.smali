.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 13

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->isShown()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_12

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    :cond_1
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect1:Landroid/graphics/Rect;

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTempRect2:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v9

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v10

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v11

    invoke-virtual {v6, v1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget-object v9, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_3

    :try_start_0
    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v8, "ViewUtils"

    const-string v9, "Could not invoke computeFitSystemWindows"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    iget v1, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v9}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v9

    if-nez v9, :cond_4

    move v10, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v10

    :goto_3
    if-nez v9, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v9

    :goto_4
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v11, v1, :cond_7

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v11, v8, :cond_7

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v11, v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v2

    goto :goto_6

    :cond_7
    :goto_5
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v7

    :goto_6
    if-lez v1, :cond_8

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-nez v1, :cond_8

    new-instance v1, Landroid/view/View;

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v11, -0x1

    const/16 v12, 0x33

    invoke-direct {v1, v11, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v9, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_8
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, v11, :cond_9

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v10, :cond_9

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v9, :cond_a

    :cond_9
    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_7
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    move v7, v2

    :goto_8
    if-eqz v7, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v8

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const v9, 0x7f060015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    goto :goto_9

    :cond_c
    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    const v9, 0x7f060014

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    :goto_9
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mOverlayActionMode:Z

    if-nez v1, :cond_e

    if-eqz v7, :cond_e

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsIgnoreRemoveSystemTopInset:Z

    if-nez v1, :cond_e

    move v3, v2

    :cond_e
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Landroidx/appcompat/widget/ContentFrameLayout;

    if-eqz v8, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    if-eqz v8, :cond_f

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-eqz v8, :cond_10

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_11

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_11
    move v1, v7

    move v7, v6

    goto :goto_a

    :cond_12
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_13

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v2

    move v7, v1

    :goto_a
    if-eqz v7, :cond_15

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v3, :cond_15

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_14
    move v1, v2

    :cond_15
    :goto_b
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mStatusGuard:Landroid/view/View;

    if-eqz p0, :cond_17

    if-eqz v1, :cond_16

    goto :goto_c

    :cond_16
    move v2, v5

    :goto_c
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    if-eq v0, v3, :cond_18

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result p0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    new-instance v2, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v2, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p0, v3, v0, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget-object p1, v2, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    :cond_18
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
