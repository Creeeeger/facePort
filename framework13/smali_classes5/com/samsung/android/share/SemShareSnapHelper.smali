.class public abstract Lcom/samsung/android/share/SemShareSnapHelper;
.super Lcom/android/internal/widget/RecyclerView$OnFlingListener;
.source "SemShareSnapHelper.java"


# static fields
.field static final blacklist MILLISECONDS_PER_INCH:F = 25.0f


# instance fields
.field public blacklist mFlickCount:I

.field private blacklist mGravityScroller:Landroid/widget/Scroller;

.field private blacklist mOverScroller:Landroid/widget/OverScroller;

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final blacklist mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mFlickCount:I

    .line 24
    new-instance v0, Lcom/samsung/android/share/SemShareSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SemShareSnapHelper$1;-><init>(Lcom/samsung/android/share/SemShareSnapHelper;)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private blacklist destroyCallbacks()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V

    .line 104
    return-void
.end method

.method private blacklist setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getOnFlingListener()Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist snapFromFling(Lcom/android/internal/widget/RecyclerView$LayoutManager;II)Z
    .locals 4
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 158
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareSnapHelper;->createSnapScroller(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/LinearSmoothScroller;

    move-result-object v0

    .line 162
    .local v0, "smoothScroller":Lcom/android/internal/widget/LinearSmoothScroller;
    if-nez v0, :cond_1

    .line 163
    return v1

    .line 165
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/share/SemShareSnapHelper;->findTargetSnapPosition(Lcom/android/internal/widget/RecyclerView$LayoutManager;II)I

    move-result v2

    .line 166
    .local v2, "targetPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 167
    return v1

    .line 169
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 170
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 171
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public blacklist attachToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;->destroyCallbacks()V

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 78
    if-eqz p1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;->setupCallbacks()V

    .line 80
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 83
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mOverScroller:Landroid/widget/OverScroller;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareSnapHelper;->snapToTargetExistingView()V

    .line 87
    :cond_2
    return-void
.end method

.method public abstract blacklist calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public blacklist calculateScrollDistance(II)[I
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 116
    .local v0, "outDist":[I
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    aput v1, v0, v2

    .line 119
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 120
    return-object v0
.end method

.method protected blacklist createSnapScroller(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 205
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lcom/samsung/android/share/SemShareSnapHelper$2;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/share/SemShareSnapHelper$2;-><init>(Lcom/samsung/android/share/SemShareSnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract blacklist findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract blacklist findTargetSnapPosition(Lcom/android/internal/widget/RecyclerView$LayoutManager;II)I
.end method

.method public blacklist onFling(II)Z
    .locals 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 45
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 49
    .local v2, "adapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    if-nez v2, :cond_1

    .line 50
    return v1

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v3

    .line 53
    .local v3, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v3, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_3

    .line 54
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/share/SemShareSnapHelper;->snapFromFling(Lcom/android/internal/widget/RecyclerView$LayoutManager;II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 53
    :goto_0
    return v1
.end method

.method public blacklist semCalculateScrollDistanceForLinear(II)[I
    .locals 11
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 136
    .local v0, "outDist":[I
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 137
    iget-object v2, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 140
    iget-object v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 141
    iget v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mFlickCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mFlickCount:I

    .line 142
    return-object v0
.end method

.method blacklist snapToTargetExistingView()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 183
    .local v0, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_1

    .line 184
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareSnapHelper;->findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "snapView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 188
    return-void

    .line 190
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareSnapHelper;->calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 191
    .local v2, "snapDistance":[I
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_3

    aget v4, v2, v5

    if-eqz v4, :cond_4

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    aget v3, v2, v3

    aget v5, v2, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    .line 194
    :cond_4
    return-void
.end method
