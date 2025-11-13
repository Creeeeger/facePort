.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAlwaysShowHeight:I

.field private blacklist mCollapseOffset:F

.field private blacklist mCollapsibleHeight:I

.field private blacklist mCollapsibleHeightReserved:I

.field private blacklist mDisableDrag:Z

.field private blacklist mDismissLocked:Z

.field private blacklist mDismissOnScrollerFinished:Z

.field private blacklist mDissmissByDrag:Z

.field private blacklist mDragRemainder:F

.field private blacklist mEnableTouchOutside:Z

.field private blacklist mInitialTouchX:F

.field private blacklist mInitialTouchY:F

.field private blacklist mIsChooser:Z

.field private blacklist mIsDragging:Z

.field private final blacklist mIsMaxCollapsedHeightSmallExplicit:Z

.field private blacklist mLastTouchX:F

.field private blacklist mLastTouchY:F

.field private blacklist mMaxCollapsedHeight:I

.field private blacklist mMaxCollapsedHeightSmall:I

.field private blacklist mMaxWidth:I

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mMinFlingVelocity:F

.field private blacklist mNestedListChild:Landroid/widget/AbsListView;

.field private blacklist mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

.field private blacklist mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private blacklist mOpenOnClick:Z

.field private blacklist mOpenOnLayout:Z

.field private blacklist mPopOverEnableShowAtTop:Z

.field private blacklist mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private blacklist mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mScroller:Landroid/widget/OverScroller;

.field private blacklist mShowAtTop:Z

.field private blacklist mSmallCollapsed:Z

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopOffset:I

.field private final blacklist mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final blacklist mTouchSlop:I

.field private blacklist mUncollapsibleHeight:I

.field private final blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misDescendantClipped(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mPopOverEnableShowAtTop:Z

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDissmissByDrag:Z

    .line 145
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 166
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 168
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 171
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 174
    nop

    .line 175
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    .line 176
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 177
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x1080833

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    new-instance v0, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 186
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    .line 190
    return-void
.end method

.method private blacklist abortAnimation()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 623
    return-void
.end method

.method private blacklist dismiss()V
    .locals 2

    .line 600
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDissmissByDrag:Z

    .line 603
    return-void
.end method

.method private blacklist distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 721
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 722
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 723
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private blacklist findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 731
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 736
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 737
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 738
    .local v2, "child":Landroid/view/View;
    invoke-static {v2, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    return-object v2

    .line 736
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 742
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 746
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 747
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 749
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 750
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 752
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 754
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 756
    :cond_2
    return-object v0
.end method

.method private blacklist getMaxCollapsedHeight()I
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 1288
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static blacklist isChildUnder(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 799
    .local v0, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    .line 800
    .local v1, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 801
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 802
    .local v3, "bottom":F
    cmpl-float v4, p1, v0

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private blacklist isDescendantClipped(Landroid/view/View;)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 772
    move-object v0, p1

    .local v0, "directChild":Landroid/view/View;
    goto :goto_1

    .line 774
    .end local v0    # "directChild":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 775
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 776
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 777
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_1
    move-object v2, v0

    .line 785
    .end local v1    # "p":Landroid/view/ViewParent;
    .local v0, "directChild":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 786
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    .line 787
    .local v2, "childCount":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 788
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 789
    .local v6, "nextChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 790
    goto :goto_3

    .line 792
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 787
    .end local v6    # "nextChild":Landroid/view/View;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 794
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_4

    move v3, v5

    :cond_4
    return v3
.end method

.method private blacklist isDismissable()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDragging()Z
    .locals 2

    .line 266
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method private blacklist isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isMoving()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

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

.method private blacklist isNestedListChildScrolled()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 376
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 374
    :goto_0
    return v1
.end method

.method private blacklist isNestedRecyclerChildScrolled()Z
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 384
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 385
    return v3

    .line 387
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1

    .line 390
    .end local v0    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    return v1
.end method

.method private blacklist onCollapsedChanged(Z)V
    .locals 1
    .param p1, "isCollapsed"    # Z

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 673
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 674
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    if-eqz v0, :cond_1

    .line 678
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;->onCollapsedChanged(Z)V

    .line 680
    :cond_1
    return-void
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 580
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 581
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 584
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 585
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 586
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 587
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 589
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private blacklist performAccessibilityActionCommon(I)Z
    .locals 6
    .param p1, "action"    # I

    .line 902
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 918
    :sswitch_0
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 921
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 922
    return v1

    .line 912
    :sswitch_1
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 913
    invoke-direct {p0, v4, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 914
    return v1

    .line 906
    :sswitch_2
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    .line 907
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 908
    return v1

    .line 927
    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_0
        0x102003a -> :sswitch_2
    .end sparse-switch
.end method

.method private blacklist performDrag(F)F
    .locals 9
    .param p1, "dy"    # F

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDisableDrag:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 630
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v0, p1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 632
    .local v0, "newPos":F
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_9

    .line 633
    sub-float p1, v0, v2

    .line 635
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    float-to-int v3, p1

    int-to-float v3, v3

    sub-float v3, p1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 636
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    .line 637
    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 638
    add-float/2addr p1, v3

    goto :goto_0

    .line 639
    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    .line 640
    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 641
    sub-float/2addr p1, v3

    .line 644
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    .line 645
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 647
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 648
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v6, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v6, :cond_3

    .line 649
    float-to-int v6, p1

    invoke-virtual {v4, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 645
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 652
    .end local v3    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    .line 653
    .local v3, "isCollapsedOld":Z
    :goto_2
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 654
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 655
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v5

    .line 656
    .local v1, "isCollapsedNew":Z
    :goto_3
    if-eq v3, v1, :cond_8

    .line 657
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 658
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    new-instance v7, Landroid/metrics/LogMaker;

    const/16 v8, 0x673

    invoke-direct {v7, v8}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 660
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 658
    invoke-virtual {v6, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 662
    :cond_8
    float-to-int v4, v0

    sub-float v6, v0, p1

    float-to-int v6, v6

    invoke-virtual {p0, v5, v4, v5, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->onScrollChanged(IIII)V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 664
    return p1

    .line 666
    .end local v1    # "isCollapsedNew":Z
    .end local v2    # "childCount":I
    .end local v3    # "isCollapsedOld":Z
    :cond_9
    return v1

    .line 627
    .end local v0    # "newPos":F
    :cond_a
    :goto_5
    return v1
.end method

.method private blacklist resetTouch()V
    .locals 1

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 594
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 596
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 597
    return-void
.end method

.method private blacklist smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .line 693
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 694
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v0, v0

    .line 695
    .local v0, "sy":I
    sub-int v7, p1, v0

    .line 696
    .local v7, "dy":I
    if-nez v7, :cond_0

    .line 697
    return-void

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    .line 701
    .local v8, "height":I
    div-int/lit8 v9, v8, 0x2

    .line 702
    .local v9, "halfHeight":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, v8

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 703
    .local v10, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v3, v9

    .line 704
    invoke-direct {p0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v1, v3

    .line 706
    .local v11, "distance":F
    const/4 v1, 0x0

    .line 707
    .local v1, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 708
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    .line 709
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v3, v11, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .end local v1    # "duration":I
    .local v2, "duration":I
    goto :goto_0

    .line 711
    .end local v2    # "duration":I
    .restart local v1    # "duration":I
    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    div-float/2addr v3, v4

    .line 712
    .local v3, "pageDelta":F
    add-float/2addr v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 714
    .end local v1    # "duration":I
    .end local v3    # "pageDelta":F
    .restart local v2    # "duration":I
    :goto_0
    const/16 v1, 0x12c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 716
    .end local v2    # "duration":I
    .local v12, "duration":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v0

    move v5, v7

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 718
    return-void
.end method

.method private blacklist updateCollapseOffset(IZ)Z
    .locals 7
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .line 270
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 271
    return v1

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 276
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 277
    return v1

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 281
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    .line 282
    .local v4, "isCollapsedOld":Z
    :goto_0
    if-eqz p2, :cond_3

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v5, :cond_3

    int-to-float v6, p1

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    .line 285
    int-to-float v0, v5

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_1

    .line 287
    :cond_3
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 289
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    move v0, v1

    .line 290
    .local v0, "isCollapsedNew":Z
    if-eq v4, v0, :cond_5

    .line 291
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 293
    .end local v0    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :cond_5
    goto :goto_3

    .line 295
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v0

    :goto_2
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 297
    :goto_3
    return v3
.end method


# virtual methods
.method public whitelist computeScroll()V
    .locals 3

    .line 607
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 610
    .local v0, "keepGoing":Z
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 611
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 613
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    .line 617
    .end local v0    # "keepGoing":Z
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist dispatchOnDismissed()V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 690
    :cond_1
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1158
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1143
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1148
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1149
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    .line 1150
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1151
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1153
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 944
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlwaysShowHeight()I
    .locals 1

    .line 1085
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    return v0
.end method

.method public blacklist getShowAtTop()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    return v0
.end method

.method public blacklist isCollapsed()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSmallCollapsed()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    .line 815
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 817
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 821
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 823
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 824
    return-void
.end method

.method public whitelist onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 996
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 997
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 953
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 954
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 955
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 956
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 958
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 959
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 961
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 963
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 964
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 966
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 967
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 973
    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 974
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 327
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 352
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 354
    goto :goto_1

    .line 338
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 339
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 340
    .local v4, "y":F
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v5, v4, v5

    .line 341
    .local v5, "dy":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 343
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 344
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 345
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v7

    sub-float v8, v6, v8

    add-float v9, v6, v5

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 346
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 345
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 349
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "dy":F
    :cond_1
    goto :goto_1

    .line 358
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_1

    .line 329
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 330
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 331
    .restart local v4    # "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 332
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 333
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 335
    .end local v3    # "x":F
    .end local v4    # "y":F
    nop

    .line 363
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_3

    .line 364
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 367
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDisableDrag:Z

    if-eqz v3, :cond_4

    .line 368
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 370
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1

    nop

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
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1090
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v1

    .line 1092
    .local v1, "width":I
    const/4 v2, 0x0

    .line 1094
    .local v2, "indicatorHost":Landroid/view/View;
    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1095
    .local v3, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v4

    .line 1096
    .local v4, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 1097
    .local v5, "rightEdge":I
    sub-int v6, v5, v4

    .line 1099
    .local v6, "widthAvailable":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    .line 1100
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 1101
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1102
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1103
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    if-eqz v11, :cond_0

    .line 1104
    move-object v2, v9

    .line 1107
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 1108
    move/from16 v16, v1

    goto :goto_1

    .line 1111
    :cond_1
    iget v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1112
    .local v11, "top":I
    iget-boolean v12, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v12, :cond_2

    .line 1113
    int-to-float v12, v11

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v12, v13

    float-to-int v11, v12

    .line 1115
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    .line 1117
    .local v12, "bottom":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1118
    .local v13, "childWidth":I
    sub-int v14, v6, v13

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v4

    .line 1119
    .local v14, "left":I
    add-int v15, v14, v13

    .line 1121
    .local v15, "right":I
    invoke-virtual {v9, v14, v11, v15, v12}, Landroid/view/View;->layout(IIII)V

    .line 1123
    move/from16 v16, v1

    .end local v1    # "width":I
    .local v16, "width":I
    iget v1, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v12

    move v3, v1

    .line 1100
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v13    # "childWidth":I
    .end local v14    # "left":I
    .end local v15    # "right":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    goto :goto_0

    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_3
    move/from16 v16, v1

    .line 1126
    .end local v1    # "width":I
    .end local v8    # "i":I
    .restart local v16    # "width":I
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1127
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    .line 1128
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1129
    .local v8, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1130
    .local v9, "right":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1131
    .local v10, "bottom":I
    iget-object v11, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int v11, v10, v11

    .line 1132
    .restart local v11    # "top":I
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v8, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v12

    xor-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1134
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    .end local v11    # "top":I
    goto :goto_2

    .line 1135
    :cond_4
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1136
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1139
    :cond_5
    :goto_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1001
    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 1002
    .local v7, "sourceWidth":I
    move v0, v7

    .line 1003
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1007
    .local v8, "heightSize":I
    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v1, :cond_0

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 1007
    :cond_0
    move v9, v0

    .line 1011
    .end local v0    # "widthSize":I
    .local v9, "widthSize":I
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1012
    .local v10, "widthSpec":I
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1017
    .local v11, "heightSpec":I
    const/4 v0, 0x0

    .line 1020
    .local v0, "heightUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v12

    .line 1021
    .local v12, "childCount":I
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .end local v0    # "heightUsed":I
    .local v13, "heightUsed":I
    .local v14, "i":I
    :goto_1
    const/high16 v15, -0x80000000

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-ge v14, v12, :cond_4

    .line 1022
    invoke-virtual {v6, v14}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1023
    .local v16, "child":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1024
    .local v2, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 1025
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v0, v5, :cond_2

    .line 1026
    sub-int v5, v8, v13

    .line 1027
    .local v5, "remainingHeight":I
    const/4 v4, 0x0

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 1028
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1029
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v0, v5, :cond_1

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v0, v5

    move/from16 v17, v0

    goto :goto_2

    :cond_1
    move/from16 v17, v3

    .line 1027
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v18, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v18, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    move v2, v10

    move v3, v4

    move v4, v15

    move v15, v5

    .end local v5    # "remainingHeight":I
    .local v15, "remainingHeight":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1030
    .end local v15    # "remainingHeight":I
    goto :goto_3

    .line 1031
    .end local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v10

    move v4, v11

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1033
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v13, v0

    goto :goto_4

    .line 1024
    .end local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_3
    move-object/from16 v18, v2

    .line 1021
    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v16    # "child":Landroid/view/View;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1037
    .end local v14    # "i":I
    :cond_4
    iput v13, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    .line 1040
    const/4 v0, 0x0

    move v14, v13

    move v13, v0

    .local v13, "i":I
    .local v14, "heightUsed":I
    :goto_5
    if-ge v13, v12, :cond_8

    .line 1041
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1043
    .restart local v16    # "child":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1044
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 1045
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v0, v5, :cond_6

    .line 1046
    sub-int v1, v8, v14

    .line 1047
    .local v1, "remainingHeight":I
    const/16 v17, 0x0

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 1048
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1049
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v0, v1, :cond_5

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v0, v1

    move/from16 v19, v0

    goto :goto_6

    :cond_5
    move/from16 v19, v3

    .line 1047
    :goto_6
    move-object/from16 v0, p0

    move/from16 v20, v1

    .end local v1    # "remainingHeight":I
    .local v20, "remainingHeight":I
    move-object/from16 v1, v16

    move-object/from16 v21, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v21, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    move v2, v10

    move v15, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1050
    .end local v20    # "remainingHeight":I
    goto :goto_7

    .line 1051
    .end local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_6
    move-object/from16 v21, v2

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v10

    move v4, v11

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1053
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_8

    .line 1044
    .end local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_7
    move-object/from16 v21, v2

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .line 1040
    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v16    # "child":Landroid/view/View;
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move v3, v15

    move/from16 v4, v17

    move/from16 v5, v18

    const/high16 v15, -0x80000000

    goto :goto_5

    :cond_8
    move v15, v3

    .line 1057
    .end local v13    # "i":I
    iget v0, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1061
    .local v0, "oldCollapsibleHeight":I
    iget-boolean v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    if-eqz v1, :cond_9

    .line 1062
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v1

    sub-int v1, v14, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_9

    .line 1064
    :cond_9
    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    sub-int v1, v14, v1

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1064
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1068
    :goto_9
    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v1, v14, v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1073
    iput v15, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    goto :goto_a

    .line 1075
    :cond_a
    sub-int v1, v8, v14

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1078
    :goto_a
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 1079
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 879
    const/4 v0, 0x0

    if-nez p4, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mPopOverEnableShowAtTop:Z

    if-nez v1, :cond_2

    .line 881
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_0

    cmpl-float v1, p3, v3

    if-lez v1, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 883
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_1

    .line 885
    :cond_0
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1

    .line 888
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_3

    cmpg-float v1, p3, v3

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 890
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 891
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_1

    .line 893
    :cond_3
    cmpl-float v1, p3, v3

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 896
    :goto_1
    return v2

    .line 898
    :cond_5
    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 871
    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 872
    const/4 v0, 0x1

    return v0

    .line 874
    :cond_0
    return v1
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 932
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    return v0

    .line 936
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 863
    if-lez p3, :cond_0

    .line 864
    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    .line 866
    :cond_0
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 856
    if-gez p5, :cond_0

    .line 857
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 859
    :cond_0
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 842
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 843
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1171
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 1172
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1173
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 1174
    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fgetmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 1175
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1163
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1164
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 1165
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fputmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;I)V

    .line 1166
    return-object v0
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 828
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    .line 829
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 830
    move-object v0, p2

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 832
    :cond_0
    instance-of v0, p2, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 833
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 835
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 837
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 847
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 848
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 851
    :cond_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 397
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "handled":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    .line 486
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 488
    goto/16 :goto_b

    .line 477
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 478
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 479
    .local v3, "pointerId":I
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 480
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 481
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 483
    .end local v2    # "pointerIndex":I
    .end local v3    # "pointerId":I
    goto/16 :goto_b

    .line 555
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v5, :cond_1

    .line 556
    nop

    .line 557
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    .line 556
    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 560
    return v2

    .line 419
    :pswitch_4
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 420
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad pointer id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resetting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverDrawerLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v5, 0x0

    .line 423
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 427
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 428
    .local v6, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 429
    .local v7, "y":F
    iget-boolean v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 430
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v8, v7, v8

    .line 431
    .local v8, "dy":F
    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float v9, v6, v9

    .line 432
    .local v9, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 433
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    move v1, v2

    .line 434
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v11, v10

    sub-float v11, v2, v11

    add-float v12, v2, v8

    int-to-float v10, v10

    add-float/2addr v2, v10

    .line 435
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 434
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 436
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v11, v10

    sub-float v11, v2, v11

    add-float v12, v2, v9

    int-to-float v10, v10

    add-float/2addr v2, v10

    .line 437
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 436
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    .line 440
    .end local v8    # "dy":F
    .end local v9    # "dx":F
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_c

    .line 441
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v7, v2

    .line 442
    .local v2, "dy":F
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    sub-float v8, v6, v8

    .line 443
    .local v8, "dx":F
    iget-boolean v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    if-eqz v9, :cond_9

    .line 444
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    if-lez v9, :cond_6

    .line 445
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 446
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    neg-float v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_1

    .line 447
    :cond_4
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v3, v3, v9

    if-lez v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    neg-float v9, v8

    float-to-int v9, v9

    invoke-virtual {v3, v9, v4}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 450
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    goto :goto_1

    .line 453
    :cond_6
    cmpl-float v9, v2, v3

    if-lez v9, :cond_7

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 454
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    neg-float v9, v2

    float-to-int v9, v9

    invoke-virtual {v3, v9, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 455
    :cond_7
    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 456
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    neg-float v9, v2

    float-to-int v9, v9

    invoke-virtual {v3, v4, v9}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 458
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    goto :goto_1

    .line 462
    :cond_9
    cmpl-float v9, v2, v3

    if-lez v9, :cond_a

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 463
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    neg-float v9, v2

    float-to-int v9, v9

    invoke-virtual {v3, v9, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 464
    :cond_a
    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 465
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    neg-float v9, v2

    float-to-int v9, v9

    invoke-virtual {v3, v4, v9}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 467
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 471
    .end local v2    # "dy":F
    .end local v8    # "dx":F
    :cond_c
    :goto_1
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 472
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    .line 474
    .end local v5    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    goto/16 :goto_b

    .line 491
    :pswitch_5
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 492
    .local v5, "wasDragging":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 493
    .local v6, "pointerIndex":I
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 494
    if-nez v5, :cond_e

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_e

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_e

    .line 496
    iget-boolean v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mEnableTouchOutside:Z

    if-eqz v7, :cond_d

    .line 497
    return v4

    .line 499
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 501
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 502
    return v2

    .line 505
    :cond_e
    iget-boolean v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_f

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_f

    .line 507
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 508
    return v2

    .line 510
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 511
    iget-object v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    .line 512
    .local v7, "yvel":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_19

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 514
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v2

    if-eqz v2, :cond_10

    cmpg-float v2, v7, v3

    if-gez v2, :cond_10

    .line 515
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 516
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto/16 :goto_6

    .line 518
    :cond_10
    cmpg-float v2, v7, v3

    if-gez v2, :cond_11

    goto :goto_2

    :cond_11
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_2
    invoke-direct {p0, v4, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto/16 :goto_6

    .line 521
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v8

    if-eqz v8, :cond_16

    cmpl-float v8, v7, v3

    if-lez v8, :cond_16

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v10, v9

    cmpl-float v8, v8, v10

    if-lez v8, :cond_16

    .line 523
    iget-boolean v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    if-eqz v8, :cond_15

    .line 524
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_13

    .line 525
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 526
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 527
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1b

    .line 528
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 529
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_6

    .line 532
    :cond_13
    nop

    .line 533
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    cmpg-float v2, v2, v9

    if-gez v2, :cond_14

    goto :goto_3

    :cond_14
    move v4, v8

    .line 532
    :goto_3
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_6

    .line 536
    :cond_15
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 537
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_6

    .line 540
    :cond_16
    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    if-nez v2, :cond_17

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 543
    :cond_17
    cmpg-float v2, v7, v3

    if-gez v2, :cond_18

    goto :goto_4

    :cond_18
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_4
    invoke-direct {p0, v4, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_6

    .line 547
    :cond_19
    nop

    .line 548
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    cmpg-float v2, v2, v9

    if-gez v2, :cond_1a

    goto :goto_5

    :cond_1a
    move v4, v8

    .line 547
    :goto_5
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 550
    :cond_1b
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 552
    .end local v5    # "wasDragging":Z
    .end local v6    # "pointerIndex":I
    .end local v7    # "yvel":F
    goto :goto_b

    .line 402
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 403
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 404
    .local v5, "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchX:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 405
    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 406
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 407
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1c

    move v6, v2

    goto :goto_7

    :cond_1c
    move v6, v4

    .line 408
    .local v6, "hitView":Z
    :goto_7
    if-nez v6, :cond_1d

    iget-boolean v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mEnableTouchOutside:Z

    if-eqz v7, :cond_1d

    .line 409
    return v4

    .line 412
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-nez v7, :cond_1f

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v7, :cond_1e

    goto :goto_8

    :cond_1e
    move v7, v4

    goto :goto_9

    :cond_1f
    :goto_8
    move v7, v2

    :goto_9
    move v1, v7

    .line 413
    if-eqz v6, :cond_20

    if-eqz v1, :cond_20

    goto :goto_a

    :cond_20
    move v2, v4

    :goto_a
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 414
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 416
    .end local v3    # "x":F
    .end local v5    # "y":F
    .end local v6    # "hitView":Z
    nop

    .line 564
    :goto_b
    return v1

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

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 978
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 980
    const/4 v0, 0x0

    return v0

    .line 983
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 807
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 811
    :cond_0
    return-void
.end method

.method public blacklist scrollNestedScrollableChildBackToTop()V
    .locals 2

    .line 571
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 576
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist semDisableDrag(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 1295
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDisableDrag:Z

    .line 1296
    return-void
.end method

.method public blacklist semEnablePopOverShowAtTop(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1322
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mPopOverEnableShowAtTop:Z

    .line 1323
    return-void
.end method

.method public blacklist semEnableTouchOutside(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1317
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mEnableTouchOutside:Z

    .line 1318
    return-void
.end method

.method public blacklist semGetMaxWidth()I
    .locals 1

    .line 1299
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    return v0
.end method

.method public blacklist semIsChooser(Z)V
    .locals 0
    .param p1, "checkChooser"    # Z

    .line 1311
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsChooser:Z

    .line 1312
    return-void
.end method

.method public blacklist semIsDismissByDrag()Z
    .locals 1

    .line 1307
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDissmissByDrag:Z

    return v0
.end method

.method public blacklist semSetMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 1303
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 1304
    return-void
.end method

.method public blacklist setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    goto :goto_1

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 236
    :goto_1
    return-void
.end method

.method public blacklist setCollapsibleHeightReserved(I)V
    .locals 5
    .param p1, "heightPixels"    # I

    .line 239
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 240
    .local v0, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 242
    sub-int v1, p1, v0

    .line 243
    .local v1, "dReserved":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 244
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 247
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 248
    .local v2, "oldCollapsibleHeight":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 250
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 255
    return-void
.end method

.method public blacklist setDismissLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    .line 259
    return-void
.end method

.method public blacklist setMaxCollapsedHeight(I)V
    .locals 1
    .param p1, "heightInPixels"    # I

    .line 197
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    if-ne p1, v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    if-nez v0, :cond_1

    .line 202
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 205
    return-void
.end method

.method public blacklist setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 314
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 315
    return-void
.end method

.method public blacklist setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 306
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 307
    return-void
.end method

.method public blacklist setShowAtTop(Z)V
    .locals 0
    .param p1, "showOnTop"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 224
    return-void
.end method

.method public blacklist setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    .line 208
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 210
    return-void
.end method
