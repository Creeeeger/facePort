.class public Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field public mAfterFirstTouch:Z

.field public mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field public final mBackgroundColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public mCheckmarkAnimator:Landroid/animation/ValueAnimator;

.field public final mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

.field public final mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

.field public mCheckmarkScale:F

.field public final mCheckmarkUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

.field public mComplete:Z

.field public final mContext:Landroid/content/Context;

.field public final mEnrollProgress:I

.field public final mEnrollProgressHelp:I

.field public final mEnrollProgressHelpWithTalkback:I

.field public mFillColorAnimator:Landroid/animation/ValueAnimator;

.field public final mFillColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

.field final mFillPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mHelpColor:I

.field public final mIsAccessibilityEnabled:Z

.field public final mMovingTargetFill:I

.field public final mMovingTargetFillError:I

.field public final mOnFirstBucketFailedColor:I

.field public mProgress:F

.field public mProgressAnimator:Landroid/animation/ValueAnimator;

.field public final mProgressColor:I

.field public final mProgressUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

.field public mRemainingSteps:I

.field public final mStrokeWidthPx:F

.field public mTotalSteps:I

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    const/16 v0, 0x42

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/R$styleable;->BiometricsEnrollView:[I

    const v2, 0x7f04009f

    const v3, 0x7f1501fd

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mMovingTargetFill:I

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mMovingTargetFillError:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgress:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgressHelp:I

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgressHelpWithTalkback:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p2, p2

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgress:I

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mMovingTargetFillError:I

    iput v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mOnFirstBucketFailedColor:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgressHelp:I

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mEnrollProgressHelpWithTalkback:I

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    :goto_0
    const v2, 0x7f080e0a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mMovingTargetFill:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mVibrator:Landroid/os/Vibrator;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;I)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;I)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;I)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;I)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_0
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    mul-float v8, v3, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v4, v1

    sub-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final updateState(IIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    if-ne v6, v1, :cond_0

    iget v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    if-ne v6, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p3, :cond_1

    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_3

    iget-boolean v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    iget-object v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "::onEnrollmentHelp"

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v7 .. v12}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    goto :goto_0

    :cond_1
    iget-object v13, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mVibrator:Landroid/os/Vibrator;

    if-eqz v13, :cond_3

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    iget-boolean v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    iget-object v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::onFirstTouchError"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v13 .. v18}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    goto :goto_0

    :cond_2
    if-eq v1, v6, :cond_3

    iget-boolean v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    iget-object v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::OnEnrollmentProgress"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v13 .. v18}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_3
    :goto_0
    iput v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    sub-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    if-eqz v6, :cond_4

    add-int/2addr v2, v5

    :cond_4
    if-eqz v6, :cond_5

    iget v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    add-int/2addr v6, v5

    goto :goto_1

    :cond_5
    iget v6, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    :goto_1
    int-to-float v2, v2

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgress:F

    new-array v8, v3, [F

    aput v7, v8, v4

    aput v2, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x190

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    iput-boolean v5, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    new-array v2, v3, [F

    aput v1, v2, v4

    aput v6, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_9
    if-lez v1, :cond_d

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    iput-boolean v4, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v6, v1

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    new-array v8, v3, [F

    aput v1, v8, v4

    aput v2, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    :goto_3
    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    const-wide/16 v6, 0x15e

    if-nez v1, :cond_f

    if-eqz p3, :cond_f

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_e
    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mOnFirstBucketFailedColor:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_f
    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_10
    if-eqz p3, :cond_11

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    goto :goto_4

    :cond_11
    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    :goto_4
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return-void
.end method
