.class public final Lcom/google/android/material/internal/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/StateListAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
