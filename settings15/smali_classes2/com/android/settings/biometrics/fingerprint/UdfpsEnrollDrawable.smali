.class public final Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAlpha:I

.field public final mBlueFill:Landroid/graphics/Paint;

.field public mCurrentScale:F

.field public mCurrentX:F

.field public mCurrentY:F

.field public mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

.field public final mEnrollIcon:I

.field public final mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public final mMovingTargetFill:I

.field public final mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field public final mSensorOutlinePaint:Landroid/graphics/Paint;

.field public mSensorRect:Landroid/graphics/RectF;

.field public mShouldShowEdgeHint:Z

.field public mShouldShowTipHint:Z

.field public mSkipDraw:Z

.field public final mTargetAnimListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$1;

.field public mTargetAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentScale:F

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140a30

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/PathShape;

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    const/high16 v4, 0x42900000    # 72.0f

    invoke-direct {v3, v1, v4, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    sget-object v1, Lcom/android/settings/R$styleable;->BiometricsEnrollView:[I

    const v3, 0x7f04009f

    const v4, 0x7f1501fd

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollIcon:I

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0803e7

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollIcon:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollIcon:I

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->setAlpha(I)V

    new-instance p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mTargetAnimListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable$1;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentX:F

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mCurrentScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mAlpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final updateTipHintVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v3, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v1

    if-lt v2, v1, :cond_1

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v0

    if-ge v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    if-ne v0, v3, :cond_2

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    return-void
.end method
