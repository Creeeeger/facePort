.class public Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0598

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "bottom"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lockscreenAffordance_light.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lockscreenAffordance_dark.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    const-string p1, "bottom"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p1, "lockscreenAffordance_light.json"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->mContinuityLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p1, "lockscreenAffordance_dark.json"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
