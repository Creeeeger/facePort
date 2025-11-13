.class public final Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleTaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressedOnTaskRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onBackPressedOnTaskRoot(I)V

    :cond_0
    return-void
.end method

.method public final onInitialized()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onInitialized()V

    :cond_0
    return-void
.end method

.method public final onReleased()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onReleased()V

    :cond_0
    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->isCreated:Z

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public final onTaskRemovalStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskRemovalStarted(I)V

    :cond_0
    return-void
.end method

.method public final onTaskVisibilityChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView$listener$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_0
    return-void
.end method
