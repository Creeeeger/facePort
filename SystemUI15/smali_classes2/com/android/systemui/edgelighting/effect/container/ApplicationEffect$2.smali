.class public final Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

.field public final synthetic val$to:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->val$to:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->val$to:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hide : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->onFinishAnimation()V

    :cond_4
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
