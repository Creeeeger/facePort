.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final gridItemsCount:I

.field public final isVertical:Z

.field public final measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

.field public final slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

.field public final spaceBetweenLines:I

.field public final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->gridItemsCount:I

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spaceBetweenLines:I

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    return-void
.end method


# virtual methods
.method public final childConstraints-JhjzzOo$foundation_release(II)J
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->slots:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    aget p1, p2, p1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    sub-int/2addr p2, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->positions:[I

    aget v2, v1, p2

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    aget p2, v0, p2

    add-int/2addr v2, p2

    aget p1, v1, p1

    sub-int p1, v2, p1

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->isVertical:Z

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_3

    const p0, 0x7fffffff

    const/4 p2, 0x0

    invoke-static {p2, p0, p1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide p0

    :goto_1
    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "height("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be >= 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract createLine(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Ljava/util/List;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
.end method

.method public final getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->spans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    iget v5, v2, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->firstItemIndex:I

    if-eqz v3, :cond_1

    add-int v6, v5, v3

    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->gridItemsCount:I

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spaceBetweenLines:I

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    new-array v14, v3, [Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move v15, v4

    :goto_2
    if-ge v4, v3, :cond_2

    iget-object v7, v2, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->spans:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide v7, v7, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    long-to-int v13, v7

    invoke-virtual {v0, v15, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v9

    add-int v8, v5, v4

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    move v11, v15

    move v12, v13

    move/from16 v16, v13

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v7

    add-int v15, v15, v16

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v7, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->spans:Ljava/util/List;

    invoke-virtual {v0, v1, v14, v2, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->createLine(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Ljava/util/List;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v0

    return-object v0
.end method
