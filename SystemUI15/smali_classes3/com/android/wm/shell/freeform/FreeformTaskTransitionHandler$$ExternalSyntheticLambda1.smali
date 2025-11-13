.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    iget-object v2, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p0, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutLeftKeyLaunchPolicy;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutLeftKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    const/16 v2, 0x15

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutUpKeyLaunchPolicy;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutUpKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    const/16 v2, 0x13

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutDownKeyLaunchPolicy;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutDownKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutRotationKeyLaunchPolicy;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutRotationKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget-object v0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->registKeyEventListener(Lcom/samsung/android/multiwindow/IKeyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFreeformTaskTransitionStarter: e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
