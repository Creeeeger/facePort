.class public final Lcom/android/systemui/wmshell/WMShell$16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic val$desktopMode:Lcom/android/wm/shell/desktopmode/DesktopMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/desktopmode/DesktopMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$16;->val$desktopMode:Lcom/android/wm/shell/desktopmode/DesktopMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final moveFocusedTaskToDesktop(I)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->KEYBOARD_SHORTCUT:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$16;->val$desktopMode:Lcom/android/wm/shell/desktopmode/DesktopMode;

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToDesktop$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToDesktop$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final moveFocusedTaskToFullscreen(I)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->KEYBOARD_SHORTCUT:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$16;->val$desktopMode:Lcom/android/wm/shell/desktopmode/DesktopMode;

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToFullscreen$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final moveFocusedTaskToStageSplit(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$16;->val$desktopMode:Lcom/android/wm/shell/desktopmode/DesktopMode;

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToStageSplit$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$moveFocusedTaskToStageSplit$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;IZ)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
