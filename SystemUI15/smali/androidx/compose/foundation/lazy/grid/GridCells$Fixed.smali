.class public final Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/GridCells;


# instance fields
.field public final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->count:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Provided count "

    const-string v0, " should be larger than zero"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    iget p1, p1, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->count:I

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->count:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->count:I

    neg-int p0, p0

    return p0
.end method
