.class public final Landroidx/compose/foundation/shape/PercentCornerSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/shape/CornerSize;


# instance fields
.field public final percent:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The percent should be in the range of [0, 100]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/shape/PercentCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/shape/PercentCornerSize;

    iget p0, p0, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    iget p1, p1, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final toPx-TmRCtEA(Landroidx/compose/ui/unit/Density;J)F
    .locals 0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    move-result p1

    iget p0, p0, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CornerSize(size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/shape/PercentCornerSize;->percent:F

    const-string v1, "%)"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
