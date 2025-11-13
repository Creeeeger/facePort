.class Landroid/app/SemActivityTaskManager$TaskChangeController;
.super Landroid/app/TaskStackListener;
.source "SemActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskChangeController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SemActivityTaskManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/SemActivityTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SemActivityTaskManager;Landroid/app/SemActivityTaskManager$TaskChangeController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/SemActivityTaskManager$TaskChangeController;-><init>(Landroid/app/SemActivityTaskManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onActivityRequestedOrientationChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onActivityRequestedOrientationChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskCreated(ILandroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskDisplayChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskRemoved(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1}, Landroid/app/SemTaskChangeCallback;->onTaskRemoved(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onTaskRequestedOrientationChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SemActivityTaskManager$TaskChangeController;->this$0:Landroid/app/SemActivityTaskManager;

    invoke-static {v0}, Landroid/app/SemActivityTaskManager;->-$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemTaskChangeCallback;

    invoke-interface {v1, p1, p2}, Landroid/app/SemTaskChangeCallback;->onTaskRequestedOrientationChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
