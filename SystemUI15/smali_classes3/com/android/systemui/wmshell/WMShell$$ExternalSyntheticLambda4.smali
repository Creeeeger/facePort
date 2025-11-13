.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/WMShell;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initRecentTasks(Lcom/android/wm/shell/recents/RecentTasks;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$15;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p1

    check-cast v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    iget-object v2, v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v3, v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl$addVisibleTasksListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$16;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$16;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/desktopmode/DesktopMode;)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreen;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initSplitScreen(Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initPip(Lcom/android/wm/shell/pip/Pip;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
