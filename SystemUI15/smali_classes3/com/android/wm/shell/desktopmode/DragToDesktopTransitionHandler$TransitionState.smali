.class public abstract Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCancelState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;
.end method

.method public abstract getCancelTransitionToken()Landroid/os/IBinder;
.end method

.method public abstract getDragAnimator()Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;
.end method

.method public abstract getDraggedTaskChange()Landroid/window/TransitionInfo$Change;
.end method

.method public abstract getDraggedTaskId()I
.end method

.method public abstract getHomeToken()Landroid/window/WindowContainerToken;
.end method

.method public abstract getStartAborted()Z
.end method

.method public abstract getStartTransitionFinishCb()Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
.end method

.method public abstract getStartTransitionFinishTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract getStartTransitionToken()Landroid/os/IBinder;
.end method

.method public abstract setCancelState(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V
.end method

.method public abstract setCancelTransitionToken(Landroid/os/IBinder;)V
.end method

.method public abstract setDraggedTaskChange(Landroid/window/TransitionInfo$Change;)V
.end method

.method public abstract setHomeToken(Landroid/window/WindowContainerToken;)V
.end method

.method public abstract setStartAborted()V
.end method

.method public abstract setStartTransitionFinishCb(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
.end method

.method public abstract setStartTransitionFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
.end method
