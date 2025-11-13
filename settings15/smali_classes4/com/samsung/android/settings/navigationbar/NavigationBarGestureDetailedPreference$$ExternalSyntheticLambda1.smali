.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget v0, v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationValues:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-le v0, v3, :cond_2

    const/4 v3, 0x2

    aget v5, v1, v3

    if-lt v0, v5, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v1, v4

    if-gt v0, v2, :cond_1

    iput v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    if-eq v2, v3, :cond_4

    aget v1, v1, v3

    if-gt v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iput-boolean v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    :cond_4
    :goto_2
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    return-void
.end method
