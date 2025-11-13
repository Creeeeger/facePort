.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;


# instance fields
.field public final defaultMainAxisSpacing:I

.field public final itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

.field public final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->defaultMainAxisSpacing:I

    return-void
.end method


# virtual methods
.method public abstract createItem-O3s9Psw(ILjava/lang/Object;Ljava/lang/Object;IILjava/util/List;JII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.end method

.method public final getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 7

    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->defaultMainAxisSpacing:I

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public final getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 11

    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getContentType(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    move-wide v7, p2

    invoke-virtual {v2, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v6

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move/from16 v5, p6

    move-wide v7, p2

    move v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->createItem-O3s9Psw(ILjava/lang/Object;Ljava/lang/Object;IILjava/util/List;JII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "does not have fixed height"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
