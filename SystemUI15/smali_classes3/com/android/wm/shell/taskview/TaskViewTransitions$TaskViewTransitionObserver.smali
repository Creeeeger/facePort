.class public final Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/taskview/TaskViewTransitions;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTransitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;->this$0:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTransitions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;-><init>(Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;->this$0:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
