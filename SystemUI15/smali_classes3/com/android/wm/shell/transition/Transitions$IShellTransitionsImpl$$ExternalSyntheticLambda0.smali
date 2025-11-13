.class public final synthetic Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/window/TransitionFilter;

.field public final synthetic f$1:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/TransitionFilter;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$1:Landroid/window/RemoteTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$1:Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mTakeoverFilters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;->f$1:Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p1, p1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
