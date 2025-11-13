.class final Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt$awaitFirstRightClickDown$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/compose/foundation/contextmenu/ContextMenuGestures_androidKt;->access$awaitFirstRightClickDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
