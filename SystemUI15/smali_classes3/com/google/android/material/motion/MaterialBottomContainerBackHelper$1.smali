.class public final Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    iget-object p1, p1, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper$1;->this$0:Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    invoke-virtual {p0, v0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->updateBackProgress(F)V

    return-void
.end method
