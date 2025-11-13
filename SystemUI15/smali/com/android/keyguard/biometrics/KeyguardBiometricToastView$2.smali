.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public final synthetic val$assetName:Ljava/lang/String;

.field public final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Ljava/lang/String;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$assetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$assetName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    const-string v3, "Icon view is null"

    const-string v4, "KeyguardBiometricToastView"

    if-nez v1, :cond_1

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAssetName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAssetName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v5, "**"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v6, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v7, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v8, 0x7f06005f

    invoke-virtual {p1, v8, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v7, p1}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->scaleIconAnim(FF)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_4

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    if-eqz v0, :cond_5

    const/16 v3, 0x72

    invoke-virtual {v0, v3}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    iput-object v2, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    :cond_6
    return-void
.end method
