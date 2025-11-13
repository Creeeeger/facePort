.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$9:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$2:F

    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$3:F

    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$5:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$6:F

    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$7:F

    iput-object p7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$8:Landroid/view/SurfaceControl$Transaction;

    iput-object p8, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$9:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$2:F

    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$3:F

    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$4:F

    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$5:F

    iget v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$6:F

    iget v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$7:F

    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$8:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda1;->f$9:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v2, p1

    add-float/2addr v2, v9

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v3, p1

    add-float/2addr v3, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, p1

    add-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v5, p1

    add-float/2addr v5, v1

    float-to-int v1, v5

    const/4 v5, 0x0

    cmpl-float v9, v6, v5

    if-nez v9, :cond_1

    cmpl-float v5, v7, v5

    if-nez v5, :cond_1

    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    mul-float/2addr v6, p1

    float-to-int v5, v6

    mul-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float v6, v5

    add-float/2addr v2, v6

    int-to-float v6, p1

    add-float/2addr v3, v6

    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    neg-int v1, v5

    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v8, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1
    return-void
.end method
