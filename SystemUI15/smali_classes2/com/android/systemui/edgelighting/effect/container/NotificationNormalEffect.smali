.class public Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

.field public mLightingDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xce4

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0xce4

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->hide()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final hideLightingEffect(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    if-eqz v0, :cond_1

    const-string p0, "NotificationNormalEffect"

    const-string p1, "hideLightingEffect infinite Noti Type "

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    iput v2, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->setImageDrawable()V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->hide()V

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    :cond_1
    :goto_0
    iget-wide v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iput-wide v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    :cond_2
    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    :cond_3
    return-void
.end method

.method public setEffectColors([I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    iput p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 v0, 0x1

    aget v0, p0, v0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v2, v0, v1

    const/4 v3, 0x2

    if-gtz v2, :cond_0

    aget v2, p0, v3

    const v4, 0x3f59999a    # 0.85f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    const v0, -0x190503

    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    aget v0, p0, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const v0, -0xc1bcb5

    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    :cond_1
    :goto_0
    aget v0, p0, v3

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    aput v1, p0, v3

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, p0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    aput v0, p0, v3

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    return-void
.end method

.method public final show()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    return-void
.end method

.method public final updateText(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateText(Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;->show()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->hideLightingEffect(J)V

    :cond_2
    return-void
.end method
