.class public abstract Lcom/android/systemui/assist/ui/CornerPathRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;
.end method

.method public final getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;

    move-result-object p0

    neg-float p1, p2

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {v7, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v5, v7

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v1, v6, :cond_2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v3

    invoke-direct {v7, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v7

    :goto_3
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    invoke-direct {v6, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v3

    iget v5, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v5

    add-float/2addr v5, v3

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    new-instance v3, Landroid/graphics/PointF;

    iget v5, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v4

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v3

    :goto_4
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v6, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    iget v5, v6, Landroid/graphics/PointF;->x:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, p1

    add-float/2addr v6, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    invoke-direct {v4, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, v3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_5
    return-object p1
.end method
