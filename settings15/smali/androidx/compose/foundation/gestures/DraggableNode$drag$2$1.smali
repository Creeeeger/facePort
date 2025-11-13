.class final Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "dragDelta",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$drag:Landroidx/compose/foundation/gestures/DragScope;

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DragScope;Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->$$this$drag:Landroidx/compose/foundation/gestures/DragScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->$$this$drag:Landroidx/compose/foundation/gestures/DragScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-wide v2, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    iget-boolean p1, v1, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v1

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpOnDragStarted:Lkotlin/jvm/functions/Function3;

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p1, :cond_1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    goto :goto_2

    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    :goto_2
    check-cast v0, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;->this$0:Landroidx/compose/foundation/gestures/DefaultDraggableState;

    iget-object p1, p1, Landroidx/compose/foundation/gestures/DefaultDraggableState;->onDelta:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
