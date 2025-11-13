.class public final Lcom/android/settings/biometrics/face/AnimationParticle;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAnimationState:I

.field public final mAssignedColor:I

.field public final mBorderWidth:I

.field public final mBounds:Landroid/graphics/Rect;

.field public mCurrentAngle:F

.field public mCurrentSize:F

.field public final mErrorColor:I

.field public final mEvaluator:Landroid/animation/ArgbEvaluator;

.field public final mIndex:I

.field public mLastAnimationState:I

.field public final mListener:Lcom/android/settings/biometrics/face/ParticleCollection$1;

.field public final mOffsetTimeSec:F

.field public final mPaint:Landroid/graphics/Paint;

.field public mRingAdjustRate:F

.field public mRingCompletionTime:F

.field public mRotationSpeed:F

.field public mSweepAngle:F

.field public mSweepRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$1;Landroid/graphics/Rect;ILjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    iput-object p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    const/16 p3, 0x14

    iput p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06016f

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    iput p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mIndex:I

    iput-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$1;

    int-to-float p1, p4

    const/16 p2, 0xc

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p1, p2

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p3, v0

    iput p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    const/high16 p3, 0x3fa00000    # 1.25f

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mOffsetTimeSec:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p4, p2

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method
