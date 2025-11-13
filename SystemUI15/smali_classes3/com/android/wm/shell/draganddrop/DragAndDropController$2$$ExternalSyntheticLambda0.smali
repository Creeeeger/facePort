.class public final synthetic Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    const-string v2, "DragAndDropController"

    if-nez v1, :cond_0

    sget v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t show dropTarget since display #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v3, :cond_1

    sget v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DropTarget not handling for display Id #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    iget-object p0, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x29

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method
