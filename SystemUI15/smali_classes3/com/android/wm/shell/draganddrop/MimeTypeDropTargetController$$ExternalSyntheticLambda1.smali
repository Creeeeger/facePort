.class public final synthetic Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

.field public final synthetic f$1:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :cond_0
    return-void
.end method
