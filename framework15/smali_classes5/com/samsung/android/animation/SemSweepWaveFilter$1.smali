.class Lcom/samsung/android/animation/SemSweepWaveFilter$1;
.super Ljava/lang/Object;
.source "SemSweepWaveFilter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

.field final synthetic blacklist val$position:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fgetwaveHeight(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fputincrementYdown(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    neg-float v2, v0

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fgetwaveHeight(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fputincrementYup(Lcom/samsung/android/animation/SemSweepWaveFilter;F)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fgetmViewForeground(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$fgetmDeltaX(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->val$position:I

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-$$Nest$mdoDrawWaveEffect(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V

    return-void
.end method
