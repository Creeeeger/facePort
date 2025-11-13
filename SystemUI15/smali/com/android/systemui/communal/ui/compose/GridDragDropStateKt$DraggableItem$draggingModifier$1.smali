.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;
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
.field final synthetic $dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

.field final synthetic $itemAlpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;->$itemAlpha$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-virtual {v0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->getDraggingItemOffset-F1C5BW0$frameworks__base__packages__SystemUI__android_common__SystemUI_core()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-virtual {v0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->getDraggingItemOffset-F1C5BW0$frameworks__base__packages__SystemUI__android_common__SystemUI_core()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$DraggableItem$draggingModifier$1;->$itemAlpha$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
