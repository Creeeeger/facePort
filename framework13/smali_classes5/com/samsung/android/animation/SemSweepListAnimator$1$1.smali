.class Lcom/samsung/android/animation/SemSweepListAnimator$1$1;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemSweepListAnimator$1;

    .line 394
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 397
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 403
    .local v0, "animatedValue":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 404
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 406
    .end local v0    # "animatedValue":I
    :cond_0
    return-void
.end method
