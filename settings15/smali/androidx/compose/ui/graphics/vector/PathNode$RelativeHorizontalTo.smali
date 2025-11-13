.class public final Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;
.super Landroidx/compose/ui/graphics/vector/PathNode;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dx:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathNode;-><init>(IZZ)V

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RelativeHorizontalTo(dx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
