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

    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    .line 1570
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    .line 1586
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    .line 1602
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    .line 1618
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/SemHorizontalAbsListView;
    .param p2, "styleResId"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    .line 165
    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 226
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$1;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 236
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;-><init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 247
    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    .line 248
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    .line 249
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    .line 251
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScaledTouchSlop:I

    .line 253
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 256
    iput v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    .line 257
    nop

    .line 258
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

    .line 260
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 261
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 263
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 265
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 267
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 268
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    .line 272
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    .line 273
    .local v6, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 274
    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 275
    invoke-virtual {v6, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 276
    invoke-virtual {v6, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 277
    invoke-virtual {v6, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 278
    invoke-virtual {v6, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 281
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    .line 282
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 284
    return-void
.end method

.method private static blacklist animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1563
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
    .locals 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1634
    sget-object v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1635
    .local v0, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1636
    .local v2, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Lcom/samsung/android/widget/SemHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1637
    .local v3, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v5, Lcom/samsung/android/widget/SemHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1638
    .local v5, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1556
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 623
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 624
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

    .line 625
    return-void
.end method

.method private blacklist beginDrag()V
    .locals 2

    .line 1342
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1344
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 1347
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1352
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelFling()V

    .line 1353
    return-void
.end method

.method private blacklist cancelFling()V
    .locals 8

    .line 1318
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1320
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1321
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1322
    return-void
.end method

.method private blacklist cancelPendingDrag()V
    .locals 2

    .line 1330
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1331
    return-void
.end method

.method private blacklist createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 566
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 568
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 569
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 572
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 576
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 578
    return-object v1
.end method

.method private blacklist getPosFromItemCount(III)F
    .locals 17
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1237
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_1

    .line 1238
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1241
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    array-length v2, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1243
    .local v2, "hasSections":Z
    :goto_0
    if-eqz v2, :cond_d

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 1247
    :cond_3
    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    sub-int/2addr v1, v4

    .line 1248
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    if-gez v1, :cond_4

    .line 1249
    const/4 v3, 0x0

    return v3

    .line 1251
    :cond_4
    sub-int v4, p3, v4

    .line 1254
    .end local p3    # "totalItemCount":I
    .local v4, "totalItemCount":I
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1256
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 1259
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

    .local v5, "incrementalPos":F
    goto :goto_2

    .line 1257
    .end local v5    # "incrementalPos":F
    :cond_6
    :goto_1
    const/4 v5, 0x0

    .line 1263
    .restart local v5    # "incrementalPos":F
    :goto_2
    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v6

    .line 1264
    .local v6, "section":I
    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1265
    .local v7, "sectionPos":I
    iget-object v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v8, v8

    .line 1267
    .local v8, "sectionCount":I
    add-int/lit8 v9, v8, -0x1

    if-ge v6, v9, :cond_8

    .line 1269
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v8, :cond_7

    .line 1270
    iget-object v9, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .local v9, "nextSectionPos":I
    goto :goto_3

    .line 1272
    .end local v9    # "nextSectionPos":I
    :cond_7
    add-int/lit8 v9, v4, -0x1

    .line 1274
    .restart local v9    # "nextSectionPos":I
    :goto_3
    sub-int/2addr v9, v7

    .line 1275
    .local v9, "positionsInSection":I
    goto :goto_4

    .line 1276
    .end local v9    # "positionsInSection":I
    :cond_8
    sub-int v9, v4, v7

    .line 1281
    .restart local v9    # "positionsInSection":I
    :goto_4
    if-nez v9, :cond_9

    .line 1282
    const/4 v10, 0x0

    .local v10, "posWithinSection":F
    goto :goto_5

    .line 1284
    .end local v10    # "posWithinSection":F
    :cond_9
    int-to-float v10, v1

    add-float/2addr v10, v5

    int-to-float v11, v7

    sub-float/2addr v10, v11

    int-to-float v11, v9

    div-float/2addr v10, v11

    .line 1288
    .restart local v10    # "posWithinSection":F
    :goto_5
    int-to-float v11, v6

    add-float/2addr v11, v10

    int-to-float v12, v8

    div-float/2addr v11, v12

    .line 1293
    .local v11, "result":F
    if-lez v1, :cond_c

    add-int v12, v1, p2

    if-ne v12, v4, :cond_c

    .line 1294
    iget-object v12, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    add-int/lit8 v13, p2, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1295
    .local v12, "lastChild":Landroid/view/View;
    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v13}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v13

    .line 1298
    .local v13, "rightPadding":I
    iget-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView;->getClipToPadding()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1299
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 1300
    .local v14, "maxSize":I
    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    .local v15, "currentVisibleSize":I
    goto :goto_6

    .line 1302
    .end local v14    # "maxSize":I
    .end local v15    # "currentVisibleSize":I
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    .line 1303
    .restart local v14    # "maxSize":I
    iget-object v15, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v15}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 1305
    .restart local v15    # "currentVisibleSize":I
    :goto_6
    if-lez v15, :cond_b

    if-lez v14, :cond_b

    .line 1306
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v11

    int-to-float v0, v15

    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    int-to-float v1, v14

    div-float/2addr v0, v1

    mul-float v16, v16, v0

    add-float v11, v11, v16

    goto :goto_7

    .line 1305
    .end local p1    # "firstVisibleItem":I
    .restart local v1    # "firstVisibleItem":I
    :cond_b
    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    goto :goto_7

    .line 1293
    .end local v12    # "lastChild":Landroid/view/View;
    .end local v13    # "rightPadding":I
    .end local v14    # "maxSize":I
    .end local v15    # "currentVisibleSize":I
    .end local p1    # "firstVisibleItem":I
    .restart local v1    # "firstVisibleItem":I
    :cond_c
    move/from16 p1, v1

    .line 1310
    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :goto_7
    return v11

    .line 1244
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "totalItemCount":I
    .end local v5    # "incrementalPos":F
    .end local v6    # "section":I
    .end local v7    # "sectionPos":I
    .end local v8    # "sectionCount":I
    .end local v9    # "positionsInSection":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "result":F
    .restart local p3    # "totalItemCount":I
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
    .param p1, "x"    # F

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1221
    .local v0, "trackImage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 1222
    .local v1, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 1223
    .local v2, "max":F
    move v3, v1

    .line 1224
    .local v3, "offset":F
    sub-float v4, v2, v1

    .line 1228
    .local v4, "range":F
    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_0

    .line 1229
    return v5

    .line 1232
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

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 945
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 946
    .local v1, "adapter":Landroid/widget/Adapter;
    instance-of v2, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-eqz v2, :cond_0

    .line 947
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    .line 948
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 958
    :cond_0
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 959
    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 960
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 961
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 963
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 964
    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 966
    :goto_0
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
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

    .line 1537
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1538
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1540
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1541
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1542
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 1543
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    .line 1545
    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1540
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1549
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1507
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
    .param p1, "x"    # F

    .line 1519
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 1520
    .local v0, "offset":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1521
    .local v1, "left":F
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1522
    .local v2, "right":F
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
    .param p1, "y"    # F

    .line 1511
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1512
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

    .line 1514
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

    .line 777
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 778
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 779
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 780
    return-void
.end method

.method private blacklist layoutTrack()V
    .locals 12

    .line 787
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 788
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 789
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 790
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 791
    .local v3, "containerHeight":I
    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 792
    .local v4, "heightMeasureSpec":I
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 793
    .local v5, "widthMeasureSpec":I
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 795
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 796
    .local v6, "trackHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 797
    .local v7, "thumbHalfWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 798
    .local v8, "top":I
    add-int v9, v8, v6

    .line 799
    .local v9, "bottom":I
    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    .line 800
    .local v10, "left":I
    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v7

    .line 801
    .local v11, "right":I
    invoke-virtual {v0, v10, v8, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 802
    return-void
.end method

.method private blacklist measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 713
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 716
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginBottom":I
    goto :goto_0

    .line 718
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginBottom":I
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 719
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 720
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 723
    .restart local v3    # "marginBottom":I
    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 724
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 725
    .local v6, "containerHeight":I
    sub-int v7, v6, v2

    sub-int/2addr v7, v3

    .line 726
    .local v7, "adjMaxHeight":I
    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 727
    .local v8, "heightMeasureSpec":I
    const/4 v9, 0x0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 728
    .local v9, "widthMeasureSpec":I
    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v8}, Landroid/view/View;->measure(II)V

    .line 731
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 732
    .local v11, "containerWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 733
    .local v12, "height":I
    div-int/lit8 v13, v11, 0xa

    add-int/2addr v13, v1

    iget v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    .line 734
    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    .line 735
    .local v14, "right":I
    sub-int v15, v6, v12

    div-int/lit8 v15, v15, 0x2

    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v0

    .line 736
    .local v15, "top":I
    add-int v0, v13, v12

    .line 737
    .local v0, "bottom":I
    move/from16 v16, v1

    move-object/from16 v1, p3

    .end local v1    # "marginLeft":I
    .local v16, "marginLeft":I
    invoke-virtual {v1, v13, v15, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    return-void
.end method

.method private blacklist measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 638
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 639
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 640
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 641
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 643
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 648
    :goto_0
    return-void
.end method

.method private blacklist measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, "marginLeft":I
    const/4 v3, 0x0

    .line 668
    .local v3, "marginTop":I
    const/4 v4, 0x0

    .local v4, "marginBottom":I
    goto :goto_0

    .line 670
    .end local v2    # "marginLeft":I
    .end local v3    # "marginTop":I
    .end local v4    # "marginBottom":I
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 671
    .restart local v2    # "marginLeft":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 672
    .restart local v3    # "marginTop":I
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 675
    .restart local v4    # "marginBottom":I
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 676
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 678
    .local v6, "containerHeight":I
    if-nez p2, :cond_1

    .line 679
    move v7, v6

    .local v7, "maxHeight":I
    goto :goto_1

    .line 680
    .end local v7    # "maxHeight":I
    :cond_1
    iget-boolean v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v7, :cond_2

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    .restart local v7    # "maxHeight":I
    goto :goto_1

    .line 683
    .end local v7    # "maxHeight":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int v7, v6, v7

    .line 686
    .restart local v7    # "maxHeight":I
    :goto_1
    sub-int v8, v7, v3

    sub-int/2addr v8, v4

    .line 687
    .local v8, "adjMaxHeight":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 688
    .local v9, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 689
    .local v10, "widthMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v9}, Landroid/view/View;->measure(II)V

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 695
    .local v12, "height":I
    iget-boolean v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v13, :cond_4

    .line 696
    if-nez p2, :cond_3

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v13

    :goto_2
    sub-int/2addr v13, v4

    .line 697
    .local v13, "bottom":I
    sub-int v14, v13, v12

    .local v14, "top":I
    goto :goto_4

    .line 699
    .end local v13    # "bottom":I
    .end local v14    # "top":I
    :cond_4
    if-nez p2, :cond_5

    iget v13, v5, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v13

    :goto_3
    add-int v14, v13, v3

    .line 700
    .restart local v14    # "top":I
    add-int v13, v14, v12

    .line 704
    .restart local v13    # "bottom":I
    :goto_4
    move v15, v2

    .line 705
    .local v15, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v0, v15, v16

    .line 706
    .local v0, "right":I
    move-object/from16 v1, p4

    invoke-virtual {v1, v15, v14, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 707
    return-void
.end method

.method private blacklist onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    goto :goto_0

    .line 459
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 461
    :cond_1
    if-eqz p1, :cond_3

    .line 462
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->stop()V

    .line 469
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    .line 470
    return-void
.end method

.method private blacklist postAutoHide()V
    .locals 4

    .line 911
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 912
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 913
    return-void
.end method

.method private blacklist refreshDrawablePressedState()V
    .locals 2

    .line 837
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 838
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 839
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 840
    return-void
.end method

.method private blacklist scrollTo(F)V
    .locals 19
    .param p1, "position"    # F

    .line 980
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 982
    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v2

    .line 983
    .local v2, "count":I
    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 984
    .local v3, "sections":[Ljava/lang/Object;
    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    array-length v4, v3

    .line 986
    .local v4, "sectionCount":I
    :goto_0
    if-eqz v3, :cond_9

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    .line 987
    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 989
    .local v5, "exactSection":I
    move v6, v5

    .line 990
    .local v6, "targetSection":I
    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 991
    .local v7, "targetIndex":I
    move v8, v6

    .line 999
    .local v8, "sectionIndex":I
    move v9, v2

    .line 1000
    .local v9, "nextIndex":I
    move v10, v7

    .line 1001
    .local v10, "prevIndex":I
    move v11, v6

    .line 1002
    .local v11, "prevSection":I
    add-int/lit8 v12, v6, 0x1

    .line 1005
    .local v12, "nextSection":I
    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_1

    .line 1006
    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1010
    :cond_1
    if-ne v9, v7, :cond_4

    .line 1012
    :cond_2
    if-lez v6, :cond_4

    .line 1013
    add-int/lit8 v6, v6, -0x1

    .line 1014
    iget-object v13, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1015
    if-eq v10, v7, :cond_3

    .line 1016
    move v11, v6

    .line 1017
    move v8, v6

    .line 1018
    goto :goto_1

    .line 1019
    :cond_3
    if-nez v6, :cond_2

    .line 1022
    const/4 v8, 0x0

    .line 1033
    :cond_4
    :goto_1
    add-int/lit8 v13, v12, 0x1

    .line 1034
    .local v13, "nextNextSection":I
    :goto_2
    if-ge v13, v4, :cond_5

    iget-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1035
    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_5

    .line 1036
    add-int/lit8 v13, v13, 0x1

    .line 1037
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1044
    :cond_5
    int-to-float v14, v11

    int-to-float v15, v4

    div-float/2addr v14, v15

    .line 1045
    .local v14, "prevPosition":F
    int-to-float v15, v12

    int-to-float v1, v4

    div-float/2addr v15, v1

    .line 1046
    .local v15, "nextPosition":F
    if-nez v2, :cond_6

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v16, v3

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3e000000    # 0.125f

    move-object/from16 v16, v3

    .end local v3    # "sections":[Ljava/lang/Object;
    .local v16, "sections":[Ljava/lang/Object;
    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 1047
    .local v1, "snapThreshold":F
    :goto_3
    if-ne v11, v5, :cond_7

    sub-float v3, p1, v14

    cmpg-float v3, v3, v1

    if-gez v3, :cond_7

    .line 1048
    move v3, v10

    .end local v7    # "targetIndex":I
    .local v3, "targetIndex":I
    goto :goto_4

    .line 1050
    .end local v3    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    :cond_7
    sub-int v3, v9, v10

    int-to-float v3, v3

    sub-float v17, p1, v14

    mul-float v3, v3, v17

    sub-float v17, v15, v14

    div-float v3, v3, v17

    float-to-int v3, v3

    add-int/2addr v3, v10

    .line 1055
    .end local v7    # "targetIndex":I
    .restart local v3    # "targetIndex":I
    :goto_4
    add-int/lit8 v7, v2, -0x1

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "snapThreshold":F
    .local v17, "snapThreshold":F
    invoke-static {v3, v1, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 1057
    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    instance-of v1, v7, Landroid/widget/SemHorizontalListView;

    if-eqz v1, :cond_8

    .line 1058
    check-cast v7, Landroid/widget/SemHorizontalListView;

    iget v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v1, v3

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "sectionCount":I
    .local v18, "sectionCount":I
    invoke-virtual {v7, v1, v4}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_5

    .line 1060
    .end local v18    # "sectionCount":I
    .restart local v4    # "sectionCount":I
    :cond_8
    move/from16 v18, v4

    .end local v4    # "sectionCount":I
    .restart local v18    # "sectionCount":I
    iget v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    .line 1062
    .end local v3    # "targetIndex":I
    .end local v5    # "exactSection":I
    .end local v6    # "targetSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "prevIndex":I
    .end local v11    # "prevSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "prevPosition":F
    .end local v15    # "nextPosition":F
    .end local v17    # "snapThreshold":F
    :goto_5
    goto :goto_7

    .line 986
    .end local v8    # "sectionIndex":I
    .end local v16    # "sections":[Ljava/lang/Object;
    .end local v18    # "sectionCount":I
    .local v3, "sections":[Ljava/lang/Object;
    .restart local v4    # "sectionCount":I
    :cond_9
    move-object/from16 v16, v3

    move/from16 v18, v4

    .line 1063
    .end local v3    # "sections":[Ljava/lang/Object;
    .end local v4    # "sectionCount":I
    .restart local v16    # "sections":[Ljava/lang/Object;
    .restart local v18    # "sectionCount":I
    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1065
    .local v1, "index":I
    iget-object v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    instance-of v5, v3, Landroid/widget/SemHorizontalListView;

    if-eqz v5, :cond_a

    .line 1066
    check-cast v3, Landroid/widget/SemHorizontalListView;

    iget v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_6

    .line 1068
    :cond_a
    iget v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    .line 1071
    :goto_6
    const/4 v8, -0x1

    .line 1074
    .end local v1    # "index":I
    .restart local v8    # "sectionIndex":I
    :goto_7
    iget v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    if-eq v1, v8, :cond_c

    .line 1075
    iput v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    .line 1077
    invoke-direct {v0, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v1

    .line 1078
    .local v1, "hasPreview":Z
    iget-boolean v3, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    if-nez v3, :cond_b

    if-eqz v1, :cond_b

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_8

    .line 1080
    :cond_b
    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    .line 1084
    .end local v1    # "hasPreview":Z
    :cond_c
    :goto_8
    return-void
.end method

.method private blacklist setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 805
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 807
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 808
    const/4 p1, 0x1

    .line 811
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 812
    return-void

    .line 815
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 823
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToDragging()V

    goto :goto_0

    .line 826
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 820
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToVisible()V

    .line 821
    goto :goto_0

    .line 817
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->transitionToHidden()V

    .line 818
    nop

    .line 831
    :goto_0
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    .line 834
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
    .param p1, "position"    # F

    .line 1178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1179
    .local v1, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 1180
    .local v2, "left":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 1182
    .local v3, "right":I
    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1183
    .local v4, "trackImage":Landroid/view/View;
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1184
    .local v5, "thumbImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    .line 1185
    .local v6, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    .line 1186
    .local v7, "max":F
    move v8, v6

    .line 1187
    .local v8, "offset":F
    sub-float v9, v7, v6

    .line 1188
    .local v9, "range":F
    mul-float v10, p1, v9

    add-float/2addr v10, v8

    .line 1189
    .local v10, "thumbMiddle":F
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    invoke-virtual {v5, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1192
    iget-object v11, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1193
    .local v11, "previewImage":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    .line 1195
    .local v13, "previewHalfWidth":F
    iget v12, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    packed-switch v12, :pswitch_data_0

    .line 1204
    const/4 v12, 0x0

    .local v12, "previewPos":F
    goto :goto_0

    .line 1200
    .end local v12    # "previewPos":F
    :pswitch_0
    sub-float v12, v10, v13

    .line 1201
    .restart local v12    # "previewPos":F
    goto :goto_0

    .line 1197
    .end local v12    # "previewPos":F
    :pswitch_1
    move v12, v10

    .line 1198
    .restart local v12    # "previewPos":F
    nop

    .line 1209
    :goto_0
    int-to-float v14, v2

    add-float/2addr v14, v13

    .line 1210
    .local v14, "minP":F
    int-to-float v15, v3

    sub-float/2addr v15, v13

    .line 1211
    .local v15, "maxP":F
    invoke-static {v12, v14, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v16

    .line 1212
    .local v16, "previewMiddle":F
    move-object/from16 v17, v1

    .end local v1    # "container":Landroid/graphics/Rect;
    .local v17, "container":Landroid/graphics/Rect;
    sub-float v1, v16, v13

    .line 1213
    .local v1, "previewLeft":F
    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1215
    move/from16 v18, v2

    .end local v2    # "left":I
    .local v18, "left":I
    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1216
    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1217
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startPendingDrag()V
    .locals 4

    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/widget/SemHorizontalFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    .line 1339
    return-void
.end method

.method private blacklist transitionPreviewLayout(I)Z
    .locals 19
    .param p1, "sectionIndex"    # I

    .line 1095
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 1096
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1097
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1098
    aget-object v4, v2, v1

    .line 1099
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1100
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    .end local v4    # "section":Ljava/lang/Object;
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1105
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1108
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    .line 1109
    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1110
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_0

    .line 1112
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v6, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1113
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1117
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    invoke-direct {v0, v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1119
    invoke-direct {v0, v7, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1121
    iget-object v8, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    .line 1122
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1126
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1127
    .local v9, "showTarget":Landroid/animation/Animator;
    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1128
    .local v10, "hideShowing":Landroid/animation/Animator;
    iget-object v11, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1131
    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    .line 1132
    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1133
    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1134
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 1135
    invoke-static {v5, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    .line 1136
    .local v11, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1138
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1139
    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    .line 1140
    .local v14, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1144
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    .line 1145
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    .line 1149
    .local v15, "previewHeight":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    .line 1150
    .local v12, "targetHeight":I
    if-le v12, v15, :cond_3

    .line 1151
    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1152
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object v13, v2

    const-wide/16 v1, 0x64

    .end local v2    # "sections":[Ljava/lang/Object;
    .local v13, "sections":[Ljava/lang/Object;
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    .line 1153
    .local v8, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1154
    .end local v8    # "scaleAnim":Landroid/animation/Animator;
    goto :goto_1

    .line 1155
    .end local v13    # "sections":[Ljava/lang/Object;
    .restart local v2    # "sections":[Ljava/lang/Object;
    :cond_3
    move-object v13, v2

    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local v13    # "sections":[Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1159
    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 1160
    .local v1, "showingHeight":I
    if-le v1, v12, :cond_4

    .line 1161
    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    .line 1162
    .local v2, "scale":F
    invoke-static {v6, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v17, v1

    move/from16 v18, v2

    const-wide/16 v1, 0x64

    .end local v1    # "showingHeight":I
    .end local v2    # "scale":F
    .local v17, "showingHeight":I
    .local v18, "scale":F
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1163
    .local v1, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1160
    .end local v17    # "showingHeight":I
    .end local v18    # "scale":F
    .local v1, "showingHeight":I
    :cond_4
    move/from16 v17, v1

    .line 1166
    .end local v1    # "showingHeight":I
    .restart local v17    # "showingHeight":I
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist transitionToDragging()V
    .locals 10

    .line 893
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 897
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 899
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 900
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v3, v7, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 901
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 903
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 904
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 905
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 907
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 908
    return-void
.end method

.method private blacklist transitionToHidden()V
    .locals 10

    .line 846
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 850
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 851
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 854
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    .line 855
    .local v3, "offset":F
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v7, v3, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    .line 857
    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 859
    .local v1, "slideOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 860
    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 861
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 863
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 864
    return-void
.end method

.method private blacklist transitionToVisible()V
    .locals 12

    .line 870
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 874
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 875
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 876
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v6

    iget-object v9, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v1, v9, v8}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v10, 0x12c

    .line 878
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 879
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    iget-object v11, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    .line 880
    invoke-virtual {v8, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 882
    .local v3, "slideIn":Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 883
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v1, v7, v6

    aput-object v3, v7, v2

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 884
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 886
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mShowingPreview:Z

    .line 887
    return-void
.end method

.method private blacklist updateAppearance()V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 291
    .local v1, "height":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 299
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 302
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 303
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    .line 310
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 311
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 313
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_2

    .line 314
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 315
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 318
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    .line 319
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 323
    :cond_3
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 325
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :cond_4
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 329
    .local v2, "textMinSize":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 331
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 332
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 333
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->refreshDrawablePressedState()V

    .line 337
    return-void
.end method

.method private blacklist updateContainerRect()V
    .locals 6

    .line 744
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    .line 745
    .local v0, "list":Landroid/widget/SemHorizontalAbsListView;
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    .line 747
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 748
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 749
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 750
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 751
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 753
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 754
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 756
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 757
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 758
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 759
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 762
    if-ne v2, v3, :cond_2

    .line 763
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v3

    .line 764
    .local v3, "height":I
    iget v4, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 765
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 767
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 771
    .end local v3    # "height":I
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 554
    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 555
    .local v1, "longList":Z
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_1

    .line 556
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLongList:Z

    .line 558
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 560
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist getHeight()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public blacklist isAlwaysShowEnabled()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 426
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1405
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1406
    return v1

    .line 1409
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1410
    .local v0, "actionMasked":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-nez v2, :cond_2

    .line 1412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1414
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 1417
    :cond_2
    return v1
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1359
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1360
    return v1

    .line 1363
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1381
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1383
    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 1384
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1386
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1387
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1389
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1394
    .end local v0    # "pos":F
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1365
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1372
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1373
    const/4 v0, 0x1

    return v0

    .line 1376
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    .line 1377
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    .line 1398
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
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 539
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    .line 540
    :cond_0
    iput p2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldItemCount:I

    .line 541
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOldChildCount:I

    .line 543
    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 544
    .local v0, "hasMoreItems":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 545
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 546
    .local v1, "firstVisibleItem":I
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 549
    .end local v1    # "firstVisibleItem":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLongList(II)V

    .line 551
    .end local v0    # "hasMoreItems":Z
    :cond_3
    return-void
.end method

.method public blacklist onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 919
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 920
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 921
    return-void

    .line 924
    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    .line 925
    .local v0, "hasMoreItems":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v3, v1, :cond_2

    .line 926
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 929
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    .line 931
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_3

    .line 932
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mFirstVisibleItem:I

    .line 935
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-eq v3, v1, :cond_3

    .line 936
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 940
    :cond_3
    return-void
.end method

.method public blacklist onSectionsChanged()V
    .locals 1

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 973
    return-void
.end method

.method public blacklist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 533
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1424
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1425
    return v1

    .line 1428
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1489
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1468
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

    .line 1469
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1474
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v2, :cond_5

    .line 1476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1477
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 1480
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_2

    .line 1481
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1484
    :cond_2
    return v5

    .line 1442
    .end local v0    # "pos":F
    :pswitch_2
    iget-wide v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_3

    .line 1444
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1447
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setThumbPos(F)V

    .line 1448
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->scrollTo(F)V

    .line 1453
    .end local v0    # "pos":F
    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mState:I

    if-ne v0, v2, :cond_5

    .line 1457
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1458
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1460
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 1461
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->postAutoHide()V

    .line 1463
    return v5

    .line 1431
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1433
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->beginDrag()V

    .line 1434
    return v5

    .line 1436
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mInitialTouchX:F

    .line 1437
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->startPendingDrag()V

    .line 1493
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

    .line 402
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 407
    return-void
.end method

.method public blacklist setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 434
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 435
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mAlwaysShow:Z

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 414
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 415
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mEnabled:Z

    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 419
    :cond_0
    return-void
.end method

.method public blacklist setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 476
    iget v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 477
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollBarStyle:I

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 481
    :cond_0
    return-void
.end method

.method public blacklist setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .line 495
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    .line 500
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_4

    .line 501
    iput p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mScrollbarPosition:I

    .line 502
    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mLayoutFromBottom:Z

    .line 504
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    aget v0, v1, v0

    .line 505
    .local v0, "previewResId":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 509
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 510
    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 511
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 512
    iget v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 513
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 517
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 519
    .end local v0    # "previewResId":I
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 8
    .param p1, "resId"    # I

    .line 343
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mList:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 346
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 347
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 348
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 349
    .local v4, "index":I
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 363
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    goto :goto_1

    .line 381
    :pswitch_2
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinWidth:I

    .line 382
    goto :goto_1

    .line 384
    :pswitch_3
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbMinHeight:I

    .line 385
    goto :goto_1

    .line 360
    :pswitch_4
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 361
    goto :goto_1

    .line 351
    :pswitch_5
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mOverlayPosition:I

    .line 352
    goto :goto_1

    .line 357
    :pswitch_6
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 358
    goto :goto_1

    .line 354
    :pswitch_7
    iget-object v6, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v5

    .line 355
    goto :goto_1

    .line 378
    :pswitch_8
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinHeight:I

    .line 379
    goto :goto_1

    .line 375
    :pswitch_9
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewMinWidth:I

    .line 376
    goto :goto_1

    .line 387
    :pswitch_a
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 369
    :pswitch_b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 370
    goto :goto_1

    .line 372
    :pswitch_c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextSize:F

    .line 373
    goto :goto_1

    .line 366
    :pswitch_d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTextAppearance:I

    .line 367
    nop

    .line 347
    .end local v4    # "index":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateAppearance()V

    .line 395
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

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setState(I)V

    .line 489
    return-void
.end method

.method public blacklist updateLayout()V
    .locals 3

    .line 588
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    .line 594
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateContainerRect()V

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutThumb()V

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->layoutTrack()V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 600
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 601
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 602
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 606
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 607
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 608
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 609
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 610
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 612
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller;->mUpdatingLayout:Z

    .line 613
    return-void
.end method
