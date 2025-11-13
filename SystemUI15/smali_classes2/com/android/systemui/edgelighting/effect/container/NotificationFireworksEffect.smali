.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method


# virtual methods
.method public final dismissToastPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final finishToastPopupAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->init()V

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "Edge_Fireworks.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setZ(F)V

    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->requestHideEffectView()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->setEffectColors([I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v2, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v2, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_0
    return-void
.end method

.method public final update()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->update()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;->mFireworksEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
