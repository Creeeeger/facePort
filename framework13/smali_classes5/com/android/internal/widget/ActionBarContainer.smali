.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private blacklist mActionBarView:Landroid/view/View;

.field private blacklist mActionContextView:Landroid/view/View;

.field private blacklist mBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mHeight:I

.field private blacklist mIsSetOpenTheme:Z

.field private blacklist mIsSplit:Z

.field private blacklist mIsStacked:Z

.field protected blacklist mIsThemeDeviceDefaultFamily:Z

.field private blacklist mIsTransitioning:Z

.field private blacklist mSetBackground:Z

.field private blacklist mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mTabContainer:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionBarView(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSplit(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStacked(Lcom/android/internal/widget/ActionBarContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStackedBackground(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCollapsed(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200b9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v1, v0, Landroid/util/TypedValue;->data:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    .line 84
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSetBackground:Z

    .line 89
    .end local v0    # "outValue":Landroid/util/TypedValue;
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v5, 0x1080868

    if-ne v1, v5, :cond_2

    .line 96
    const v1, 0x1080b83

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v5, 0x1080869

    if-ne v1, v5, :cond_3

    .line 103
    const v1, 0x1080b84

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 113
    :goto_2
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    const/4 v1, 0x4

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v1

    const v4, 0x10205d8

    if-ne v1, v4, :cond_5

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 119
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_3

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    .line 124
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 126
    return-void
.end method

.method private blacklist getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static blacklist isCollapsed(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 374
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 6

    .line 255
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v0

    .line 258
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 260
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 261
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 266
    .local v3, "stackedBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 270
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 271
    .local v4, "splitBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 275
    :cond_2
    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 278
    :cond_3
    return-void
.end method

.method public blacklist getTabContainer()Landroid/view/View;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 292
    :cond_2
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v3, 0x1080868

    if-ne v1, v3, :cond_0

    .line 139
    nop

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080b83

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v3, 0x1080869

    if-ne v1, v3, :cond_1

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080b84

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSetBackground:Z

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 153
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSetBackground:Z

    if-nez v1, :cond_3

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    :cond_3
    :goto_0
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    .line 158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 173
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 175
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_0
    return-void
.end method

.method public whitelist onFinishInflate()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 166
    const v0, 0x10201bc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 167
    const v0, 0x10201c1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 168
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 327
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 415
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 418
    .local v0, "tabContainer":Landroid/view/View;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 420
    .local v3, "hasTabs":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    .line 422
    .local v1, "containerHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 424
    .local v5, "tabHeight":I
    sub-int v6, v1, v5

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v7, v1, v7

    invoke-virtual {v0, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 428
    .end local v1    # "containerHeight":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "tabHeight":I
    :cond_1
    const/4 v1, 0x0

    .line 429
    .local v1, "needsInvalidate":Z
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 435
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 436
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 437
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 438
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 437
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 439
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 440
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 441
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionContextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 441
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 444
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    :goto_1
    const/4 v1, 0x1

    .line 448
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    .line 449
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 450
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 452
    const/4 v1, 0x1

    .line 456
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 459
    :cond_7
    return-void
.end method

.method public whitelist onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    .line 385
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_0

    .line 386
    nop

    .line 387
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 386
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 389
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "nonTabMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    .line 396
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 397
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 398
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v4, v5, :cond_2

    .line 399
    goto :goto_2

    .line 401
    :cond_2
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v5

    .line 401
    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    .end local v4    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v3    # "i":I
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 405
    .local v3, "mode":I
    if-ne v3, v1, :cond_5

    .line 406
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_3

    :cond_5
    const v1, 0x7fffffff

    .line 407
    .local v1, "maxHeight":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 408
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 407
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 411
    .end local v0    # "nonTabMaxHeight":I
    .end local v1    # "maxHeight":I
    .end local v2    # "childCount":I
    .end local v3    # "mode":I
    :cond_6
    return-void
.end method

.method public blacklist onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 309
    :cond_2
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 332
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSetBackground:Z

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 191
    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 194
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 194
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    .line 198
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 201
    return-void
.end method

.method public blacklist setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 227
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 229
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    move v0, v2

    .line 233
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 236
    return-void
.end method

.method public blacklist setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 209
    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 212
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    .line 216
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 219
    return-void
.end method

.method public blacklist setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 351
    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 354
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 358
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public blacklist setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 321
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    .line 322
    :cond_0
    const/high16 v0, 0x40000

    .line 321
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 323
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 242
    .local v1, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 245
    :cond_3
    return-void
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 367
    if-eqz p3, :cond_0

    .line 368
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 250
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0
.end method
