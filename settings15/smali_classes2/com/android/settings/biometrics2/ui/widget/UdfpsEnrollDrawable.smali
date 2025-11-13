.class public final Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAccessibilityEnabled:Z

.field public mAlpha:I

.field public final mBlueFill:Landroid/graphics/Paint;

.field public mCenterTouchCount:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentScale:F

.field public mCurrentX:F

.field public mCurrentY:F

.field public final mEnrollIcon:I

.field public final mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mGuidedEnrollmentPoints:Ljava/util/List;

.field public mLocationsEnrolled:I

.field public final mMovingTargetFill:I

.field public final mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field public mRemainingSteps:I

.field public final mSensorOutlinePaint:Landroid/graphics/Paint;

.field public mSensorRect:Landroid/graphics/RectF;

.field public mShouldShowEdgeHint:Z

.field public mShouldShowTipHint:Z

.field public mSkipDraw:Z

.field public final mTargetAnimListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$1;

.field public mTargetAnimatorSet:Landroid/animation/AnimatorSet;

.field public mTotalSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentScale:F

    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    iput v2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    iput v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mLocationsEnrolled:I

    iput v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCenterTouchCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140a30

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/PathShape;

    invoke-static {v2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    const/high16 v5, 0x42900000    # 72.0f

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    sget-object v2, Lcom/android/settings/R$styleable;->BiometricsEnrollView:[I

    const v4, 0x7f04009f

    const v5, 0x7f1501fd

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mEnrollIcon:I

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v5, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFill:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0803e7

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mEnrollIcon:I

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mEnrollIcon:I

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    const/16 p2, 0xff

    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->setAlpha(I)V

    new-instance p2, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$1;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;)V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTargetAnimListener:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable$1;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAccessibilityEnabled:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mGuidedEnrollmentPoints:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, -0x2

    const-string v2, "com.android.systemui.biometrics.UdfpsNewCoords"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "UdfpsAnimationEnroll"

    if-eqz p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Using new coordinates"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/PointF;

    const v1, -0x41e66666    # -0.15f

    mul-float/2addr v1, p0

    const v2, -0x407d70a4    # -1.02f

    mul-float/2addr v2, p0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v2, 0x3f828f5c    # 1.02f

    mul-float/2addr v2, p0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v1, 0x3e947ae1    # 0.29f

    mul-float/2addr v1, p0

    mul-float/2addr v0, p0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v1, 0x400ae148    # 2.17f

    mul-float/2addr v1, p0

    const v2, -0x3fe9999a    # -2.35f

    mul-float/2addr v2, p0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v2, 0x3f88f5c3    # 1.07f

    mul-float/2addr v2, p0

    const v3, -0x3f828f5c    # -3.96f

    mul-float/2addr v3, p0

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v3, -0x41428f5c    # -0.37f

    mul-float/2addr v3, p0

    const v4, -0x3f76147b    # -4.31f

    mul-float/2addr v4, p0

    invoke-direct {p1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v4, -0x4027ae14    # -1.69f

    mul-float/2addr v4, p0

    const v5, -0x3fad70a4    # -3.29f

    mul-float/2addr v5, p0

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v5, -0x3fe147ae    # -2.48f

    mul-float/2addr v5, p0

    const v6, -0x40628f5c    # -1.23f

    mul-float/2addr v6, p0

    invoke-direct {p1, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v6, 0x3f9d70a4    # 1.23f

    mul-float/2addr v6, p0

    invoke-direct {p1, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v5, 0x40528f5c    # 3.29f

    mul-float/2addr v5, p0

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v4, 0x4089eb85    # 4.31f

    mul-float/2addr v4, p0

    invoke-direct {p1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v3, 0x407d70a4    # 3.96f

    mul-float/2addr v3, p0

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v2, 0x40166666    # 2.35f

    mul-float/2addr v2, p0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v1, 0x40251eb8    # 2.58f

    mul-float/2addr p0, v1

    invoke-direct {p1, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string p1, "Using old coordinates"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    mul-float/2addr v0, p0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, p0

    const v1, -0x3fd33333    # -2.7f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x4019999a    # -1.8f

    mul-float/2addr v0, p0

    const v1, -0x405851ec    # -1.31f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v1, 0x3fa7ae14    # 1.31f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3f6147ae    # 0.88f

    mul-float/2addr v0, p0

    const v1, 0x402ccccd    # 2.7f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x407c28f6    # 3.94f

    mul-float/2addr v0, p0

    const v1, -0x407851ec    # -1.06f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x4039999a    # 2.9f

    mul-float/2addr v0, p0

    const v1, -0x3f7b851f    # -4.14f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x40fae148    # -0.52f

    mul-float/2addr v0, p0

    const v1, -0x3f41999a    # -5.95f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3faae148    # -3.33f

    mul-float/2addr v0, p0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3f80a3d7    # -3.99f

    mul-float/2addr v0, p0

    const v1, -0x414ccccd    # -0.35f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3f9851ec    # -3.62f

    mul-float/2addr v0, p0

    const v1, 0x40228f5c    # 2.54f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x404147ae    # -1.49f

    mul-float/2addr v0, p0

    const v1, 0x40b23d71    # 5.57f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x40128f5c    # 2.29f

    mul-float/2addr v0, p0

    const v1, 0x409d70a4    # 4.92f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x40747ae1    # 3.82f

    mul-float/2addr v0, p0

    const v1, 0x3fe3d70a    # 1.78f

    mul-float/2addr p0, v1

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->isCenterEnrollmentStage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentX:F

    iget v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mCurrentScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAlpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStageThresholdSteps(II)I
    .locals 0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final isCenterEnrollmentStage()Z
    .locals 4

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result p0

    if-ge v2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

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

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mRemainingSteps:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result v0

    if-lt v2, v0, :cond_1

    iget v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mTotalSteps:I

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->getStageThresholdSteps(II)I

    move-result v0

    if-ge v2, v0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    return-void
.end method
