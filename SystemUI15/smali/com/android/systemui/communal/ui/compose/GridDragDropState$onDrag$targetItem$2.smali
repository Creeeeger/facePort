.class final Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$2;
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
.field final synthetic $draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$2;->$draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$2;->$draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
