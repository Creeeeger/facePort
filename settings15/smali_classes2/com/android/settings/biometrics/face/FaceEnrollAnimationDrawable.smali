.class public final Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field public final mAnimationListener:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;

.field public mBounds:Landroid/graphics/Rect;

.field public final mCircleCutoutPaint:Landroid/graphics/Paint;

.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field public mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

.field public final mSquarePaint:Landroid/graphics/Paint;

.field public mTimeAnimator:Landroid/animation/TimeAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mAnimationListener:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    iget v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v3, 0x4

    iget v4, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    sub-float/2addr v3, v2

    int-to-float v2, v4

    sub-float/2addr v3, v2

    iget-object v4, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v5, v4

    sub-float/2addr v5, v2

    iget-object v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget v4, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    iget-object v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v4, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v5, v4

    add-float/2addr v5, v2

    iget v2, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object v1, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v4

    iget-object v5, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    iget-object v6, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    invoke-direct {v2, v3, v3, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iget v4, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, v1, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/settings/biometrics/face/ParticleCollection;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mAnimationListener:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/biometrics/face/ParticleCollection;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-nez p1, :cond_0

    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onEnrollmentProgressChange(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/face/ParticleCollection;->onEnrollmentProgressChange(II)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
