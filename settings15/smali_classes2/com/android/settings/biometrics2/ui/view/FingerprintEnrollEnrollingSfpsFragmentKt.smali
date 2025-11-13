.class public abstract Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final applyLottieDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, ".blue100"

    const-string v2, "**"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;-><init>(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance p2, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {p1, v0, v1, p2}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    return-void
.end method
