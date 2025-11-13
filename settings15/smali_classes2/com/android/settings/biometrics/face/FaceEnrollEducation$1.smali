.class public final Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const p1, 0x7f14299e

    goto :goto_0

    :cond_0
    const p1, 0x7f14299d

    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    sget v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->$r8$clinit:I

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-boolean v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p2, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    iget-object p2, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p2, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-boolean v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f13001d

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object p1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    goto :goto_2

    :cond_3
    iget-object v1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v1, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :goto_2
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
