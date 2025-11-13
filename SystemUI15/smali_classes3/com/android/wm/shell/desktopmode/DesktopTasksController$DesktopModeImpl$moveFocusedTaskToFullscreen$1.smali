.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->$displayId:I

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->$transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->$displayId:I

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;->$transitionSource:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getFocusedFreeformTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    :cond_0
    return-void
.end method
