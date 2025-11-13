.class public final Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;->this$0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v1, v0, v0

    mul-int v2, p1, p1

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v5, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_7

    int-to-double v1, v1

    const-wide v5, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double/2addr v1, v5

    const-wide v5, 0x3fdcccccc0000000L    # 0.44999998807907104

    add-double/2addr v1, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v5

    double-to-int v1, v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_6

    move v1, v2

    :cond_6
    neg-int v0, v0

    neg-int p1, p1

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;->this$0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput v1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v4, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_7
    return-void
.end method
