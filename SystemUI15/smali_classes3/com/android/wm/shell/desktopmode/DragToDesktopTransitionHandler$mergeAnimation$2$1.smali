.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $draggedTaskLeash:Landroid/view/SurfaceControl;

.field public final synthetic $startScale:F

.field public final synthetic $state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

.field public final synthetic $tx:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;


# direct methods
.method public constructor <init>(FLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;Landroid/view/SurfaceControl;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$startScale:F

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$tx:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$draggedTaskLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$startScale:F

    const/4 v2, 0x1

    int-to-float v2, v2

    invoke-static {v2, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$draggedTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    invoke-virtual {v1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$1;->$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->onBoundsChange(ILandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method
