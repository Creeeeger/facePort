.class public Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mDotPaint:Landroid/graphics/Paint;

.field public final mDotRadius:I

.field public final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public final mFractionCenterX:F

.field public final mFractionCenterY:F

.field public final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public final mMaxPulseRadius:I

.field public final mPulsePaint:Landroid/graphics/Paint;

.field public mPulseRadius:F

.field public mRadiusAnimator:Landroid/animation/ValueAnimator;

.field public final mStartPhaseRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    const v1, 0x1010435

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getCenterX()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getCenterY()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    mul-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final pauseAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    return-void
.end method

.method public final startAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method public final startPhase()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    int-to-float v3, v3

    const/4 v4, 0x0

    new-array v5, v2, [F

    aput v4, v5, v1

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    const/16 v3, 0x26

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method public final stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
