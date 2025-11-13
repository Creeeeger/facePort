.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController$2;
.super Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final show(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    const-string v1, "DragAndDropController"

    if-nez v0, :cond_0

    sget p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t show dropTarget since wrong displayId #"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    sget p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->$r8$clinit:I

    const-string p0, "Couldn\'t show dropTarget since handler isn\'t existed."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
