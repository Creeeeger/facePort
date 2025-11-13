.class public Lcom/samsung/android/widget/SemHorizontalFastScroller;
.super Ljava/lang/Object;
.source "SemHorizontalFastScroller.java"


# static fields
.field private static blacklist BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DURATION_CROSS_FADE:I = 0x32

.field private static final blacklist DURATION_FADE_IN:I = 0x96

.field private static final blacklist DURATION_FADE_OUT:I = 0x12c

.field private static final blacklist DURATION_RESIZE:I = 0x64

.field private static final blacklist FADE_TIMEOUT:J = 0x5dcL

.field private static blacklist LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIN_PAGES:I = 0x4

.field private static final blacklist OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final blacklist OVERLAY_AT_THUMB:I = 0x1

.field private static final blacklist OVERLAY_FLOATING:I = 0x0

.field private static final blacklist PREVIEW_BOTTOM:I = 0x1

.field private static final blacklist PREVIEW_TOP:I = 0x0

.field private static blacklist RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATE_DRAGGING:I = 0x2

.field private static final blacklist STATE_NONE:I = 0x0

.field private static final blacklist STATE_VISIBLE:I = 0x1

.field private static final blacklist TAP_TIMEOUT:J

.field private static blacklist TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlwaysShow:Z

.field private final blacklist mContainerRect:Landroid/graphics/Rect;

.field private blacklist mCurrentSection:I

.field private blacklist mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mDeferHide:Ljava/lang/Runnable;

.field private blacklist mEnabled:Z

.field private blacklist mFirstVisibleItem:I

.field private blacklist mHeaderCount:I

.field private blacklist mHeight:I

.field private blacklist mInitialTouchX:F

.field private blacklist mLayoutFromBottom:Z

.field private final blacklist mList:Landroid/widget/SemHorizontalAbsListView;

.field private blacklist mListAdapter:Landroid/widget/Adapter;

.field private blacklist mLongList:Z

.field private blacklist mMatchDragPosition:Z

.field private blacklist mOldChildCount:I

.field private blacklist mOldItemCount:I

.field private final blacklist mOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mOverlayPosition:I

.field private blacklist mPendingDrag:J

.field private blacklist mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mPreviewImage:Landroid/view/View;

.field private blacklist mPreviewMinHeight:I

.field private blacklist mPreviewMinWidth:I

.field private blacklist mPreviewPadding:I

.field private final blacklist mPreviewResId:[I

.field private final blacklist mPrimaryText:Landroid/widget/TextView;

.field private blacklist mScaledTouchSlop:I

.field private blacklist mScrollBarStyle:I

.field private blacklist mScrollCompleted:Z

.field private blacklist mScrollbarPosition:I

.field private final blacklist mSecondaryText:Landroid/widget/TextView;

.field private blacklist mSectionIndexer:Landroid/widget/SectionIndexer;

.field private blacklist mSections:[Ljava/lang/Object;

.field private blacklist mShowingPreview:Z

.field private blacklist mShowingPrimary:Z

.field private blacklist mState:I

.field private final blacklist mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final blacklist mTempBounds:Landroid/graphics/Rect;

.field private final blacklist mTempMargins:Landroid/graphics/Rect;

.field private blacklist mTextAppearance:I

.field private blacklist mTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mTextSize:F

.field private blacklist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mThumbImage:Landroid/widget/ImageView;

.field private blacklist mThumbMinHeight:I

.field private blacklist mThumbMinWidth:I

.field private blacklist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mTrackImage:Landroid/widget/ImageView;

.field private blacklist mUpdatingLayout:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/samsung/android/widget/SemHorizontalFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    return-void
.end method

.method private static blacklist animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    sget-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private blacklist beginDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelFling()V

    return-void
.end method

.method private blacklist cancelFling()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private blacklist cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    return-void
.end method

.method private blacklist createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private blacklist getPosFromItemCount(III)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_d

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int/2addr v1, v4

    if-gez v1, :cond_4

    const/4 v3, 0x0

    return v3

    :cond_4
    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int v4, p3, v4

    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v8, v8

    add-int/lit8 v9, v8, -0x1

    if-ge v6, v9, :cond_8

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v8, :cond_7

    iget-object v9, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v4, -0x1

    :goto_3
    sub-int/2addr v9, v7

    goto :goto_4

    :cond_8
    sub-int v9, v4, v7

    :goto_4
    if-nez v9, :cond_9

    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    int-to-float v10, v1

    add-float/2addr v10, v5

    int-to-float v11, v7

    sub-float/2addr v10, v11

    int-to-float v11, v9

    div-float/2addr v10, v11

    :goto_5
    int-to-float v11, v6

    add-float/2addr v11, v10

    int-to-float v12, v8

    div-float/2addr v11, v12

    if-lez v1, :cond_c

    add-int v12, v1, p2

    if-ne v12, v4, :cond_c

    iget-object v12, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    add-int/lit8 v13, p2, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v13}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView;->getClipToPadding()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    goto :goto_6

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    :goto_6
    if-lez v15, :cond_b

    if-lez v14, :cond_b

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v11

    int-to-float v0, v15

    move/from16 p1, v1

    int-to-float v1, v14

    div-float/2addr v0, v1

    mul-float v16, v16, v0

    add-float v11, v11, v16

    goto :goto_7

    :cond_b
    move/from16 p1, v1

    goto :goto_7

    :cond_c
    move/from16 p1, v1

    :goto_7
    return v11

    :cond_d
    :goto_8
    int-to-float v0, v1

    sub-int v3, p3, p2

    int-to-float v3, v3

    div-float/2addr v0, v3

    return v0
.end method

.method private blacklist getPosFromMotionEvent(F)F
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    move v3, v1

    sub-float v4, v2, v1

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_0

    return v5

    :cond_0
    sub-float v6, p1, v3

    div-float/2addr v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    return v5
.end method

.method private blacklist getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist isPointInside(FF)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPointInsideX(F)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist isPointInsideY(F)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist layoutThumb()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private blacklist layoutTrack()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    add-int v9, v8, v6

    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v7

    invoke-virtual {v0, v10, v8, v11, v9}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private blacklist measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v7, v6, v2

    sub-int/2addr v7, v3

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v13, v11, 0xa

    add-int/2addr v13, v1

    iget v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    sub-int v15, v6, v12

    div-int/lit8 v15, v15, 0x2

    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v0

    add-int v0, v13, v12

    move/from16 v16, v1

    move-object/from16 v1, p3

    invoke-virtual {v1, v13, v15, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private blacklist measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private blacklist measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez p2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    iget-boolean v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v7, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int v7, v6, v7

    :goto_1
    sub-int v8, v7, v3

    sub-int/2addr v8, v4

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-boolean v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v13, :cond_4

    if-nez p2, :cond_3

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v13

    :goto_2
    sub-int/2addr v13, v4

    sub-int v14, v13, v12

    goto :goto_4

    :cond_4
    if-nez p2, :cond_5

    iget v13, v5, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v13

    :goto_3
    add-int v14, v13, v3

    add-int v13, v14, v12

    :goto_4
    move v15, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v0, v15, v16

    move-object/from16 v1, p4

    invoke-virtual {v1, v15, v14, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private blacklist onStateDependencyChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->stop()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    return-void
.end method

.method private blacklist postAutoHide()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist refreshDrawablePressedState()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private blacklist scrollTo(F)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    array-length v4, v3

    :goto_0
    if-eqz v3, :cond_9

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    move v6, v5

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v8, v6

    move v9, v2

    move v10, v7

    move v11, v6

    add-int/lit8 v12, v6, 0x1

    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_1

    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_4

    :cond_2
    if-lez v6, :cond_4

    add-int/lit8 v6, v6, -0x1

    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    if-eq v10, v7, :cond_3

    move v11, v6

    move v8, v6

    goto :goto_1

    :cond_3
    if-nez v6, :cond_2

    const/4 v8, 0x0

    nop

    :cond_4
    :goto_1
    add-int/lit8 v13, v12, 0x1

    :goto_2
    if-ge v13, v4, :cond_5

    iget-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    int-to-float v14, v11

    int-to-float v15, v4

    div-float/2addr v14, v15

    int-to-float v15, v12

    int-to-float v1, v4

    div-float/2addr v15, v1

    if-nez v2, :cond_6

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v16, v3

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3e000000    # 0.125f

    move-object/from16 v16, v3

    int-to-float v3, v2

    div-float/2addr v1, v3

    :goto_3
    if-ne v11, v5, :cond_7

    sub-float v3, p1, v14

    cmpg-float v3, v3, v1

    if-gez v3, :cond_7

    move v3, v10

    goto :goto_4

    :cond_7
    sub-int v3, v9, v10

    int-to-float v3, v3

    sub-float v17, p1, v14

    mul-float v3, v3, v17

    sub-float v17, v15, v14

    div-float v3, v3, v17

    float-to-int v3, v3

    add-int/2addr v3, v10

    :goto_4
    add-int/lit8 v7, v2, -0x1

    move/from16 v17, v1

    const/4 v1, 0x0

    invoke-static {v3, v1, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    instance-of v7, v7, Landroid/widget/SemHorizontalListView;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    check-cast v7, Landroid/widget/SemHorizontalListView;

    move/from16 v18, v4

    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v4, v3

    invoke-virtual {v7, v4, v1}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_5

    :cond_8
    move/from16 v18, v4

    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :goto_5
    goto :goto_7

    :cond_9
    move-object/from16 v16, v3

    move/from16 v18, v4

    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    instance-of v3, v3, Landroid/widget/SemHorizontalListView;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    check-cast v3, Landroid/widget/SemHorizontalListView;

    iget v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_6

    :cond_a
    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :goto_6
    const/4 v8, -0x1

    :goto_7
    iget v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    if-eq v1, v8, :cond_c

    iput v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v1

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    if-nez v3, :cond_b

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_8

    :cond_b
    iget-boolean v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    :cond_c
    :goto_8
    return-void
.end method

.method private blacklist setState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToHidden()V

    nop

    :goto_0
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setThumbPos(F)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    move v8, v6

    sub-float v9, v7, v6

    mul-float v10, p1, v9

    add-float/2addr v10, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    invoke-virtual {v5, v11}, Landroid/view/View;->setTranslationX(F)V

    iget-object v11, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    packed-switch v12, :pswitch_data_0

    const/4 v12, 0x0

    goto :goto_0

    :pswitch_0
    sub-float v12, v10, v13

    goto :goto_0

    :pswitch_1
    move v12, v10

    nop

    :goto_0
    int-to-float v14, v2

    add-float/2addr v14, v13

    int-to-float v15, v3

    sub-float/2addr v15, v13

    invoke-static {v12, v14, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v16

    move-object/from16 v17, v1

    sub-float v1, v16, v13

    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v18, v2

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    return-void
.end method

.method private blacklist transitionPreviewLayout(I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v0, v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    iget-object v11, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    iget-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    if-le v12, v15, :cond_3

    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleY(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object v13, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_3
    move-object v13, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v1, v12, :cond_4

    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    invoke-static {v6, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v17, v1

    move/from16 v18, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_4
    move/from16 v17, v1

    :goto_2
    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist transitionToDragging()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v5, [Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v8, v7, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private blacklist transitionToHidden()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x4

    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    neg-int v6, v6

    :goto_0
    int-to-float v6, v6

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v5, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    invoke-static {v7, v6, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private blacklist transitionToVisible()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v6, v9, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v10, 0x12c

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v1, [Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v4

    iget-object v11, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v6, v7, v5

    aput-object v2, v7, v1

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private blacklist updateAppearance()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private blacklist updateContainerRect()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updateLongList(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public blacklist isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onItemCountChanged(II)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    :cond_0
    iput p2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public blacklist onScroll(III)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void

    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v3, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_3

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v3, v1, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    :cond_3
    return-void
.end method

.method public blacklist onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    return-void
.end method

.method public blacklist onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    :pswitch_1
    iget-wide v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    :cond_2
    return v5

    :pswitch_2
    iget-wide v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    return v5

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    return v5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    :cond_5
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist remove()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public blacklist setAlwaysShow(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setScrollBarStyle(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setScrollbarPosition(I)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_4

    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    aget v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_4
    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v2, 0x10103f7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    goto :goto_1

    :pswitch_6
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v6, v7

    goto :goto_1

    :pswitch_7
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v5

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    goto :goto_1

    :pswitch_d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateAppearance()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method public blacklist updateLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutThumb()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutTrack()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    return-void
.end method
