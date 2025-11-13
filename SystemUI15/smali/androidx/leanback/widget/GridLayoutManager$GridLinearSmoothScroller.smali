.class public abstract Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mSkipOnStopInternal:Z

.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    if-lez p0, :cond_0

    int-to-float p0, p0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v1, p0

    int-to-float p0, p1

    mul-float/2addr v1, p0

    int-to-float p0, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    iget-boolean v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-ne v1, p0, :cond_2

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_2
    return-void
.end method

.method public onStopInternal()V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    if-nez v0, :cond_1

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ltz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IZ)V

    :cond_0
    return-void

    :cond_1
    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-eq v2, p0, :cond_2

    iput p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p0, p0, 0x20

    iput p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p0, p0, -0x21

    iput p0, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 3

    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v2, p1, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v2, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    aget p1, v0, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    aget v0, v0, v2

    :goto_0
    mul-int v1, p1, p1

    mul-int v2, v0, v0

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
