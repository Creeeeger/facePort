.class public final synthetic Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDismissReceiver:Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;I)V

    const-wide/16 v2, 0x0

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    const-string v1, "extra_shell_drag_and_drop"

    new-instance v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskVanishedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mGlobalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p0, v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

    if-eqz v1, :cond_2

    :try_start_1
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "%s unhandled drag listener"

    const-string v3, "Registering"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->wmService:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->callback:Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->globalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener$globalDragListener$1;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lcom/android/wm/shell/draganddrop/GlobalDragListener;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set unhandled drag listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/wm/shell/draganddrop/UnhandledDragController;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/draganddrop/UnhandledDragController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/MultiInstanceHelper;Lcom/android/wm/shell/common/DisplayController;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
