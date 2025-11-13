.class public final Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBasicLighting:Z

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const-string p1, "EdgeLightNotiEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    return-void
.end method

.method public static final isSupportFrameEffect()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frame_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final hide()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hide : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const-wide/16 v1, 0x258

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final init()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    return-void
.end method

.method public final setImageDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const v1, 0x7f080d25

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final show()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    const-string v0, " Already animating "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->mHandler:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->setImageDrawable()V

    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v1, 0xc8

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    const-string v0, "Basic lighting is not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
