.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

.field public mMaxFrame:I

.field public mPercent:F

.field public mSuccessImageView:Landroid/widget/ImageView;

.field public mTempPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 3
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 7
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 11
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final destroyDrawingCache()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 13
    .line 14
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    const/4 p2, -0x1

    .line 17
    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const v0, 0x7f0b0006

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mMaxFrame:I

    .line 32
    .line 33
    new-instance p2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    .line 42
    const-string v0, "fingerprint_registration_progress.json"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Landroid/widget/ImageView;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    .line 65
    .line 66
    const v0, 0x7f0800a0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f01001a

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string p1, "context or attrs is null."

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public setFingerStatus(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    add-float/2addr v0, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v2, p1, v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/high16 v2, 0x40a00000    # 5.0f

    .line 19
    .line 20
    add-float/2addr v0, v2

    .line 21
    :cond_1
    const/high16 v2, 0x42a00000    # 80.0f

    .line 22
    .line 23
    cmpg-float v3, p1, v2

    .line 24
    .line 25
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-gez v3, :cond_2

    .line 28
    .line 29
    cmpl-float v3, v0, v2

    .line 30
    .line 31
    if-ltz v3, :cond_2

    .line 32
    .line 33
    :goto_0
    add-float/2addr p1, v2

    .line 34
    div-float v0, p1, v4

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/high16 v2, 0x42c80000    # 100.0f

    .line 38
    .line 39
    cmpg-float v3, p1, v2

    .line 40
    .line 41
    if-gez v3, :cond_3

    .line 42
    .line 43
    cmpl-float v3, v0, v2

    .line 44
    .line 45
    if-ltz v3, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 55
    .line 56
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    .line 57
    .line 58
    .line 59
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    .line 60
    .line 61
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public setPercent(F)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    return-void
.end method

.method public final setPercent(FZZ)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    .line 3
    iget p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    move v0, p1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    iget p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    cmpl-float v2, p3, v0

    if-lez v2, :cond_3

    move v0, p3

    :cond_3
    cmpl-float p3, v0, p1

    if-lez p3, :cond_4

    return-void

    :cond_4
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    move p3, p1

    .line 7
    :goto_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mMaxFrame:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    float-to-int p3, v1

    if-le v0, p3, :cond_5

    return-void

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    add-int/2addr v0, p3

    if-lez v0, :cond_6

    .line 9
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_6
    if-eqz p2, :cond_7

    .line 10
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    :cond_7
    :goto_1
    return-void
.end method
