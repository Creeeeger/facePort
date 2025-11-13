.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initBiometricErrorIndicationAnimationValue$1()V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initBiometricErrorIndicationAnimationValue$1()V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v2, 0x3f47ae14    # 0.78f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {v2, v4, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v2, v4, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    invoke-direct {v2, v4, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->needsToChangeRetryButton()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v6}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibration:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/keyguard/SecLockIconView;->showBiometricErrorAnimation(Ljava/lang/Object;FLcom/android/systemui/vibrate/VibrationUtil;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibration:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/keyguard/SecLockIconView;->showBiometricErrorAnimation(Ljava/lang/Object;FLcom/android/systemui/vibrate/VibrationUtil;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibration:Lcom/android/systemui/vibrate/VibrationUtil;

    :cond_2
    :goto_1
    return-void
.end method
