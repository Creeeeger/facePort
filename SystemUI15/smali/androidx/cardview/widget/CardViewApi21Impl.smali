.class public final Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updatePadding(Landroidx/cardview/widget/CardView$1;)V
    .locals 4

    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Landroidx/cardview/widget/RoundRectDrawable;

    iget v1, v1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    check-cast v0, Landroidx/cardview/widget/RoundRectDrawable;

    iget v0, v0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    invoke-static {v1, v0, p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    iget-object v2, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    iget-boolean v2, v2, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    invoke-static {v1, v0, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void
.end method
