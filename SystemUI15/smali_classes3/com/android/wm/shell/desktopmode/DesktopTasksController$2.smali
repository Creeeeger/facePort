.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$2;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$2;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    sget v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Initialize DesktopTasksController"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    const-string v0, "desktopmode"

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeShellCommandHandler:Lcom/android/wm/shell/desktopmode/DesktopModeShellCommandHandler;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$2;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellController:Lcom/android/wm/shell/sysui/ShellController;

    const-string v2, "extra_shell_desktop_mode"

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->taskVisibilityListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$onInit$3;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->recentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
