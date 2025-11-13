.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda5;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
