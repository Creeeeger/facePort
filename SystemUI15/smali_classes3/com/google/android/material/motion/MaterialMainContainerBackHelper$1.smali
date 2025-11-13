.class public final Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$collapsedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;->val$collapsedView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;->val$collapsedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
