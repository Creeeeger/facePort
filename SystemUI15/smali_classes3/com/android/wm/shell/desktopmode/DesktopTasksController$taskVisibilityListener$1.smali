.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTasksVisibilityChanged(II)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->launchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->launchAdjacentEnabled:Z

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "set launch adjacent flag root enabled=%b"

    invoke-static {v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->launchAdjacentEnabled:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->container:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-eqz p2, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "enable launch adjacent flag root container"

    invoke-static {v1, p2, p1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1, v2}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "disable launch adjacent flag root container"

    invoke-static {v1, p2, p1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1, v2}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    :goto_1
    return-void
.end method
