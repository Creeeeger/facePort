.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;,
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final blacklist HOVERSCROLL_LEFT:I = 0x1

.field private static final blacklist HOVERSCROLL_RIGHT:I = 0x2

.field private static final blacklist HOVERSCROLL_WIDTH_DP:I = 0x19

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final blacklist MSG_TIMEOUT:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HorizontalScrollView"

.field private static final blacklist TIMEOUT_DELAY:I = 0x64


# instance fields
.field private blacklist HOVERSCROLL_DELAY:I

.field private blacklist HOVERSCROLL_SPEED:I

.field private final blacklist ON_ABSORB_VELOCITY:I

.field private greylist-max-o mActivePointerId:I

.field private greylist mChildToScrollTo:Landroid/view/View;

.field public greylist-max-p mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mHorizontalScrollFactor:F

.field private blacklist mHoverAreaEnter:Z

.field private blacklist mHoverAreaWidth:I

.field private blacklist mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private blacklist mHoverRecognitionCurrentTime:J

.field private blacklist mHoverRecognitionDurationTime:J

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollSpeed:I

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollTimeInterval:J

.field private greylist mIsBeingDragged:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private blacklist mIsSetOpenTheme:Z

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist mLastMotionX:I

.field private greylist-max-o mLastScroll:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-o mMinimumVelocity:I

.field private blacklist mNeedsHoverScroll:Z

.field private greylist-max-r mOverflingDistance:I

.field private greylist-max-r mOverscrollDistance:I

.field private greylist-max-o mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/HorizontalScrollView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    const/16 v3, 0x2710

    iput v3, p0, Landroid/widget/HorizontalScrollView;->ON_ABSORB_VELOCITY:I

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    iput-wide v3, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iput-wide v3, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    iput-wide v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStateChanged:Z

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    const/16 v2, 0xf

    iput v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    iput v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p0, v1}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p0, v1}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    sget-object v2, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v5, Landroid/R$styleable;->HorizontalScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/HorizontalScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200ef

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const v6, 0x1080989

    if-ne v5, v6, :cond_2

    const v5, 0x1080c81

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setRevealOnFocusHint(Z)V

    :cond_4
    return-void
.end method

.method private greylist-max-o canScroll()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int v0, p2, p1

    return v0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist consumeFlingInStretch(I)I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    if-lez p1, :cond_2

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    neg-int v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1
    sub-int v3, p1, v1

    return v3

    :cond_2
    if-gez p1, :cond_4

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v4, p1

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v5, v3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eq v1, p1, :cond_3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    :cond_3
    sub-int v3, p1, v1

    return v3

    :cond_4
    return p1

    :cond_5
    :goto_0
    return p1
.end method

.method private greylist-max-o doScrollX(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    if-nez v1, :cond_1

    move-object v1, v5

    move v2, v10

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v7, v11, :cond_4

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    nop

    :goto_2
    if-eqz v2, :cond_5

    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    move-object v1, v5

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    move-object v1, v5

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private greylist-max-o findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, p2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o getScrollRange()I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_4

    :sswitch_1
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    iget-wide v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v6, 0x4

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v6, 0x5

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    iget v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    :goto_0
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    neg-int v2, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    :goto_1
    const/4 v4, 0x0

    if-gez v2, :cond_5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v5, :cond_6

    :cond_5
    if-lez v2, :cond_7

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v5, v0, :cond_7

    :cond_6
    invoke-virtual {p0, v2, v4}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    iget v4, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v5

    if-eqz v5, :cond_8

    if-ne v5, v1, :cond_9

    if-lez v0, :cond_9

    :cond_8
    move v4, v1

    :cond_9
    if-eqz v4, :cond_f

    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_f

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_c

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/16 v7, 0x2710

    if-ne v6, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    :cond_a
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v6, v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    :cond_b
    :goto_2
    nop

    :cond_c
    :goto_3
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_e
    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    :cond_f
    if-nez v4, :cond_10

    iget-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_10

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    :cond_10
    nop

    :cond_11
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist hidden_setTouchSlop(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setTouchSlop(I)V

    return-void
.end method

.method private greylist-max-o inChild(II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private greylist-max-o initScrollView()V
    .locals 2

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHorizontalScrollFactor:F

    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private greylist recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private blacklist resetTimeout()V
    .locals 4

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    add-int v3, v2, v1

    const/16 v4, 0x11

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int v6, p2, v2

    goto :goto_1

    :cond_3
    sub-int v6, p3, v3

    :goto_1
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v0
.end method

.method private greylist-max-o scrollToChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist semGetParentViewRotation()F
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    return v1

    :cond_1
    return v2
.end method

.method private blacklist semGetRotatePointerIcon(I)I
    .locals 7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRotation()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->semGetParentViewRotation()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x4e2d

    if-ne p1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const/16 v5, -0x2d

    goto :goto_2

    :cond_2
    const/16 v5, 0x2d

    :goto_2
    int-to-float v5, v5

    add-float/2addr v5, v0

    const/high16 v6, 0x42b40000    # 90.0f

    div-float v6, v5, v6

    float-to-int v6, v6

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, -0x2

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    add-int/2addr v6, v2

    rem-int/lit8 v6, v6, 0x4

    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    add-int/lit8 v6, v6, 0x4

    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x4e21

    return v2

    :pswitch_0
    const/16 v2, 0x4e2b

    return v2

    :pswitch_1
    const/16 v2, 0x4e31

    return v2

    :pswitch_2
    const/16 v2, 0x4e2f

    return v2

    :pswitch_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .locals 4

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    double-to-float v2, v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 2

    const/16 v0, 0x4e31

    if-eq p2, v0, :cond_0

    const/16 v0, 0x4e2d

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->semGetRotatePointerIcon(I)I

    move-result p2

    :cond_1
    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arrowScroll(I)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    move v3, v2

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x42

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v8, v4, v7

    if-ge v8, v2, :cond_3

    sub-int v3, v4, v7

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    return v5

    :cond_4
    if-ne p1, v6, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    neg-int v4, v3

    :goto_1
    invoke-direct {p0, v4}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    :cond_6
    const/4 v3, 0x1

    return v3
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v4, :cond_1

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    if-le v4, v2, :cond_2

    sub-int v5, v4, v2

    add-int/2addr v3, v5

    :cond_2
    :goto_0
    return v3
.end method

.method public whitelist computeScroll()V
    .locals 20

    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v11, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v12, v10, Landroid/widget/HorizontalScrollView;->mScrollY:I

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    sub-int v0, v13, v11

    invoke-direct {v10, v0}, Landroid/widget/HorizontalScrollView;->consumeFlingInStretch(I)I

    move-result v15

    if-nez v15, :cond_1

    if-eq v12, v14, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, v14

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v8

    const/4 v0, 0x1

    if-eqz v8, :cond_3

    if-ne v8, v0, :cond_2

    if-lez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    move/from16 v16, v0

    sub-int v2, v14, v12

    iget v7, v10, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v3, v11

    move v4, v12

    move v5, v9

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 v17, v14

    move v14, v9

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, v10, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v10, v0, v1, v11, v12}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    if-eqz v16, :cond_5

    if-eqz v15, :cond_5

    if-gez v13, :cond_4

    if-ltz v11, :cond_4

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_4
    if-le v13, v14, :cond_5

    if-gt v11, v14, :cond_5

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_6
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/HorizontalScrollView;->setFrameContentVelocity(F)V

    :cond_7
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    :cond_2
    const/4 v5, 0x0

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v6, v3, :cond_5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-le v6, v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v0, :cond_3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_0

    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v6, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_4
    goto :goto_2

    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, v0, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_1

    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_2
    return v5
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    iput-boolean v6, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    iput-boolean v5, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStateChanged:Z

    iget-boolean v7, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    if-nez v7, :cond_2

    iput-boolean v5, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    :cond_2
    iget-boolean v7, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_4

    if-ne v3, v4, :cond_4

    iget-object v7, v0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v5

    :goto_0
    if-nez v7, :cond_4

    iput-boolean v5, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    :cond_4
    iget-boolean v7, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5

    iput-boolean v5, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    :cond_5
    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v9

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gtz v10, :cond_7

    iget-object v10, v0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v6, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v10

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v8, v10, v11

    :cond_8
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    if-ne v10, v4, :cond_9

    move v10, v6

    goto :goto_1

    :cond_9
    move v10, v5

    :goto_1
    iget-object v11, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-nez v11, :cond_a

    new-instance v11, Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v11, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    :cond_a
    iget v11, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    const/16 v12, 0x4e21

    const-wide/16 v13, 0x0

    if-le v3, v11, :cond_b

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v11, v8, v11

    if-lt v3, v11, :cond_1b

    :cond_b
    if-eqz v9, :cond_1b

    if-ltz v3, :cond_c

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v3, v11, :cond_c

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v11, :cond_c

    iget-boolean v11, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v11, :cond_1b

    :cond_c
    iget v11, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v11, v8, v11

    if-lt v3, v11, :cond_d

    if-gt v3, v8, :cond_d

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lt v11, v9, :cond_d

    iget-boolean v11, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v11, :cond_1b

    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/16 v15, 0x20

    if-eq v11, v15, :cond_1b

    :cond_e
    if-eqz v10, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isLockScreenMode()Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_3

    :cond_f
    iget-boolean v11, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v11, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    :cond_10
    const/4 v4, 0x7

    if-ne v2, v4, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->resetTimeout()V

    :cond_11
    const/16 v4, 0x4e2d

    const/16 v5, 0x4e31

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_12
    invoke-direct {v0, v1, v12}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-wide v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    iput-wide v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_2
    iput-boolean v6, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-ltz v3, :cond_13

    iget v12, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v3, v12, :cond_13

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v6, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_13
    iget v5, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v5, v8, v5

    if-lt v3, v5, :cond_1a

    if-gt v3, v8, :cond_1a

    iget-object v5, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :pswitch_3
    iget-boolean v12, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v12, :cond_14

    iput-boolean v6, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_14
    if-ltz v3, :cond_17

    iget v12, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v3, v12, :cond_17

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_15

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_16

    :cond_15
    invoke-direct {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_16
    iput v6, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_17
    iget v5, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v5, v8, v5

    if-lt v3, v5, :cond_1a

    if-gt v3, v8, :cond_1a

    iget-object v5, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v5, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_18

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    if-ne v5, v6, :cond_19

    :cond_18
    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_19
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_1a
    :goto_2
    return v6

    :cond_1b
    :goto_3
    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    invoke-direct {v0, v1, v12}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1c
    iget v4, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v3, v4, :cond_1d

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v4, v8, v4

    if-ge v3, v4, :cond_1d

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    :cond_1d
    iget-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_1e

    iget-wide v4, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    cmp-long v4, v4, v13

    if-eqz v4, :cond_1f

    :cond_1e
    invoke-direct {v0, v1, v12}, Landroid/widget/HorizontalScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1f
    iput-wide v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    iput-wide v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v2

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:fillViewPort"

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x42

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x11

    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v0

    :goto_1
    const/16 v2, 0x42

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v0

    :goto_2
    const/16 v2, 0x11

    nop

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v2}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->playSoundEffect(I)V

    :cond_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist fling(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v12, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v13, v1, v2

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v15, v1, v2

    sub-int v1, v15, v13

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v1, 0x0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v3, v12

    invoke-direct {v0, v2, v3}, Landroid/widget/HorizontalScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v3, v12

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne v2, v11, :cond_3

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-direct {v0, v2, v12}, Landroid/widget/HorizontalScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v12}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_0
    move/from16 v16, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    move/from16 v16, v1

    :goto_1
    if-eqz v16, :cond_8

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    div-int/lit8 v10, v13, 0x2

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    move v7, v11

    move/from16 v18, v11

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFrameContentVelocity(F)V

    :cond_4
    if-lez v12, :cond_5

    const/4 v14, 0x1

    :cond_5
    move v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v3, p0

    :cond_6
    if-eq v3, v2, :cond_9

    if-eqz v1, :cond_7

    const/16 v4, 0x42

    goto :goto_2

    :cond_7
    const/16 v4, 0x11

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_3

    :cond_8
    move/from16 v18, v11

    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_a
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .locals 6

    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLeftEdgeEffectColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getLeftFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 2

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getRightEdgeEffectColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getRightFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public blacklist getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return v0
.end method

.method public whitelist isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public blacklist isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    nop

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, v2}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    nop

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v0, v1

    :cond_3
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mHorizontalScrollFactor:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int v6, v5, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v7

    const/16 v8, 0x2002

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v7, :cond_4

    if-ne v7, v2, :cond_5

    if-lez v4, :cond_5

    :cond_4
    move v8, v2

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    if-gez v6, :cond_7

    if-eqz v8, :cond_6

    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v12, v6

    neg-float v12, v12

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v11, v12, v10}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    const/4 v9, 0x1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    if-le v6, v4, :cond_9

    if-eqz v8, :cond_8

    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    sub-int v12, v6, v4

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v11, v12, v10}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    const/4 v9, 0x1

    :cond_8
    move v6, v4

    :cond_9
    :goto_2
    if-eq v6, v5, :cond_a

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v6, v10}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return v2

    :cond_a
    if-eqz v9, :cond_b

    return v2

    :cond_b
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    and-int/lit16 v1, v0, 0xff

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_3
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HorizontalScrollView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_9

    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :pswitch_4
    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v4, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_5
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_8
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_9
    :goto_1
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 11

    move-object v6, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    const/4 v7, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v1, v3, v4

    move v8, v0

    move v9, v1

    goto :goto_0

    :cond_0
    move v8, v0

    move v9, v1

    :goto_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v10, v0, v9

    if-le v8, v10, :cond_1

    const/4 v0, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    iput-boolean v7, v6, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    iget-object v0, v6, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_7

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    sub-int v1, v8, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v6, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v2, v2, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    sub-int v2, v1, v2

    goto :goto_2

    :cond_3
    iget-object v2, v6, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v2, v2, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    :goto_2
    iput v2, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iput-object v0, v6, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, v1, v0

    iput v0, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    :cond_5
    :goto_3
    iget v0, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-le v0, v1, :cond_6

    iput v1, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_4

    :cond_6
    iget v0, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gez v0, :cond_7

    iput v7, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    :cond_7
    :goto_4
    iget v0, v6, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, v6, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v6, :cond_3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v5, v8}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 11

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    if-eqz p3, :cond_0

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x42

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x11

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    nop

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/HorizontalScrollView$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    :goto_0
    iput v2, v1, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    :pswitch_2
    iget-boolean v0, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v3, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v5, v10, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_0
    iput v1, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    iput-boolean v2, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_6

    :pswitch_3
    iget v0, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    if-ne v14, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HorizontalScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v15, v0

    iget v0, v10, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int/2addr v0, v15

    iget-boolean v1, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iput-boolean v13, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_3

    iget v3, v10, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v3, v10, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v0, v3

    :cond_4
    :goto_0
    iget-boolean v1, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_16

    iput v15, v10, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    iget v9, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v7

    if-eqz v7, :cond_5

    if-ne v7, v13, :cond_6

    if-lez v8, :cond_6

    :cond_5
    move v2, v13

    :cond_6
    move/from16 v16, v2

    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-eqz v16, :cond_9

    const/4 v1, 0x0

    if-gez v0, :cond_7

    iget-object v2, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_7
    if-lez v0, :cond_8

    iget-object v2, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v5, v17, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_8
    :goto_1
    sub-int/2addr v0, v1

    move v5, v0

    goto :goto_2

    :cond_9
    move v5, v0

    :goto_2
    iget v3, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v4, v10, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v2, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v23, v4

    move/from16 v4, v21

    move v13, v5

    move v5, v8

    move/from16 v24, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move/from16 v7, v23

    move/from16 v25, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    if-eqz v16, :cond_e

    int-to-float v0, v13

    cmpl-float v0, v0, v18

    if-eqz v0, :cond_e

    add-int v9, v19, v13

    if-gez v9, :cond_b

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v2, v24

    sub-float v3, v17, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    move/from16 v0, v25

    goto :goto_3

    :cond_a
    move/from16 v0, v25

    goto :goto_3

    :cond_b
    move/from16 v2, v24

    move/from16 v0, v25

    if-le v9, v0, :cond_c

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v3, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_4

    :cond_e
    move/from16 v2, v24

    move/from16 v0, v25

    :cond_f
    :goto_4
    goto/16 :goto_6

    :pswitch_4
    iget-boolean v0, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_16

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v10, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_11

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v10, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v4, v5, :cond_10

    neg-int v4, v3

    invoke-virtual {v10, v4}, Landroid/widget/HorizontalScrollView;->fling(I)V

    goto :goto_5

    :cond_10
    iget-object v13, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v14, v10, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v15, v10, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v17

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_11
    :goto_5
    iput v1, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    iput-boolean v2, v10, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, v10, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_12
    goto :goto_6

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_13

    return v2

    :cond_13
    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v10, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    nop

    :cond_16
    :goto_6
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public whitelist pageScroll(I)Z
    .locals 6

    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_3

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return v1

    :cond_2
    return v0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return v1

    :cond_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x1020039 -> :sswitch_0
        0x102003b -> :sswitch_1
    .end sparse-switch
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public whitelist scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public whitelist semSetHoverScrollMode(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setLeftEdgeEffectColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setRightEdgeEffectColor(I)V

    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setHoverScrollDelay(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public blacklist setHoverScrollSpeed(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    return-void
.end method

.method public whitelist setLeftEdgeEffectColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public whitelist setRightEdgeEffectColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist smoothScrollBy(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int v7, v6, p1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p1, v7, v6

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v7, v6, v8, p1, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .locals 2

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
