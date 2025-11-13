.class public final Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $goDown:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->$goDown:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/DragDownHelper;->maxDragDownAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->$goDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget v0, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isOverDraggingAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->springBack$2()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->$goDown:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->onFinishDraggingDown()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    :goto_0
    return-void
.end method
