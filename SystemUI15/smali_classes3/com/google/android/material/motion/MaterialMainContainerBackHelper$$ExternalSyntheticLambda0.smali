.class public final synthetic Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p0

    int-to-float v1, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    int-to-float v2, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p0

    int-to-float v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(FFFFF)V

    return-void
.end method
