.class final Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$1;
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
.field final synthetic this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
