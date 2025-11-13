.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;


# instance fields
.field public final childConstraints:J

.field public final itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field public final measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method private constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    const p4, 0x7fffffff

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p5

    goto :goto_0

    :cond_0
    move p5, p4

    :goto_0
    if-nez p3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p4

    :cond_1
    const/4 p1, 0x5

    invoke-static {p5, p4, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    return-void
.end method

.method public synthetic constructor <init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V

    return-void
.end method

.method public static getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getContentType(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-wide v6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    invoke-virtual {v0, p1, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.end method

.method public final getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 7

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    check-cast p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    iget-object p2, p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->getContentType(I)Ljava/lang/Object;

    move-result-object v3

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->measureScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    invoke-virtual {p2, p1, p4, p5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->createItem-X9ElhV4(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method
