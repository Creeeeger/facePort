.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist HOVERSCROLL_DOWN:I = 0x2

.field private static final blacklist HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScrollView"

.field static final blacklist sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist GO_TO_TOP_HIDE:I

.field private final blacklist GTP_STATE_MAINTAINED:I

.field private final blacklist GTP_STATE_NONE:I

.field private final blacklist GTP_STATE_PRESSED:I

.field private final blacklist GTP_STATE_SHOWN:I

.field private blacklist HOVERSCROLL_DELAY:I

.field private blacklist HOVERSCROLL_SPEED:F

.field private final blacklist ON_ABSORB_VELOCITY:I

.field private final blacklist SWITCH_CONTROL_FLING:I

.field private final blacklist SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final blacklist SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private greylist-max-o mActivePointerId:I

.field private blacklist mAutoscrollDuration:F

.field private blacklist mAutoscrollDurationGap:F

.field private greylist-max-p mChildToScrollTo:Landroid/view/View;

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-r mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private final blacklist mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

.field private blacklist mGoToTopElevation:I

.field private blacklist mGoToTopGap:I

.field private blacklist mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mGoToTopWH:I

.field private blacklist mHoverAreaEnter:Z

.field private blacklist mHoverBottomAreaHeight:I

.field private blacklist mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private blacklist mHoverRecognitionCurrentTime:J

.field private blacklist mHoverRecognitionDurationTime:J

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollSpeed:I

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollTimeInterval:J

.field private blacklist mHoverTopAreaHeight:I

.field private blacklist mIgnoreDelaychildPrerssed:Z

.field private greylist mIsBeingDragged:Z

.field private blacklist mIsGoToTopShown:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private greylist mLastMotionY:I

.field private greylist mLastScroll:J

.field private blacklist mLinear:Z

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-p mMinimumVelocity:I

.field private blacklist mNeedsHoverScroll:Z

.field private greylist-max-o mNestedYOffset:I

.field private blacklist mOutline:Landroid/graphics/Outline;

.field private greylist-max-p mOverflingDistance:I

.field private greylist-max-p mOverscrollDistance:I

.field private blacklist mPreviousTextViewScroll:Z

.field private greylist-max-o mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final greylist-max-o mScrollConsumed:[I

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private final blacklist mSemAutoHide:Ljava/lang/Runnable;

.field private blacklist mSemEnableGoToTop:Z

.field private blacklist mSemGoToTopBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

.field private blacklist mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

.field private blacklist mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopLastState:I

.field private blacklist mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopPressed:Z

.field private final blacklist mSemGoToTopRect:Landroid/graphics/Rect;

.field private blacklist mSemGoToTopState:I

.field private blacklist mSizeChange:Z

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSemGoToTopImage(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsGoToTopShown(Landroid/widget/ScrollView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGoToTopFadeIn(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeIn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGoToTopFadeOut(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemSetupGoToTop(Landroid/widget/ScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 392
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 393
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 397
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 400
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 178
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 199
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 201
    const/16 v3, 0x2710

    iput v3, p0, Landroid/widget/ScrollView;->ON_ABSORB_VELOCITY:I

    .line 207
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 222
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 223
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 226
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 228
    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    .line 231
    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    .line 232
    iput v0, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    .line 233
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    .line 234
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ScrollView;->GTP_STATE_MAINTAINED:I

    .line 238
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 239
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 240
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 241
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    .line 248
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 253
    new-array v5, v3, [I

    iput-object v5, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 254
    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 263
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 264
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 286
    iput v2, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 287
    iput v2, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 292
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 293
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 294
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 295
    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 296
    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 297
    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 302
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 303
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 304
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 316
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 317
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 322
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 327
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 332
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 334
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 338
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    .line 339
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 340
    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 341
    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 956
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    .line 3059
    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3170
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    .line 3174
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    .line 3180
    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    .line 3186
    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 401
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 402
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 404
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 405
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    .line 407
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 409
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 411
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v0

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 414
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 416
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 419
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method private blacklist autoScrollWithDuration(F)V
    .locals 3
    .param p1, "duration"    # F

    .line 1842
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1843
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoScrollWithDuration() duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    nop

    .line 1847
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    .line 1845
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1849
    return-void
.end method

.method private greylist canScroll()Z
    .locals 6

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 628
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 630
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 632
    .end local v2    # "childHeight":I
    :cond_1
    return v0
.end method

.method private blacklist canScrollDown()Z
    .locals 5

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 648
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 650
    :cond_1
    return v0
.end method

.method private blacklist canScrollUp()Z
    .locals 6

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 638
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 639
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 640
    .local v2, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 642
    .end local v2    # "childHeight":I
    :cond_1
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 2952
    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    .line 2970
    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2976
    sub-int v0, p2, p1

    return v0

    .line 2978
    :cond_1
    return p0

    .line 2968
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .line 2183
    if-eqz p1, :cond_1

    .line 2184
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2185
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 2187
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2190
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2914
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2915
    .local v0, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2917
    .local v1, "restoreCount":I
    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2919
    if-nez v0, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    .line 2920
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2922
    :cond_0
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2923
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2924
    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    .line 2925
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 2926
    .local v2, "alpha":F
    iget-object v4, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 2927
    .local v4, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v5, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 2928
    iget-object v5, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v6, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 2929
    iget-object v5, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v5, v2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 2930
    iget-object v5, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2931
    iget-object v3, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 2932
    iget-object v3, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2933
    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    .line 2934
    .end local v2    # "alpha":F
    .end local v4    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_0

    .line 2935
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2938
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2939
    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2942
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2943
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2942
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2944
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2945
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2946
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2947
    return-object v0
.end method

.method private greylist endDrag()V
    .locals 1

    .line 2750
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2752
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2754
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2756
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2759
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2760
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2761
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2763
    :cond_1
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1920
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1921
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1930
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1932
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1933
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 1934
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1935
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1936
    .local v6, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1938
    .local v7, "viewBottom":I
    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    .line 1944
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    .line 1947
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_1

    .line 1949
    move-object v1, v5

    .line 1950
    move v2, v10

    goto :goto_3

    .line 1952
    :cond_1
    if-eqz p1, :cond_2

    .line 1953
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1955
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_4

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    nop

    .line 1957
    .local v8, "viewIsCloserToBoundary":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 1958
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1964
    move-object v1, v5

    goto :goto_3

    .line 1967
    :cond_5
    if-eqz v10, :cond_6

    .line 1969
    move-object v1, v5

    .line 1970
    const/4 v2, 0x1

    goto :goto_3

    .line 1971
    :cond_6
    if-eqz v8, :cond_7

    .line 1976
    move-object v1, v5

    .line 1933
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewTop":I
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1983
    .end local v4    # "i":I
    :cond_8
    return-object v1
.end method

.method private greylist-max-o flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .line 2732
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2733
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2734
    .local v0, "canFling":Z
    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2735
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    move-result v1

    .line 2736
    .local v1, "consumed":Z
    if-eqz v0, :cond_3

    .line 2737
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_2

    .line 2738
    :cond_3
    if-nez v1, :cond_5

    .line 2739
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2740
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 2741
    :cond_4
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2742
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2746
    .end local v1    # "consumed":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist flingWithoutAcc(I)V
    .locals 16
    .param p1, "velocityY"    # I

    .line 2715
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2716
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 2717
    .local v1, "height":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2719
    .local v3, "bottom":I
    iget-object v4, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v8, v3, v1

    .line 2720
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    .line 2719
    move/from16 v8, p1

    invoke-virtual/range {v4 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2722
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v2, :cond_0

    .line 2723
    const-string v2, "ScrollView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2726
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2728
    .end local v1    # "height":I
    .end local v3    # "bottom":I
    :cond_1
    return-void
.end method

.method private greylist-max-o getScrollRange()I
    .locals 6

    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1896
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1897
    .local v2, "child":Landroid/view/View;
    nop

    .line 1898
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1897
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1900
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 3078
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 3080
    :pswitch_0
    const/4 v0, 0x0

    .line 3081
    .local v0, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    .line 3083
    .local v1, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 3084
    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 3086
    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3087
    goto/16 :goto_6

    .line 3089
    :cond_0
    iget v2, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 3090
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3089
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3092
    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v7, 0x2

    cmp-long v3, v5, v7

    const-wide/16 v7, 0x4

    if-lez v3, :cond_1

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 3093
    int-to-double v5, v2

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    .line 3094
    :cond_1
    cmp-long v3, v5, v7

    const-wide/16 v7, 0x5

    if-ltz v3, :cond_2

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    .line 3095
    int-to-double v5, v2

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    .line 3096
    :cond_2
    cmp-long v3, v5, v7

    if-ltz v3, :cond_3

    .line 3097
    int-to-double v5, v2

    const-wide v7, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v7

    double-to-int v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3100
    :cond_3
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3101
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v2, -0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    goto :goto_1

    .line 3103
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/2addr v2, v4

    .line 3106
    .end local v0    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-gez v2, :cond_5

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v0, :cond_5

    .line 3107
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3108
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v5, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 3109
    :cond_5
    if-lez v2, :cond_6

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v0, v1, :cond_6

    .line 3110
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3111
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v5, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 3114
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v0

    .line 3115
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_8

    if-ne v0, v4, :cond_7

    if-lez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move v5, v4

    .line 3118
    .local v5, "canOverscroll":Z
    :goto_3
    if-eqz v5, :cond_e

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_e

    .line 3119
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/16 v7, 0x2710

    if-ne v6, v3, :cond_9

    .line 3120
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v6

    .line 3121
    .local v3, "width":I
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3122
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3124
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3125
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 3127
    .end local v3    # "width":I
    :cond_9
    if-ne v6, v4, :cond_a

    .line 3128
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v6

    .line 3129
    .restart local v3    # "width":I
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3130
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3132
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 3134
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3135
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 3127
    .end local v3    # "width":I
    :cond_a
    :goto_4
    nop

    .line 3139
    :cond_b
    :goto_5
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3140
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3142
    :cond_d
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3145
    :cond_e
    if-nez v5, :cond_f

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_f

    .line 3146
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3149
    .end local v0    # "overscrollMode":I
    .end local v5    # "canOverscroll":Z
    :cond_f
    nop

    .line 3153
    .end local v1    # "range":I
    .end local v2    # "offset":I
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1042
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1043
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1044
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1045
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    .line 1046
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 1047
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 1048
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1045
    :goto_0
    return v1

    .line 1050
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private blacklist initGoToTop()V
    .locals 5

    .line 559
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 560
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 561
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 562
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x112012d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 564
    .local v2, "resolved":Z
    if-eqz v2, :cond_0

    .line 565
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    .line 567
    :cond_0
    const v3, 0x10503e3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopWH:I

    .line 569
    const v3, 0x10503e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopGap:I

    .line 571
    const v3, 0x10503e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    .line 573
    const-string v3, "ScrollView"

    const-string v4, "initGoToTop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 575
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    :cond_1
    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 579
    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 580
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 582
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .locals 1

    .line 1054
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1055
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1059
    :goto_0
    return-void
.end method

.method private greylist-max-o initScrollView()V
    .locals 2

    .line 540
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 542
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 544
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 545
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 546
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 548
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 549
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 550
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 552
    invoke-direct {p0}, Landroid/widget/ScrollView;->initGoToTop()V

    .line 554
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1062
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1063
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1065
    :cond_0
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .line 2162
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 2682
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2683
    return v0

    .line 2686
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2687
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 2170
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2171
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2173
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 2174
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2173
    :goto_0
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1640
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1641
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1645
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1646
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1647
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1648
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1649
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1652
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .locals 1

    .line 1068
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1072
    :cond_0
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 2066
    const/4 v0, 0x1

    .line 2068
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2069
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2070
    .local v2, "containerTop":I
    add-int v3, v2, v1

    .line 2071
    .local v3, "containerBottom":I
    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2073
    .local v4, "up":Z
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 2074
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_1

    .line 2075
    move-object v5, p0

    .line 2078
    :cond_1
    if-lt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    .line 2079
    const/4 v0, 0x0

    goto :goto_2

    .line 2081
    :cond_2
    if-eqz v4, :cond_3

    sub-int v6, p2, v2

    goto :goto_1

    :cond_3
    sub-int v6, p3, v3

    .line 2082
    .local v6, "delta":I
    :goto_1
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2085
    .end local v6    # "delta":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2087
    :cond_4
    return v0
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 2441
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2442
    .local v0, "delta":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2443
    .local v2, "scroll":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2444
    if-eqz p2, :cond_1

    .line 2445
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 2447
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2450
    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist semGetRotatePointerIcon(I)I
    .locals 7
    .param p1, "iconId"    # I

    .line 3398
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRotation()F

    move-result v0

    .line 3403
    .local v0, "rotation":F
    const/4 v1, 0x1

    const/16 v2, 0x4e2b

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3404
    .local v4, "scrollUp":Z
    :goto_0
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 3405
    .local v1, "isNegative":Z
    :goto_1
    if-eqz v1, :cond_2

    const/16 v5, -0x2d

    goto :goto_2

    :cond_2
    const/16 v5, 0x2d

    :goto_2
    int-to-float v5, v5

    add-float/2addr v5, v0

    .line 3406
    .local v5, "editedRotation":F
    const/high16 v6, 0x42b40000    # 90.0f

    div-float v6, v5, v6

    float-to-int v6, v6

    .line 3407
    .local v6, "direction":I
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const/4 v3, -0x2

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    :goto_3
    add-int/2addr v6, v3

    .line 3408
    rem-int/lit8 v6, v6, 0x4

    .line 3410
    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    .line 3411
    add-int/lit8 v6, v6, 0x4

    .line 3415
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3425
    const/16 v2, 0x4e21

    return v2

    .line 3423
    :pswitch_0
    const/16 v2, 0x4e31

    return v2

    .line 3421
    :pswitch_1
    const/16 v2, 0x4e2f

    return v2

    .line 3419
    :pswitch_2
    const/16 v2, 0x4e2d

    return v2

    .line 3417
    :pswitch_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist semIsSupportGotoTop()Z
    .locals 1

    .line 976
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist semIsTalkBackIsRunning()Z
    .locals 3

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "isRunning":Z
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 967
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 968
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    .line 969
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    .line 970
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 972
    :cond_2
    return v0
.end method

.method private blacklist semPlayGoToTopFadeIn()V
    .locals 4

    .line 3285
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    return-void

    .line 3288
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3289
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3290
    return-void
.end method

.method private blacklist semPlayGoToTopFadeOut()V
    .locals 4

    .line 3277
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    return-void

    .line 3280
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3281
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3282
    return-void
.end method

.method private blacklist semSetupGoToTop(I)V
    .locals 21
    .param p1, "where"    # I

    .line 3194
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_0

    .line 3195
    return-void

    .line 3197
    :cond_0
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3199
    const/4 v1, 0x3

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_2

    .line 3200
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move v3, v4

    .line 3203
    .end local p1    # "where":I
    .local v3, "where":I
    :cond_2
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 3204
    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3207
    :cond_3
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    iget v5, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v5, :cond_4

    .line 3208
    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3211
    :cond_4
    iput v3, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3212
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    .line 3213
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    .line 3214
    .local v6, "h":I
    iget v7, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v7, v5, v7

    iget v8, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v7, v8

    .line 3215
    .local v7, "contentW":I
    iget v8, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 3217
    .local v8, "centerX":I
    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 3218
    .local v9, "locOnScr":[I
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 3219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3220
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 3221
    .local v11, "display":Landroid/view/Display;
    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 3222
    .local v12, "rotate":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    if-ne v12, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v13

    .line 3223
    .local v1, "isLandScape":Z
    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 3224
    .local v14, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3226
    if-eqz v1, :cond_7

    iget v15, v14, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_7
    move v15, v2

    .line 3227
    .local v15, "left":I
    :goto_3
    if-eqz v1, :cond_8

    iget v13, v14, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_8
    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3229
    .local v13, "right":I
    :goto_4
    aget v4, v9, v2

    if-ge v4, v15, :cond_9

    .line 3230
    aget v4, v9, v2

    neg-int v4, v4

    .line 3231
    .local v4, "overlappedW":I
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v4, v2, :cond_9

    .line 3232
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 3237
    .end local v4    # "overlappedW":I
    :cond_9
    const/4 v2, 0x0

    aget v4, v9, v2

    add-int/2addr v4, v5

    if-le v4, v13, :cond_a

    .line 3238
    aget v4, v9, v2

    add-int/2addr v4, v5

    iget v2, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v2

    .line 3239
    .restart local v4    # "overlappedW":I
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v4, v2, :cond_a

    .line 3240
    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v8, v2

    .line 3244
    .end local v4    # "overlappedW":I
    :cond_a
    iget v2, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    packed-switch v2, :pswitch_data_0

    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v7

    .end local v1    # "isLandScape":Z
    .end local v5    # "w":I
    .end local v7    # "contentW":I
    .local v18, "isLandScape":Z
    .local v19, "w":I
    .local v20, "contentW":I
    goto :goto_5

    .line 3252
    .end local v18    # "isLandScape":Z
    .end local v19    # "w":I
    .end local v20    # "contentW":I
    .restart local v1    # "isLandScape":Z
    .restart local v5    # "w":I
    .restart local v7    # "contentW":I
    :pswitch_0
    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/widget/ScrollView;->mGoToTopWH:I

    div-int/lit8 v17, v4, 0x2

    move/from16 v18, v1

    .end local v1    # "isLandScape":Z
    .restart local v18    # "isLandScape":Z
    sub-int v1, v8, v17

    sub-int v17, v6, v4

    move/from16 v19, v5

    .end local v5    # "w":I
    .restart local v19    # "w":I
    iget v5, v0, Landroid/widget/ScrollView;->mGoToTopGap:I

    move/from16 v20, v7

    .end local v7    # "contentW":I
    .restart local v20    # "contentW":I
    sub-int v7, v17, v5

    const/16 v16, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    sub-int v5, v6, v5

    invoke-virtual {v2, v1, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3254
    goto :goto_5

    .line 3246
    .end local v18    # "isLandScape":Z
    .end local v19    # "w":I
    .end local v20    # "contentW":I
    .restart local v1    # "isLandScape":Z
    .restart local v5    # "w":I
    .restart local v7    # "contentW":I
    :pswitch_1
    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v7

    .end local v1    # "isLandScape":Z
    .end local v5    # "w":I
    .end local v7    # "contentW":I
    .restart local v18    # "isLandScape":Z
    .restart local v19    # "w":I
    .restart local v20    # "contentW":I
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_b

    .line 3247
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3259
    :cond_b
    :goto_5
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3261
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_c

    .line 3262
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    .line 3265
    :cond_c
    const/4 v1, 0x1

    if-ne v3, v1, :cond_e

    iget v1, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v1, :cond_e

    .line 3266
    :cond_d
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3269
    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 3270
    iget v2, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v2, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3271
    iget-object v2, v0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 3272
    iget-object v2, v0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 3273
    iget-object v2, v0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 3274
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist semShowGoToTop()V
    .locals 2

    .line 3391
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 3393
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 3395
    :cond_0
    return-void
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .locals 2

    .line 1219
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

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
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .line 3156
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x4e2f

    if-ne p2, v0, :cond_1

    .line 3159
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->semGetRotatePointerIcon(I)I

    move-result p2

    .line 3162
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3163
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_2

    .line 3164
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_0

    .line 3166
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change PointerIcon to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 588
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 592
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 593
    return-void

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 597
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 601
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 602
    return-void

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 615
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 619
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 620
    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 606
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 610
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    return-void

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .line 2099
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2100
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2102
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2104
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 2106
    .local v2, "maxJump":I
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2107
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2108
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2109
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v4

    .line 2110
    .local v4, "scrollDelta":I
    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2112
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eqz v4, :cond_1

    .line 2113
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2114
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 2117
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2118
    .end local v4    # "scrollDelta":I
    goto :goto_2

    .line 2120
    :cond_2
    move v4, v2

    .line 2122
    .restart local v4    # "scrollDelta":I
    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x82

    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 2123
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    goto :goto_0

    .line 2124
    :cond_3
    if-ne p1, v7, :cond_4

    .line 2125
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2126
    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2127
    .local v5, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 2128
    .local v8, "screenBottom":I
    sub-int v9, v5, v8

    if-ge v9, v2, :cond_4

    .line 2129
    sub-int v4, v5, v8

    .line 2133
    .end local v5    # "daBottom":I
    .end local v8    # "screenBottom":I
    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 2134
    return v6

    .line 2137
    :cond_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 2139
    if-ne p1, v7, :cond_6

    move v5, v4

    goto :goto_1

    :cond_6
    neg-int v5, v4

    :goto_1
    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2142
    .end local v4    # "scrollDelta":I
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2143
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2149
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v4

    .line 2150
    .local v4, "descendantFocusability":I
    const/high16 v5, 0x20000

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2151
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 2152
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2154
    .end local v4    # "descendantFocusability":I
    :cond_7
    return v3
.end method

.method public whitelist computeScroll()V
    .locals 19

    .line 2357
    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2374
    iget v11, v10, Landroid/widget/ScrollView;->mScrollX:I

    .line 2375
    .local v11, "oldX":I
    iget v12, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 2376
    .local v12, "oldY":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 2377
    .local v13, "x":I
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 2379
    .local v14, "y":I
    if-ne v11, v13, :cond_0

    if-eq v12, v14, :cond_4

    .line 2380
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v15

    .line 2381
    .local v15, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v9

    .line 2382
    .local v9, "overscrollMode":I
    const/4 v0, 0x1

    if-eqz v9, :cond_2

    if-ne v9, v0, :cond_1

    if-lez v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    move/from16 v16, v0

    .line 2385
    .local v16, "canOverscroll":Z
    sub-int v1, v13, v11

    sub-int v2, v14, v12

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v18, v9

    .end local v9    # "overscrollMode":I
    .local v18, "overscrollMode":I
    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 2387
    iget v0, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v10, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v10, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2389
    if-eqz v16, :cond_4

    .line 2390
    if-gez v14, :cond_3

    if-ltz v12, :cond_3

    .line 2391
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2392
    :cond_3
    if-le v14, v15, :cond_4

    if-gt v12, v15, :cond_4

    .line 2393
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2398
    .end local v15    # "range":I
    .end local v16    # "canOverscroll":Z
    .end local v18    # "overscrollMode":I
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2400
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2402
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_5
    goto :goto_2

    .line 2403
    :cond_6
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_7

    .line 2404
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2405
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2408
    :cond_7
    :goto_2
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2462
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2464
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 2465
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2466
    .local v2, "screenTop":I
    add-int v3, v2, v0

    .line 2468
    .local v3, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 2471
    .local v4, "fadingEdge":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    .line 2472
    add-int/2addr v2, v4

    .line 2476
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2477
    sub-int/2addr v3, v4

    .line 2480
    :cond_2
    const/4 v5, 0x0

    .line 2482
    .local v5, "scrollYDelta":I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-le v6, v2, :cond_5

    .line 2487
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_3

    .line 2489
    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_0

    .line 2492
    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 2496
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2497
    .local v1, "bottom":I
    sub-int v6, v1, v3

    .line 2498
    .local v6, "distanceToBottom":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2500
    .end local v1    # "bottom":I
    .end local v6    # "distanceToBottom":I
    :cond_4
    goto :goto_2

    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_4

    .line 2505
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 2507
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_1

    .line 2510
    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    .line 2514
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2516
    :goto_2
    return v5
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 2

    .line 2317
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 6

    .line 2297
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 2298
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 2299
    .local v1, "contentHeight":I
    if-nez v0, :cond_0

    .line 2300
    return v1

    .line 2303
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2304
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2305
    .local v4, "scrollY":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2306
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_1

    .line 2307
    sub-int/2addr v3, v4

    goto :goto_0

    .line 2308
    :cond_1
    if-le v4, v2, :cond_2

    .line 2309
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 2312
    :cond_2
    :goto_0
    return v3
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1276
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1279
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1282
    .local v2, "action":I
    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_5

    .line 1283
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 1285
    .local v3, "toolType":I
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1286
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 1289
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v7, :cond_2

    .line 1290
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1294
    :cond_2
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_4

    if-ne v3, v4, :cond_4

    .line 1296
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

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

    .line 1299
    .local v7, "isHoveringOn":Z
    :goto_0
    if-nez v7, :cond_4

    .line 1300
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1305
    .end local v7    # "isHoveringOn":Z
    :cond_4
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5

    .line 1306
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1311
    .end local v3    # "toolType":I
    :cond_5
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_6

    .line 1312
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1316
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1317
    .local v3, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 1318
    .local v7, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    .line 1319
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 1320
    .local v9, "contentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    .line 1323
    .local v10, "range":I
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v11, :cond_7

    .line 1324
    new-instance v11, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1327
    :cond_7
    iget v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v11, :cond_8

    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v11, :cond_9

    .line 1328
    :cond_8
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 1330
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1328
    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {v6, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 1332
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 1334
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1332
    invoke-static {v6, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 1337
    :cond_9
    if-eqz v8, :cond_a

    .line 1338
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 1341
    :cond_a
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v4, :cond_b

    move v11, v6

    goto :goto_1

    :cond_b
    move v11, v5

    .line 1343
    .local v11, "isPossibleTooltype":Z
    :goto_1
    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/16 v13, 0x4e21

    if-le v7, v12, :cond_c

    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_1b

    :cond_c
    if-lez v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v12

    if-gt v3, v12, :cond_1b

    if-eqz v10, :cond_1b

    if-ltz v7, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v12, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v12, :cond_d

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1b

    :cond_d
    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_e

    if-gt v7, v9, :cond_e

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v12, v10, :cond_e

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1b

    :cond_e
    if-eqz v11, :cond_f

    .line 1346
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/16 v4, 0x20

    if-eq v12, v4, :cond_1b

    :cond_f
    if-eqz v11, :cond_1b

    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-boolean v4, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v4, :cond_10

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v4, :cond_10

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_3

    .line 1370
    :cond_10
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_11

    .line 1371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1373
    :cond_11
    const/16 v4, 0x4e2f

    const/16 v12, 0x4e2b

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1431
    :pswitch_1
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1432
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1434
    :cond_12
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1435
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1436
    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1437
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1438
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1439
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1375
    :pswitch_2
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1377
    if-ltz v7, :cond_13

    iget v5, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v5, :cond_13

    .line 1379
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1381
    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1382
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1383
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1386
    :cond_13
    iget v5, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v5, v9, v5

    if-lt v7, v5, :cond_1a

    if-gt v7, v9, :cond_1a

    .line 1388
    iget-object v5, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1390
    invoke-direct {v0, v1, v4}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1391
    iput v6, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1392
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1399
    :pswitch_3
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v5, :cond_14

    .line 1400
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1401
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1402
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1405
    :cond_14
    if-ltz v7, :cond_17

    iget v5, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v5, :cond_17

    .line 1407
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1409
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_15

    iget v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v4, v6, :cond_16

    .line 1410
    :cond_15
    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1412
    :cond_16
    const/4 v4, 0x2

    iput v4, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1413
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1416
    :cond_17
    iget v5, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v5, v9, v5

    if-lt v7, v5, :cond_1a

    if-gt v7, v9, :cond_1a

    .line 1418
    iget-object v5, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1420
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v5, :cond_18

    iget v5, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v12, 0x2

    if-ne v5, v12, :cond_19

    .line 1421
    :cond_18
    invoke-direct {v0, v1, v4}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1423
    :cond_19
    iput v6, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1424
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1443
    :cond_1a
    :goto_2
    return v6

    .line 1349
    :cond_1b
    :goto_3
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1350
    iget-object v4, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1351
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1354
    :cond_1c
    iget v4, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v4, :cond_1d

    iget v4, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v4, v9, v4

    if-lt v7, v4, :cond_1e

    :cond_1d
    if-lez v3, :cond_1e

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v4

    if-le v3, v4, :cond_1f

    .line 1356
    :cond_1e
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1359
    :cond_1f
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_20

    iget-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_21

    .line 1360
    :cond_20
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1363
    :cond_21
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1364
    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1365
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1367
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
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 738
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 754
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 755
    .local v1, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 756
    .local v2, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    .line 757
    .local v3, "childCount":I
    const/4 v4, 0x0

    .line 758
    .local v4, "contentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 759
    .local v5, "range":I
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v6

    .line 763
    .local v6, "needToScroll":Z
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v7, :cond_0

    .line 764
    new-instance v7, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 767
    :cond_0
    iget v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v8, 0x1

    if-lez v7, :cond_1

    iget v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v7, :cond_2

    .line 768
    :cond_1
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 770
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 768
    const/high16 v9, 0x41c80000    # 25.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 772
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    .line 774
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 772
    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 777
    :cond_2
    if-eqz v3, :cond_3

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 781
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    move v10, v8

    goto :goto_0

    :cond_4
    move v10, v7

    .line 783
    .local v10, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 785
    .local v12, "action":I
    const/4 v13, 0x3

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_1

    .line 829
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v14

    if-eqz v14, :cond_5

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v14, :cond_5

    .line 830
    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 832
    :cond_5
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 833
    goto/16 :goto_1

    .line 799
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v14

    if-eqz v14, :cond_9

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v14, v11, :cond_9

    .line 801
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_6

    .line 802
    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 803
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 806
    :cond_6
    return v8

    .line 810
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v14

    if-eqz v14, :cond_8

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v14, v11, :cond_8

    .line 811
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 812
    new-instance v11, Landroid/widget/ScrollView$1;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 818
    iget-object v11, v0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x96

    invoke-virtual {v0, v11, v13, v14}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    :cond_7
    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 822
    iget-object v11, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 823
    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 824
    return v8

    .line 826
    :cond_8
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 827
    goto :goto_1

    .line 787
    :pswitch_3
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 788
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v14

    if-eqz v14, :cond_9

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v14, v11, :cond_9

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 790
    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 791
    iput-boolean v8, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    .line 792
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v11, v1

    int-to-float v14, v2

    invoke-virtual {v7, v11, v14}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 793
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v11, v13, [I

    fill-array-data v11, :array_0

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 795
    return v8

    .line 838
    :cond_9
    :goto_1
    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const-wide/16 v7, 0x0

    if-le v2, v14, :cond_a

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v2, v14, :cond_19

    :cond_a
    if-lez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v14

    if-gt v1, v14, :cond_19

    if-eqz v5, :cond_19

    if-eqz v10, :cond_19

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_b

    goto/16 :goto_7

    .line 853
    :cond_b
    iget-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v14, :cond_c

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 856
    :cond_c
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_6

    .line 869
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_d

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_d

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_d

    .line 870
    const/4 v7, 0x1

    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 871
    iget-object v8, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 873
    return v7

    .line 876
    :cond_d
    if-eqz v6, :cond_13

    .line 877
    if-ltz v2, :cond_f

    iget v13, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v2, v13, :cond_f

    .line 879
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_e

    .line 880
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_2

    .line 879
    :cond_e
    const/4 v7, 0x1

    .line 884
    :goto_2
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 887
    iput v11, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 888
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 890
    :cond_f
    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v11, v4, v11

    if-lt v2, v11, :cond_11

    if-gt v2, v4, :cond_11

    .line 892
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_10

    .line 893
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_3

    .line 892
    :cond_10
    const/4 v7, 0x1

    .line 897
    :goto_3
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 900
    iput v7, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 901
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 904
    :cond_11
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 905
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 906
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 909
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 910
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 913
    :cond_12
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_4

    .line 915
    :cond_13
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v7, :cond_14

    .line 917
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 918
    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 921
    :cond_14
    :goto_4
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 922
    goto/16 :goto_6

    .line 925
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_16

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_16

    .line 926
    const-string v7, "ScrollView"

    const-string/jumbo v8, "pen up false GOTOTOP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 929
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 930
    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v11, 0x2710

    invoke-virtual {v8, v11}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_5

    .line 928
    :cond_15
    const/4 v7, 0x0

    .line 933
    :goto_5
    invoke-direct {v0, v7}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 934
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 935
    const/4 v11, 0x1

    return v11

    .line 925
    :cond_16
    const/4 v11, 0x1

    .line 939
    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 940
    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 943
    :cond_17
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 944
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 945
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 946
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 948
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 859
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_18

    iget v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_18

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 861
    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 862
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v8, v1

    int-to-float v11, v2

    invoke-virtual {v7, v8, v11}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 863
    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 864
    const/4 v7, 0x1

    return v7

    .line 953
    :cond_18
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 841
    :cond_19
    :goto_7
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 842
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 845
    :cond_1a
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 846
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 847
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 848
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 850
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2850
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2851
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2852
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2853
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    .line 2854
    .local v1, "clipToPadding":Z
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2855
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2860
    .local v2, "restoreCount":I
    if-eqz v1, :cond_0

    .line 2861
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2862
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2863
    .local v4, "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2864
    .local v5, "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .local v6, "translateY":F
    goto :goto_0

    .line 2866
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2867
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2868
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 2869
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 2871
    .restart local v6    # "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2872
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2873
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2874
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2876
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2878
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2879
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2884
    .restart local v2    # "restoreCount":I
    if-eqz v1, :cond_3

    .line 2885
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 2886
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2887
    .restart local v4    # "height":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2888
    .restart local v5    # "translateX":F
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    .restart local v6    # "translateY":F
    goto :goto_1

    .line 2890
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    .line 2891
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2892
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 2893
    .restart local v5    # "translateX":F
    const/4 v6, 0x0

    .line 2895
    .restart local v6    # "translateY":F
    :goto_1
    neg-int v7, v3

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 2896
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 2895
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2897
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v3

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2898
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2899
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2900
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2902
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2906
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":F
    .end local v6    # "translateY":F
    :cond_5
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_6

    .line 2907
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 2910
    :cond_6
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 3011
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 3012
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    const-string v1, "fillViewport"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 3013
    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 989
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 991
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_3

    .line 992
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 993
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_2

    .line 994
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 996
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 998
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 1000
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 998
    :goto_0
    return v2

    .line 1002
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    return v2

    .line 1005
    :cond_3
    const/4 v0, 0x0

    .line 1006
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 1007
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x21

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    .line 1033
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_3

    .line 1021
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1022
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    .line 1024
    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1027
    :goto_1
    if-eqz v0, :cond_7

    .line 1028
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_3

    .line 1009
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1010
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_2

    .line 1012
    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    .line 1015
    :goto_2
    if-eqz v0, :cond_7

    .line 1016
    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 1038
    :cond_7
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .line 2698
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2699
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 2700
    .local v0, "height":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2702
    .local v2, "bottom":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v7, v2, v0

    .line 2703
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    .line 2702
    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2705
    iget-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_0

    .line 2706
    const-string v1, "ScrollView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2709
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2711
    .end local v0    # "height":I
    .end local v2    # "bottom":I
    :cond_1
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 2035
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2036
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 2038
    .local v2, "height":I
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 2039
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2041
    if-eqz v1, :cond_1

    .line 2042
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 2043
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 2044
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2045
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2046
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2050
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1854
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .locals 5

    .line 449
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    return v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 454
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 455
    .local v1, "bottomEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 456
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 457
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 460
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 2

    .line 536
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .locals 1

    .line 514
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .locals 3

    .line 435
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 440
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 441
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 444
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public blacklist getTouchSlop()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method public whitelist isFillViewport()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public blacklist isLockScreenMode()Z
    .locals 2

    .line 1229
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1230
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 2323
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2328
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2330
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 2331
    .local v2, "verticalPadding":I
    nop

    .line 2332
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2331
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2335
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2336
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 2341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2343
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2346
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    .line 2348
    .local v2, "usedTotal":I
    nop

    .line 2349
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2348
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2352
    .local v3, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2353
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    .line 2803
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2804
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 2586
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2588
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2590
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2592
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2593
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2594
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2596
    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1659
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1660
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .local v1, "axisValue":F
    goto :goto_0

    .line 1661
    .end local v1    # "axisValue":F
    :cond_0
    const/high16 v1, 0x400000

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "axisValue":F
    goto :goto_0

    .line 1664
    .end local v1    # "axisValue":F
    :cond_1
    const/4 v1, 0x0

    .line 1667
    .restart local v1    # "axisValue":F
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1668
    .local v2, "delta":I
    if-eqz v2, :cond_a

    .line 1669
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1670
    neg-int v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4, v4}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1671
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1672
    .local v0, "range":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1673
    .local v4, "oldScrollY":I
    sub-int v5, v4, v2

    .line 1674
    .local v5, "newScrollY":I
    if-gez v5, :cond_2

    .line 1675
    const/4 v5, 0x0

    goto :goto_1

    .line 1676
    :cond_2
    if-le v5, v0, :cond_3

    .line 1677
    move v5, v0

    .line 1679
    :cond_3
    :goto_1
    const/4 v6, 0x1

    if-eq v5, v4, :cond_4

    .line 1681
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1684
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v3, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1685
    return v6

    .line 1687
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v7

    .line 1688
    .local v7, "overScrollMode":I
    if-eqz v7, :cond_5

    if-ne v7, v6, :cond_6

    if-lez v0, :cond_6

    :cond_5
    move v3, v6

    .line 1690
    .local v3, "canOverScroll":Z
    :cond_6
    if-eqz v3, :cond_a

    .line 1691
    const/4 v6, 0x0

    cmpl-float v8, v1, v6

    const/16 v9, 0x2710

    if-lez v8, :cond_7

    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v8, :cond_7

    .line 1692
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1693
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1695
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1696
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 1698
    :cond_7
    cmpg-float v6, v1, v6

    if-gez v6, :cond_8

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollDown()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1699
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1700
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1702
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1703
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1704
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1707
    :cond_8
    :goto_2
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1708
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1718
    .end local v0    # "range":I
    .end local v1    # "axisValue":F
    .end local v2    # "delta":I
    .end local v3    # "canOverScroll":Z
    .end local v4    # "oldScrollY":I
    .end local v5    # "newScrollY":I
    .end local v7    # "overScrollMode":I
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1886
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1887
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1888
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1889
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1890
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1891
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1860
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1861
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1863
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1864
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1865
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1866
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1868
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1870
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1871
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1872
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1878
    .end local v0    # "scrollRange":I
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1879
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1881
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1097
    .local v2, "action":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 1098
    return v4

    .line 1101
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1102
    return v4

    .line 1108
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1109
    return v6

    .line 1112
    :cond_2
    and-int/lit16 v5, v2, 0xff

    const-string v7, "ScrollView-scroll"

    const/4 v8, -0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1207
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1123
    :pswitch_2
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1124
    .local v5, "activePointerId":I
    if-ne v5, v8, :cond_3

    .line 1126
    goto/16 :goto_2

    .line 1129
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1130
    .local v9, "pointerIndex":I
    if-ne v9, v8, :cond_4

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScrollView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    goto/16 :goto_2

    .line 1136
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 1137
    .local v8, "y":I
    iget v10, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1138
    .local v10, "yDiff":I
    iget v11, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v10, v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v11

    and-int/2addr v3, v11

    if-nez v3, :cond_e

    .line 1139
    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1140
    iput v8, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1141
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1142
    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1143
    iput v6, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1144
    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_5

    .line 1145
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1147
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1148
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_6

    .line 1149
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1151
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_6
    goto/16 :goto_2

    .line 1198
    .end local v5    # "activePointerId":I
    .end local v8    # "y":I
    .end local v9    # "pointerIndex":I
    .end local v10    # "yDiff":I
    :pswitch_3
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1199
    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1200
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1201
    iget-object v11, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v12, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v13, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v17

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1202
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1204
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    .line 1205
    goto/16 :goto_2

    .line 1156
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 1157
    .local v5, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v8, v5}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1158
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1159
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1160
    goto/16 :goto_2

    .line 1167
    :cond_8
    iput v5, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1168
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1170
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 1171
    iget-object v8, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1178
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1179
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1180
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_0

    :cond_9
    move v4, v6

    goto :goto_1

    :cond_a
    :goto_0
    nop

    :goto_1
    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1182
    iget-object v4, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_b

    .line 1183
    iget-object v4, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v4, v6, v8}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1185
    :cond_b
    iget-object v4, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1186
    iget-object v4, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v4, v6, v8}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1188
    :cond_c
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v4, :cond_d

    .line 1189
    invoke-static {v7}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1191
    :cond_d
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1192
    nop

    .line 1215
    .end local v5    # "y":I
    :cond_e
    :goto_2
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2620
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2621
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2623
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2624
    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    .line 2626
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2628
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2629
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 2630
    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2631
    iput-object v1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2634
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2635
    .local v1, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2639
    .local v2, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v2, :cond_3

    .line 2640
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1

    .line 2641
    :cond_3
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_4

    .line 2642
    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2647
    .end local v1    # "childHeight":I
    .end local v2    # "scrollRange":I
    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 2648
    const-string v0, "ScrollView"

    const-string v1, " onsize change changed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 2650
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2651
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    .line 2656
    :cond_5
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2657
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 699
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 701
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    .line 702
    return-void

    .line 705
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 706
    .local v0, "heightMode":I
    if-nez v0, :cond_1

    .line 707
    return-void

    .line 710
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 711
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 714
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 715
    .local v2, "targetSdkVersion":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 716
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    .line 717
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 718
    .local v4, "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .local v5, "heightPadding":I
    goto :goto_0

    .line 720
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    :cond_2
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 721
    .restart local v4    # "widthPadding":I
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    .line 724
    .restart local v5    # "heightPadding":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 725
    .local v6, "desiredHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v6, :cond_3

    .line 726
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v4, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v7

    .line 728
    .local v7, "childWidthMeasureSpec":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 730
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 733
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "widthPadding":I
    .end local v5    # "heightPadding":I
    .end local v6    # "desiredHeight":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_3
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2841
    if-nez p4, :cond_0

    .line 2842
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2843
    const/4 v0, 0x1

    return v0

    .line 2845
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 2829
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2830
    .local v0, "oldScrollY":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2831
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v0

    .line 2832
    .local v1, "myConsumed":I
    sub-int v8, p5, v1

    .line 2833
    .local v8, "myUnconsumed":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2834
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 2814
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2815
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2816
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 11
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1725
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 1726
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1731
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1732
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1733
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1734
    .local v1, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1735
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1736
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1737
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1738
    if-eqz p4, :cond_1

    .line 1739
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1741
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_1
    goto :goto_0

    .line 1742
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1745
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1746
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2546
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2547
    const/16 p1, 0x82

    goto :goto_0

    .line 2548
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2549
    const/16 p1, 0x21

    .line 2552
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2553
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2554
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    nop

    .line 2557
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2558
    return v1

    .line 2561
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2562
    return v1

    .line 2565
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2983
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2989
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2990
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2991
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2992
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2993
    return-void

    .line 2986
    .end local v0    # "ss":Landroid/widget/ScrollView$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2987
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2997
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 3000
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 3002
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3003
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3004
    .local v1, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 3005
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2661
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2663
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2664
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2670
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2671
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2672
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2673
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2674
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2676
    .end local v1    # "scrollDelta":I
    :cond_1
    return-void

    .line 2665
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 2809
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .line 2823
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2824
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1449
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1451
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1453
    .local v12, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 1455
    .local v13, "actionMasked":I
    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 1456
    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1458
    :cond_0
    iget v1, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1460
    const-string v1, " in onTouchEvent"

    const-string v2, "Invalid pointerId="

    const-string v3, "ScrollView"

    const/4 v4, -0x1

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 1619
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1621
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    if-eq v0, v4, :cond_2

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 1626
    :cond_1
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_8

    .line 1622
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    goto/16 :goto_8

    .line 1613
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1614
    .local v0, "index":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1615
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1616
    goto/16 :goto_8

    .line 1604
    .end local v0    # "index":I
    :pswitch_3
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1605
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1608
    :cond_3
    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1609
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_8

    .line 1491
    :pswitch_4
    iget v5, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1492
    .local v9, "activePointerIndex":I
    if-ne v9, v4, :cond_4

    .line 1494
    const/4 v0, 0x0

    .line 1495
    .end local v9    # "activePointerIndex":I
    .local v0, "activePointerIndex":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    goto/16 :goto_8

    .line 1501
    .end local v0    # "activePointerIndex":I
    .restart local v9    # "activePointerIndex":I
    :cond_4
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v8, v1

    .line 1502
    .local v8, "y":I
    iget v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v1, v8

    .line 1503
    .local v1, "deltaY":I
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1504
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v2, v2, v15

    sub-int/2addr v1, v2

    .line 1505
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    int-to-float v2, v2

    invoke-virtual {v12, v14, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1506
    iget v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    iput v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1508
    :cond_5
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_8

    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1510
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_6

    .line 1511
    invoke-interface {v2, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1513
    :cond_6
    iput-boolean v15, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1514
    if-lez v1, :cond_7

    .line 1515
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 1517
    :cond_7
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v1, v3

    .line 1520
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_8
    :goto_1
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_17

    .line 1522
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    sub-int v2, v8, v2

    iput v2, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1524
    iget v7, v10, Landroid/widget/ScrollView;->mScrollY:I

    .line 1525
    .local v7, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1526
    .local v6, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v5

    .line 1527
    .local v5, "overscrollMode":I
    if-eqz v5, :cond_9

    if-ne v5, v15, :cond_a

    if-lez v6, :cond_a

    :cond_9
    move v0, v15

    :cond_a
    move/from16 v16, v0

    .line 1530
    .local v16, "canOverscroll":Z
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v0, v2

    .line 1531
    .local v4, "displacement":F
    const/high16 v17, 0x3f800000    # 1.0f

    if-eqz v16, :cond_d

    .line 1532
    const/4 v0, 0x0

    .line 1533
    .local v0, "consumed":I
    if-gez v1, :cond_b

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_b

    .line 1534
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v15, v1

    .line 1535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v15, v14

    sub-float v14, v17, v4

    invoke-virtual {v3, v15, v14}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 1534
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    .line 1537
    :cond_b
    if-lez v1, :cond_c

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v14, v1

    int-to-float v14, v14

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v3, v14, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 1538
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1542
    :cond_c
    :goto_2
    sub-int/2addr v1, v0

    move v14, v1

    goto :goto_3

    .line 1531
    .end local v0    # "consumed":I
    :cond_d
    move v14, v1

    .line 1547
    .end local v1    # "deltaY":I
    .local v14, "deltaY":I
    :goto_3
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v0, :cond_e

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v15, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v2, v10, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v23, v2

    move v2, v14

    move/from16 v24, v4

    .end local v4    # "displacement":F
    .local v24, "displacement":F
    move v4, v15

    move v15, v5

    .end local v5    # "overscrollMode":I
    .local v15, "overscrollMode":I
    move/from16 v5, v20

    move/from16 v20, v6

    .end local v6    # "range":I
    .local v20, "range":I
    move/from16 v25, v7

    .end local v7    # "oldY":I
    .local v25, "oldY":I
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "y":I
    .local v21, "y":I
    move/from16 v8, v23

    move/from16 v23, v9

    .end local v9    # "activePointerIndex":I
    .local v23, "activePointerIndex":I
    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    goto :goto_4

    .line 1547
    .end local v15    # "overscrollMode":I
    .end local v20    # "range":I
    .end local v21    # "y":I
    .end local v23    # "activePointerIndex":I
    .end local v24    # "displacement":F
    .end local v25    # "oldY":I
    .restart local v4    # "displacement":F
    .restart local v5    # "overscrollMode":I
    .restart local v6    # "range":I
    .restart local v7    # "oldY":I
    .restart local v8    # "y":I
    .restart local v9    # "activePointerIndex":I
    :cond_e
    move/from16 v24, v4

    move v15, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v21, v8

    move/from16 v23, v9

    .line 1555
    .end local v4    # "displacement":F
    .end local v5    # "overscrollMode":I
    .end local v6    # "range":I
    .end local v7    # "oldY":I
    .end local v8    # "y":I
    .end local v9    # "activePointerIndex":I
    .restart local v15    # "overscrollMode":I
    .restart local v20    # "range":I
    .restart local v21    # "y":I
    .restart local v23    # "activePointerIndex":I
    .restart local v24    # "displacement":F
    .restart local v25    # "oldY":I
    :cond_f
    :goto_4
    iget v0, v10, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v0, v25

    .line 1556
    .local v6, "scrolledDeltaY":I
    sub-int v7, v14, v6

    .line 1557
    .local v7, "unconsumedY":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1558
    iget v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1559
    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1560
    iget v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_6

    .line 1561
    :cond_10
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v0, :cond_15

    if-eqz v16, :cond_15

    int-to-float v0, v14

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 1562
    add-int v0, v25, v14

    .line 1563
    .local v0, "pulledToY":I
    if-gez v0, :cond_12

    .line 1564
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v3, v24

    .end local v24    # "displacement":F
    .local v3, "displacement":F
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1566
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1567
    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    move/from16 v1, v20

    goto :goto_5

    .line 1566
    :cond_11
    move/from16 v1, v20

    goto :goto_5

    .line 1569
    .end local v3    # "displacement":F
    .restart local v24    # "displacement":F
    :cond_12
    move/from16 v3, v24

    .end local v24    # "displacement":F
    .restart local v3    # "displacement":F
    move/from16 v1, v20

    .end local v20    # "range":I
    .local v1, "range":I
    if-le v0, v1, :cond_13

    .line 1570
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v5, v17, v3

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1573
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 1575
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1576
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1579
    :cond_13
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1580
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1581
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 1561
    .end local v0    # "pulledToY":I
    .end local v1    # "range":I
    .end local v3    # "displacement":F
    .restart local v20    # "range":I
    .restart local v24    # "displacement":F
    :cond_15
    move/from16 v1, v20

    move/from16 v3, v24

    .line 1584
    .end local v6    # "scrolledDeltaY":I
    .end local v7    # "unconsumedY":I
    .end local v15    # "overscrollMode":I
    .end local v16    # "canOverscroll":Z
    .end local v20    # "range":I
    .end local v24    # "displacement":F
    .end local v25    # "oldY":I
    :cond_16
    :goto_6
    goto/16 :goto_8

    .line 1520
    .end local v14    # "deltaY":I
    .end local v21    # "y":I
    .end local v23    # "activePointerIndex":I
    .local v1, "deltaY":I
    .restart local v8    # "y":I
    .restart local v9    # "activePointerIndex":I
    :cond_17
    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "y":I
    .end local v9    # "activePointerIndex":I
    .restart local v21    # "y":I
    .restart local v23    # "activePointerIndex":I
    goto/16 :goto_8

    .line 1587
    .end local v1    # "deltaY":I
    .end local v21    # "y":I
    .end local v23    # "activePointerIndex":I
    :pswitch_5
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1d

    .line 1588
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1589
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, v10, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1590
    iget v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 1592
    .local v1, "initialVelocity":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_18

    .line 1593
    neg-int v2, v1

    invoke-direct {v10, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_7

    .line 1594
    :cond_18
    iget-object v2, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1595
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v25

    .line 1594
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v5

    invoke-virtual/range {v19 .. v25}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1599
    :cond_19
    :goto_7
    iput v4, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1600
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    .line 1601
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    goto :goto_8

    .line 1462
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1463
    return v0

    .line 1465
    :cond_1a
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1467
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1b

    .line 1468
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1476
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1b
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1477
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1478
    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_1c

    .line 1479
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 1480
    const/4 v1, 0x0

    iput-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1485
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1486
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1487
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1488
    nop

    .line 1630
    :cond_1d
    :goto_8
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1e

    .line 1631
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1633
    :cond_1e
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 1634
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 2613
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2615
    return-void
.end method

.method public whitelist pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 1999
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2000
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 2002
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 2003
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2004
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 2005
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 2006
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2007
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 2008
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2011
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 2012
    :cond_2
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2013
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 2014
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 2017
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2019
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1751
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1752
    return v1

    .line 1754
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1755
    return v2

    .line 1759
    :cond_1
    const/4 v0, 0x7

    .line 1760
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2

    .line 1761
    const/16 v3, 0xf

    const-string v4, "auto_scroll_speed_level_count"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1762
    .local v3, "autoScrollSpeedLevelCount":I
    const/high16 v4, 0x41840000    # 16.5f

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 1764
    const/16 v4, 0x8

    const-string v5, "auto_scroll_speed_level"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1768
    .end local v3    # "autoScrollSpeedLevelCount":I
    :cond_2
    const v3, 0x4188cccd    # 17.1f

    sparse-switch p1, :sswitch_data_0

    .line 1837
    return v2

    .line 1806
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1807
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    .line 1808
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1809
    :cond_3
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1810
    return v1

    .line 1813
    :cond_4
    return v2

    .line 1797
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1798
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 1799
    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1800
    :cond_5
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1801
    return v1

    .line 1804
    :cond_6
    return v2

    .line 1815
    :sswitch_2
    const-string v3, "ScrollView"

    const-string v4, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1817
    invoke-virtual {p0, v2, v2, v2}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    .line 1818
    return v1

    .line 1821
    :cond_7
    return v2

    .line 1823
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1824
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1825
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1827
    :cond_8
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1828
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v2, :cond_9

    .line 1829
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1831
    :cond_9
    return v1

    .line 1834
    :cond_a
    return v2

    .line 1789
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1790
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v4, v0

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1791
    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1792
    return v1

    .line 1795
    :cond_b
    return v2

    .line 1780
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 1781
    .local v3, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1782
    .local v4, "targetScrollY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_c

    .line 1783
    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1784
    return v1

    .line 1786
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_c
    return v2

    .line 1771
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 1772
    .restart local v3    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1773
    .restart local v4    # "targetScrollY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_d

    .line 1774
    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1775
    return v1

    .line 1777
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_d
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_3
        0x1020038 -> :sswitch_5
        0x102003a -> :sswitch_6
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 2521
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2522
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2523
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_0

    .line 2526
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2529
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2530
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2572
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2573
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2572
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2575
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 1076
    if-eqz p1, :cond_0

    .line 1077
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1079
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1080
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    .line 2580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2581
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2582
    return-void
.end method

.method public whitelist scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2773
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2774
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2775
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2776
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2777
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2779
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    .line 2781
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2784
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public whitelist scrollToDescendant(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2416
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2417
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2420
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2422
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2424
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 2425
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2427
    .end local v0    # "scrollDelta":I
    :cond_0
    goto :goto_0

    .line 2428
    :cond_1
    iput-object p1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2430
    :goto_0
    return-void
.end method

.method blacklist semAutoHide()V
    .locals 3

    .line 3382
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    .line 3383
    return-void

    .line 3386
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3387
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3388
    return-void
.end method

.method public whitelist semSetGoToTopEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3301
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V

    .line 3302
    return-void
.end method

.method public whitelist semSetGoToTopEnabled(ZI)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "buttonStyle"    # I

    .line 3316
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3317
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080936

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 3318
    if-eqz v0, :cond_3

    .line 3319
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 3320
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 3321
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3323
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    .line 3324
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3326
    if-eqz p1, :cond_2

    .line 3327
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 3329
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3332
    :goto_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3333
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3334
    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3336
    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/widget/ScrollView$6;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3344
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3345
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3346
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3348
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$7;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3356
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$8;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3376
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "goToTop"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    .line 3377
    iget v1, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 3379
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public whitelist semSetHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 1244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    .line 1245
    return-void
.end method

.method public whitelist semSetSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3442
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 3443
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 487
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 488
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 473
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 474
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    .line 475
    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .line 676
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 677
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 678
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 680
    :cond_0
    return-void
.end method

.method public blacklist setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .line 1262
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 1263
    return-void
.end method

.method public blacklist setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .line 1253
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 1254
    return-void
.end method

.method public blacklist setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 310
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 311
    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .line 694
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 695
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 500
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 501
    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .line 383
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 384
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x0

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist smoothScrollBy(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2199
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2201
    return-void

    .line 2203
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 2204
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 2205
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 2206
    .local v2, "height":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2207
    .local v4, "bottom":I
    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2208
    .local v5, "maxY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2209
    .local v6, "scrollY":I
    add-int v7, v6, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p2, v7, v6

    .line 2211
    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v7, v8, v6, v3, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2212
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2213
    .end local v2    # "height":I
    .end local v4    # "bottom":I
    .end local v5    # "maxY":I
    .end local v6    # "scrollY":I
    goto :goto_0

    .line 2214
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2215
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2216
    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2

    .line 2217
    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 2218
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2221
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2223
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2224
    return-void
.end method

.method public final blacklist smoothScrollByWithDuration(III)V
    .locals 15
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .line 2236
    move-object v0, p0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2238
    return-void

    .line 2240
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v1, v3

    .line 2241
    .local v1, "duration":J
    const-wide/16 v3, 0xfa

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 2242
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v5

    .line 2243
    .local v3, "height":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2244
    .local v6, "bottom":I
    sub-int v7, v6, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2245
    .local v7, "maxY":I
    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2246
    .local v14, "scrollY":I
    add-int v8, v14, p2

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v14

    .line 2248
    .end local p2    # "dy":I
    .local v5, "dy":I
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v9, v0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v9, :cond_1

    sget-object v4, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    invoke-virtual {v8, v4}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2249
    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v9, v0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v11, 0x0

    move v10, v14

    move v12, v5

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2250
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2251
    .end local v3    # "height":I
    .end local v6    # "bottom":I
    .end local v7    # "maxY":I
    .end local v14    # "scrollY":I
    goto :goto_0

    .line 2252
    .end local v5    # "dy":I
    .restart local p2    # "dy":I
    :cond_2
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2253
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2254
    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    .line 2255
    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 2256
    iput-object v4, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2259
    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    move/from16 v5, p2

    .line 2262
    .end local p2    # "dy":I
    .restart local v5    # "dy":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2263
    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2273
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2274
    return-void
.end method

.method public final blacklist smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .line 2287
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 2288
    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .line 364
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2792
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
