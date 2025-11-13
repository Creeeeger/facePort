.class public final synthetic Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;

    invoke-interface {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;->onDragStarted()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
