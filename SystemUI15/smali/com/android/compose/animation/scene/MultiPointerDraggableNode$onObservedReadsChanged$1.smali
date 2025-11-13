.class final Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object v0, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-boolean v2, v1, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->previousEnabled:Z

    if-eq v0, v2, :cond_0

    iget-object v1, v1, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->delegate:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    :cond_0
    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$onObservedReadsChanged$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iput-boolean v0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->previousEnabled:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
