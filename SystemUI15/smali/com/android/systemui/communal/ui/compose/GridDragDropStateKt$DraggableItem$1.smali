.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

.field final synthetic $enabled:Z

.field final synthetic $index:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $selected:Z

.field final synthetic $this_DraggableItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;Lcom/android/systemui/communal/ui/compose/GridDragDropState;IZZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            "IZZ",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$this_DraggableItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput p3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$index:I

    iput-boolean p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$enabled:Z

    iput-boolean p5, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$selected:Z

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$$changed:I

    iput p9, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$this_DraggableItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$index:I

    iget-boolean v3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$enabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$selected:Z

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$content:Lkotlin/jvm/functions/Function3;

    iget p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$1;->$$default:I

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt;->DraggableItem(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;Lcom/android/systemui/communal/ui/compose/GridDragDropState;IZZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
