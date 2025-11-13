.class public final Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $endBounds$inlined:Landroid/graphics/Rect;

.field public final synthetic $finishCallback$inlined:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic $finishTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic $leash$inlined:Landroid/view/SurfaceControl;

.field public final synthetic $leash$inlined$1:Landroid/view/SurfaceControl;

.field public final synthetic $startBounds$inlined:Landroid/graphics/Rect;

.field public final synthetic $startTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic $taskId$inlined:I

.field public final synthetic $taskId$inlined$1:I

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$finishTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$endBounds$inlined:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iput p5, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$taskId$inlined:I

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$finishCallback$inlined:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

    iput-object p8, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined$1:Landroid/view/SurfaceControl;

    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startBounds$inlined:Landroid/graphics/Rect;

    iput p11, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$taskId$inlined$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$finishTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$endBounds$inlined:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$endBounds$inlined:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$endBounds$inlined:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$taskId$inlined:I

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->onAnimationEnd(I)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$finishCallback$inlined:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->boundsAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined$1:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startBounds$inlined:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined$1:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startBounds$inlined:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startBounds$inlined:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$leash$inlined$1:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->this$0:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$taskId$inlined$1:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startTransaction$inlined:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler$startAnimation$lambda$2$$inlined$addListener$default$1;->$startBounds$inlined:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->onAnimationStart(ILandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method
