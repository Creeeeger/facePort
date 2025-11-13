.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
