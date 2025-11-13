.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callbackExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic $listener:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->$listener:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->$callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->$listener:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addDesktopGestureExclusionRegionListener$1;->$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    iput-object p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$setExclusionRegionListener$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$setExclusionRegionListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
