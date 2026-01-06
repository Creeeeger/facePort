.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static final ENROLL_TYPE_SWIPE:I = 0x2

.field private static final ENROLL_TYPE_TOUCH:I = 0x0

.field private static final ENROLL_TYPE_TOUCH_EXPAND:I = 0x1

.field private static final ENROLL_TYPE_WIN:I = 0x3

.field public static final FINGER_DETECTED:I = 0x1

.field public static final FINGER_REMOVED:I = 0x0

.field private static final JSON_KEY_NAME_PROGRESS_LINE:Ljava/lang/String; = "gray_fingerprint"

.field private static final JSON_KEY_NAME_PROGRESS_MOTION:Ljava/lang/String; = "green_line_motion"

.field private static mFrameTable:[I

.field private static mPercentTable:[I


# instance fields
.field private mBackupPercent:F

.field private mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContext:Landroid/content/Context;

.field public mEnrollSuccessCount:I

.field private mEnrollType:I

.field private mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHeight:I

.field public mIsSupportCenterVi:Z

.field private mPercent:F

.field private mSuccessImageView:Landroid/widget/ImageView;

.field private mTempPercent:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mHeight:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mHeight:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mHeight:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method public static getConvertedPercent(I)I
    .locals 9

    const/16 v0, 0x50

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x32

    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    add-int/lit8 v3, v0, 0x50

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    add-int v5, p0, v0

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    sub-double/2addr v5, v1

    sub-double v7, v3, v1

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    if-lez p0, :cond_1

    div-int/lit8 v6, p0, 0x8

    rsub-int/lit8 v6, v6, 0x9

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v5, v6

    return v5
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDisplaySensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mIsSupportCenterVi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercentTable:[I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_SWIPE_ENROLL:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context or attrs is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPercent(FZZ)V
    .locals 11

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    move v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    move v0, p1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_3

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    :cond_3
    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    move v0, v1

    :goto_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v5, 0x2

    const/high16 v6, 0x42c80000    # 100.0f

    if-ne v1, v5, :cond_5

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    div-float/2addr v5, v6

    float-to-int v3, v5

    int-to-float v5, v1

    mul-float/2addr v5, v2

    div-float/2addr v5, v6

    float-to-int v1, v5

    goto/16 :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercentTable:[I

    array-length v7, v5

    const/4 v8, 0x0

    if-ge v1, v7, :cond_7

    aget v5, v5, v1

    int-to-float v7, v5

    cmpl-float v7, v7, v0

    if-lez v7, :cond_6

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-object v9, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    aget v9, v9, v7

    int-to-float v9, v9

    mul-float/2addr v9, v0

    sget-object v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercentTable:[I

    aget v10, v10, v7

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v3, v9

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    aget v1, v1, v8

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercentTable:[I

    aget v5, v5, v8

    int-to-float v5, v5

    div-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_3
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercentTable:[I

    array-length v7, v5

    if-ge v1, v7, :cond_c

    aget v7, v5, v1

    cmpl-float v9, v2, v6

    if-ltz v9, :cond_9

    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget v4, v5, v9

    goto :goto_5

    :cond_9
    int-to-float v9, v7

    cmpl-float v9, v9, v2

    if-lez v9, :cond_b

    if-gtz v1, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v1, -0x1

    :goto_4
    move v6, v8

    sget-object v8, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFrameTable:[I

    aget v8, v8, v6

    int-to-float v8, v8

    mul-float/2addr v8, v2

    aget v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v8, v5

    float-to-int v4, v8

    move v1, v4

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    move v1, v4

    :goto_6
    if-le v3, v1, :cond_d

    return-void

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    if-eqz p2, :cond_e

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBackupPercent:F

    :cond_e
    return-void
.end method


# virtual methods
.method public addEffectView(II)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mWidth:I

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mHeight:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_registration_progress_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "green_line_motion"

    const v5, 0x7f060067

    const-string v6, "gray_fingerprint"

    const v7, 0x7f060066

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-static {v3, v8, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->setLottieViewColorFilter(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-static {v3, v8, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->setLottieViewColorFilter(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mIsSupportCenterVi:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    if-ge v3, v2, :cond_6

    new-instance v3, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v8, "fingerprint_registration_blinking_light.json"

    invoke-virtual {v3, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v3, v7, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->setLottieViewColorFilter(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v3, v1, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->setLottieViewColorFilter(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->showEnrollCenterGuideVI(Z)V

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setLayoutDirection(I)V

    return-void
.end method

.method public destroyDrawingCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->removeAllViews()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    return-void
.end method

.method public setCompleteImage()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mWidth:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    if-eq v2, v3, :cond_5

    :cond_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    :cond_2
    cmpg-float v4, v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-gez v4, :cond_3

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_3

    add-float/2addr v0, v1

    div-float v3, v0, v5

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v4, v0, v1

    if-gez v4, :cond_4

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_4

    add-float/2addr v0, v1

    div-float v3, v0, v5

    :cond_4
    :goto_0
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    invoke-direct {p0, v3, v2, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mPercent:F

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mTempPercent:F

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mIsSupportCenterVi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBackupPercent:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(FZZ)V

    return-void
.end method

.method public showEnrollCenterGuideVI(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mBlinkingLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
