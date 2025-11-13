.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

.field final synthetic blacklist val$fadeOut:Z


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->val$fadeOut:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method
