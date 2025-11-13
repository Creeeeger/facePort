.class public final Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->val$index:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->val$index:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput-boolean v3, v1, v2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aget-boolean v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    aget-boolean v1, v1, v3

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 29
    .line 30
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :goto_0
    const-string p0, "BSS_FaceEnrollActivity"

    .line 40
    .line 41
    const-string p1, "onAnimationEnd skip"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
