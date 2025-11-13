.class public final Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

.field public final synthetic val$gravity:I

.field public final synthetic val$leftSwipeEdge:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/motion/MaterialSideContainerBackHelper;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iput-boolean p2, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$leftSwipeEdge:Z

    iput p3, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$gravity:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iget-object p1, p1, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialSideContainerBackHelper;

    iget-boolean v1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$leftSwipeEdge:Z

    iget p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper$1;->val$gravity:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->updateBackProgress(FZI)V

    return-void
.end method
