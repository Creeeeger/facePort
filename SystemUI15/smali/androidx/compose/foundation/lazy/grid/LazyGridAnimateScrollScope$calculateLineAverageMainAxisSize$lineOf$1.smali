.class final Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $isVertical:Z

.field final synthetic $visibleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->$visibleItems:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->$isVertical:Z

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->$visibleItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
