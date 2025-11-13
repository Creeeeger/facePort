.class public final Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoScrollSpeed:Landroidx/compose/runtime/MutableState;

.field public final autoScrollThreshold:F

.field public final contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field public isOnRemoveButton:Z

.field public final placeHolder:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

.field public placeHolderIndex:Ljava/lang/Integer;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;FLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState;",
            "F",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollSpeed:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->autoScrollThreshold:F

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    invoke-direct {p1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;->placeHolder:Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    return-void
.end method
