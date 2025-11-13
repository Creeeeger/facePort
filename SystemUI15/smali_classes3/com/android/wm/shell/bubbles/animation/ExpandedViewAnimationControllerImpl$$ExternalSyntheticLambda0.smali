.class public final synthetic Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$0:[Z

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$0:[Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    aput-boolean p1, v0, v1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
