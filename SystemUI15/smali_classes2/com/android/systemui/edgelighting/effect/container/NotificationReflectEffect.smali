.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final init()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    iput v0, v2, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    iput v0, p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public final setIsMultiResolutionSupoorted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->startAnimation()V

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    return-void
.end method

.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v7, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;->mReflectEffectView:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->startAnimation()V

    :cond_1
    return-void
.end method
