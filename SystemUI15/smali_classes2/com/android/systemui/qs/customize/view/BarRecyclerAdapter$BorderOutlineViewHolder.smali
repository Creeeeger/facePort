.class public final Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final barView:Landroid/widget/FrameLayout;

.field public final downAnimator:Landroid/animation/ValueAnimator;

.field public final parentView:Landroid/view/ViewGroup;

.field public final releaseAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    const p1, 0x7f0a03d3

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->barView:Landroid/widget/FrameLayout;

    const p1, 0x7f0a03d4

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    sget-object p2, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    sget-object v4, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v5, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f7ae148    # 0.98f

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/util/ValueAnimatorUtil;->createScaleAnimator(Landroid/view/View;FFLandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/util/ValueAnimatorUtil;->getRELEASE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v4

    const-wide/16 v5, 0x1c2

    const v2, 0x3f7ae148    # 0.98f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/util/ValueAnimatorUtil;->createScaleAnimator(Landroid/view/View;FFLandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->releaseAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
