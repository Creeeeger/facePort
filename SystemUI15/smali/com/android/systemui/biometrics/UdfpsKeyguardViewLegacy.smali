.class public Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mAnimationType:I

.field public mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBackgroundInAnimator:Landroid/animation/AnimatorSet;

.field public mBgProtection:Landroid/widget/ImageView;

.field public final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

.field public mFullyInflated:Z

.field public mInterpolatedDarkAmount:F

.field public final mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

.field public mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mMaxBurnInOffsetX:I

.field public final mMaxBurnInOffsetY:I

.field public mScaleFactor:F

.field public final mSensorBounds:Landroid/graphics/Rect;

.field public mTextColorPrimary:I

.field public mUdfpsRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;)V

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07176b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07176c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    return-void
.end method


# virtual methods
.method public final calculateAlpha()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    return p0
.end method

.method public final dozeTimeTick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateBurnInOffsets()V

    const/4 p0, 0x1

    return p0
.end method

.method public final getDrawable()Lcom/android/systemui/biometrics/UdfpsFpDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-object p0
.end method

.method public final onDozeAmountChanged(FI)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    return-void
.end method

.method public final onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public final updateAlpha()I
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateBurnInOffsets()V

    return v0
.end method

.method public final updateBurnInOffsets()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    :goto_0
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    mul-int/2addr v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v3

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetX:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    mul-int/2addr v6, v1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v6

    iget v8, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mMaxBurnInOffsetY:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-static {v5, v6, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInProgressOffset()F

    move-result v8

    invoke-static {v5, v8, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    if-ne v9, v4, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-nez v9, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    sub-float v9, v2, v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    sub-float v9, v2, v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    sub-float v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    if-ne v0, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_4

    cmpl-float v3, v3, v2

    if-nez v3, :cond_5

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v7

    :goto_2
    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v7

    :goto_3
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    iput v7, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    :cond_8
    return-void
.end method

.method public final updateColor()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x11200b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mTextColorPrimary:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x11200cb

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    return-void
.end method

.method public final updatePadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070751

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
