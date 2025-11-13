.class public final Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$springBack$animator$1$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->overDragDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->onFinishDraggingDown()V

    return-void
.end method
