.class public final Landroidx/compose/foundation/layout/FixedIntInsets;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/layout/WindowInsets;


# instance fields
.field public final bottomVal:I

.field public final leftVal:I

.field public final rightVal:I

.field public final topVal:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    iput p2, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    iput p3, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    iput p4, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FixedIntInsets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FixedIntInsets;

    iget v1, p1, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    iget v3, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    iget v3, p1, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    iget v3, p1, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    iget p1, p1, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getBottom(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    return p0
.end method

.method public final getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    return p0
.end method

.method public final getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    return p0
.end method

.method public final getTop(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->leftVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->topVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->rightVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/layout/FixedIntInsets;->bottomVal:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
