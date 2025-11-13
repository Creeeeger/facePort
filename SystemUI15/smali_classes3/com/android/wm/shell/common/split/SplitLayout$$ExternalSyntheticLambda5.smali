.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$1:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$3:F

    iput p5, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$5:F

    iput p7, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$6:F

    iput p8, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$7:F

    iput p9, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$8:F

    iput-object p10, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$9:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$1:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$3:F

    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$4:F

    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$5:F

    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$6:F

    iget v7, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$7:F

    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$8:F

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;->f$9:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v3, p1

    add-float/2addr v3, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v4, p1

    add-float/2addr v4, v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v5, p1

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v6, p1

    add-float/2addr v6, v2

    float-to-int v2, v6

    const/4 v6, 0x0

    cmpl-float v9, v7, v6

    if-nez v9, :cond_1

    cmpl-float v6, v8, v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v1, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    mul-float/2addr v7, p1

    float-to-int v6, v7

    mul-float/2addr p1, v8

    float-to-int p1, p1

    int-to-float v7, v6

    add-float/2addr v3, v7

    int-to-float v7, p1

    add-float/2addr v4, v7

    invoke-virtual {p0, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    neg-int v3, v6

    neg-int p1, p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1
    return-void
.end method
