.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callbackExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic $listener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->$listener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->$callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->$listener:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;->$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
