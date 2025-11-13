.class public final Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;
.super Landroidx/window/embedding/DividerAttributes$DragRange;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final maxRatio:F

.field public final minRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/embedding/DividerAttributes$DragRange;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    iput p2, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-lez p0, :cond_2

    float-to-double v0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v4

    if-gez p0, :cond_2

    float-to-double v0, p2

    cmpg-double p0, v0, v2

    if-lez p0, :cond_1

    float-to-double v0, p2

    cmpl-double p0, v0, v4

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minRatio must be less than or equal to maxRatio"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxRatio must be in the interval (0.0, 1.0)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minRatio must be in the interval (0.0, 1.0)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    iget v1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    iget v3, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    cmpg-float v1, v3, v1

    if-nez v1, :cond_2

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    iget p1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitRatioDragRange["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
