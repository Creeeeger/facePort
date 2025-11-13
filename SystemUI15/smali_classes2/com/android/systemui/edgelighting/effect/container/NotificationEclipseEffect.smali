.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final dismissToastPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final finishToastPopupAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    return-void
.end method

.method public final init()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "Edge_Eclipse_small.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setZ(F)V

    return-void
.end method

.method public final requestHideEffectView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
