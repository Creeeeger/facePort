.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerView$5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerView$5;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v12, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method
