.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
