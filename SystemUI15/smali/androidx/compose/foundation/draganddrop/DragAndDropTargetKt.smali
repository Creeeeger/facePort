.class public abstract Landroidx/compose/foundation/draganddrop/DragAndDropTargetKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final dragAndDropTarget(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/draganddrop/DropTargetElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/draganddrop/DropTargetElement;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
