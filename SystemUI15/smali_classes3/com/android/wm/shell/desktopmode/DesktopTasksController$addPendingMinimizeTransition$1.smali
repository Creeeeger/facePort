.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $taskToMinimize:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic $transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;->$transition:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;->$taskToMinimize:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;->$transition:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;->$taskToMinimize:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;

    invoke-direct {v2, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;-><init>(II)V

    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->minimizeTransitionObserver:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
