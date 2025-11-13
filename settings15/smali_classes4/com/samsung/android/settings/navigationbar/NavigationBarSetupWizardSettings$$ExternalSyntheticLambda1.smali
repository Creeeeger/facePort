.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget v0, v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationValues:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-le v0, v3, :cond_2

    const/4 v3, 0x2

    aget v4, v1, v3

    if-lt v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v4, v1, v2

    if-gt v0, v4, :cond_1

    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    if-eq v2, v3, :cond_4

    aget v1, v1, v3

    if-gt v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateDescription(I)V

    :cond_4
    :goto_2
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    return-void
.end method
