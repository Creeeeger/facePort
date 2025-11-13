.class final Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p3, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object p3, p3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p3, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/DragController;

    return-object p0
.end method
