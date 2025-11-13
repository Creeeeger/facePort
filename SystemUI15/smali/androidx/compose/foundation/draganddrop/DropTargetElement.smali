.class final Landroidx/compose/foundation/draganddrop/DropTargetElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

.field public final target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/draganddrop/DragAndDropTarget;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;

    iget-object v1, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/draganddrop/DropTargetElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/draganddrop/DropTargetElement;

    iget-object v1, p1, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    iget-object v3, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;

    iget-object v0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    iput-object v0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->shouldStartDragAndDrop:Lkotlin/jvm/functions/Function1;

    iget-object v0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    iget-object p0, p0, Landroidx/compose/foundation/draganddrop/DropTargetElement;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    iput-object p0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    new-instance p0, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode$createAndAttachDragAndDropModifierNode$1;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode$createAndAttachDragAndDropModifierNode$1;-><init>(Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;)V

    iget-object v0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->target:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    invoke-static {p0, v0}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->DragAndDropModifierNode(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)Landroidx/compose/ui/draganddrop/DragAndDropNode;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object p0, p1, Landroidx/compose/foundation/draganddrop/DragAndDropTargetNode;->dragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;

    :cond_1
    return-void
.end method
