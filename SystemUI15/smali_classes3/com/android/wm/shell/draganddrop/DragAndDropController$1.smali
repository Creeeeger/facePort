.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "Receive %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x213d385d592cc34dL    # -3.0016457418879096E148

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    iget-object v0, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "DragAndDropController"

    const-string v0, "Couldn\'t make dropTarget invisible since handler isn\'t existed."

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
