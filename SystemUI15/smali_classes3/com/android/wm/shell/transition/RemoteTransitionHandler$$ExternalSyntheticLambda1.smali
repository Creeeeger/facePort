.class public final synthetic Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;
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

    iput p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v2, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v2, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v2, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
