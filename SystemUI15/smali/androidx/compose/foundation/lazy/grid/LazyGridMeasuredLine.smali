.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final index:I

.field public final isVertical:Z

.field public final items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

.field public final mainAxisSize:I

.field public final mainAxisSizeWithSpacings:I

.field public final mainAxisSpacing:I

.field public final slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

.field public final spans:Ljava/util/List;


# direct methods
.method public constructor <init>(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/lazy/grid/LazyGridSlots;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->spans:Ljava/util/List;

    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isVertical:Z

    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSpacing:I

    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_0
    if-ge p4, p1, :cond_0

    aget-object p6, p2, p4

    iget p6, p6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSpacing:I

    add-int/2addr p5, p1

    if-gez p5, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    :goto_1
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    return-void
.end method


# virtual methods
.method public final position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    add-int/lit8 v13, v4, 0x1

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->spans:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide v7, v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    long-to-int v4, v7

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iget-object v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->positions:[I

    aget v8, v7, v5

    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isVertical:Z

    if-eqz v9, :cond_0

    move v11, v7

    goto :goto_1

    :cond_0
    move v11, v5

    :goto_1
    if-eqz v9, :cond_1

    move v12, v5

    goto :goto_2

    :cond_1
    move v12, v7

    :goto_2
    move v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIIIII)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v13

    goto :goto_0

    :cond_2
    return-object v1
.end method
