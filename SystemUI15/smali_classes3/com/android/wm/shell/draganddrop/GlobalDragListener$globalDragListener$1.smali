.class public final Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;
.super Landroid/window/IGlobalDragListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    invoke-direct {p0}, Landroid/window/IGlobalDragListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onCrossWindowDrop$1;-><init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;Landroid/app/ActivityManager$RunningTaskInfo;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;->this$0:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1$onUnhandledDrop$1;-><init>(Lcom/android/wm/shell/draganddrop/GlobalDragListener;Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
