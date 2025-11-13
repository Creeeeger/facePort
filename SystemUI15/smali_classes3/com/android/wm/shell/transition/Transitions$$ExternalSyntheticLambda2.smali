.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    iget-object v1, v0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v2, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/HomeTransitionObserver;Lcom/android/wm/shell/transition/Transitions;I)V

    new-instance v3, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, p1, v4}, Lcom/android/wm/shell/transition/HomeTransitionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/HomeTransitionObserver;Lcom/android/wm/shell/transition/Transitions;I)V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    :cond_0
    if-eqz p0, :cond_1

    iget-object p1, v0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, [Landroid/view/SurfaceControl;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/ShellTaskOrganizer;->mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void

    :pswitch_1
    check-cast p0, Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mTakeoverFilters:Ljava/util/ArrayList;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/window/RemoteTransition;

    invoke-virtual {v5}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :cond_5
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processReadyQueue: force finish, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTransitions"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
