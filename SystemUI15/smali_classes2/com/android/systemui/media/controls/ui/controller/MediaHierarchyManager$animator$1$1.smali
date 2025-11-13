.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    sget v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateTargetState()V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget p1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iput p1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-gtz v1, :cond_1

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    goto :goto_1

    :cond_1
    sub-float/2addr p1, v0

    div-float v2, p1, v0

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_2
    iget v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartAlpha:F

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3, p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    const/4 v5, 0x4

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    return-void
.end method
