.class public Landroid/graphics/drawable/SemRecoilDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SemRecoilDrawable.java"


# static fields
.field private static final blacklist DEFAULT_TINT_COLOR:I = 0x19000000

.field private static final blacklist PRESS_ANIMATION_DURATION:Ljava/lang/Long;

.field private static final blacklist PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist RADIUS_AUTO:I = -0x1

.field private static final blacklist RELEASE_ANIMATION_DURATION:Ljava/lang/Long;

.field private static final blacklist RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mHotspotPointX:F

.field private blacklist mHotspotPointY:F

.field private blacklist mIsActive:Z

.field private blacklist mIsPressed:Z

.field private blacklist mMask:Landroid/graphics/drawable/Drawable;

.field private blacklist mPressDuration:J

.field private blacklist mRadius:I

.field private blacklist mReleaseDuration:J

.field private blacklist mTintColor:I


# direct methods
.method public static synthetic blacklist $r8$lambda$lkRdg7uUmtHp_R81wPMdMJBSSHE(Landroid/graphics/drawable/SemRecoilDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/SemRecoilDrawable;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-class v0, Landroid/graphics/drawable/SemRecoilDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->PRESS_ANIMATION_DURATION:Ljava/lang/Long;

    const-wide/16 v0, 0x15e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->RELEASE_ANIMATION_DURATION:Ljava/lang/Long;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsActive:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsPressed:Z

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->init()V

    return-void
.end method

.method public constructor blacklist <init>(I[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/drawable/SemRecoilDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->init()V

    iput p1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mTintColor:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const v1, 0x102002e

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/SemRecoilDrawable;->setId(II)V

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsActive:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsPressed:Z

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->init()V

    return-void
.end method

.method private blacklist drawHotspot(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mHotspotPointX:F

    iget v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mHotspotPointY:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/SemRecoilDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v1, v3

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getAnimatingTintColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getRadius()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private blacklist getAnimatingTintColor()I
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mTintColor:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mTintColor:I

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    return v1
.end method

.method private blacklist getRadius()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mRadius:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mRadius:I

    int-to-float v0, v0

    return v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    int-to-float v2, v1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    return v2
.end method

.method private blacklist init()V
    .locals 2

    sget-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->PRESS_ANIMATION_DURATION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mPressDuration:J

    sget-object v0, Landroid/graphics/drawable/SemRecoilDrawable;->RELEASE_ANIMATION_DURATION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mReleaseDuration:J

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->initAnimator()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->setPaddingMode(I)V

    return-void
.end method

.method private blacklist initAnimator()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/graphics/drawable/SemRecoilDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/SemRecoilDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/SemRecoilDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private blacklist isDrawHotspot()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getNumberOfLayers()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->setTint()V

    invoke-virtual {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->invalidateSelf()V

    return-void
.end method

.method private blacklist setActive(ZZZ)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz p3, :cond_2

    iput-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsPressed:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->startEnterAnimation(F)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const v0, 0x3f19999a    # 0.6f

    invoke-direct {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->startEnterAnimation(F)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->startEnterAnimation(F)V

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsActive:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->startExitAnimation()V

    :cond_5
    :goto_2
    iput-boolean v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsActive:Z

    iput-boolean p3, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsPressed:Z

    return-void
.end method

.method private blacklist setTint()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getAnimatingTintColor()I

    move-result v0

    const v1, 0x102002e

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/SemRecoilDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/SemRecoilDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->setTint(I)V

    :goto_0
    return-void
.end method

.method private blacklist startEnterAnimation(F)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/graphics/drawable/SemRecoilDrawable;->PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mPressDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist startExitAnimation()V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsPressed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/graphics/drawable/SemRecoilDrawable;->RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mReleaseDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist updateMaskLayer()V
    .locals 2

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method private blacklist updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v2, 0x19000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mTintColor:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mRadius:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/SemRecoilDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    const v3, 0x102002e

    invoke-virtual {p0, v2, v3}, Landroid/graphics/drawable/SemRecoilDrawable;->setId(II)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->isDrawHotspot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/SemRecoilDrawable;->drawHotspot(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->SemRecoil:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Landroid/graphics/drawable/SemRecoilDrawable;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse!!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->updateMaskLayer()V

    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public blacklist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mIsActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->isDrawHotspot()Z

    move-result v0

    return v0
.end method

.method public whitelist isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, p1, v6

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x1

    nop

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v3, v1}, Landroid/graphics/drawable/SemRecoilDrawable;->setActive(ZZZ)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v5

    return v5

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_4
        0x101009d -> :sswitch_3
        0x101009e -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x1010367 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setCancel()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->setState([I)Z

    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setHotspot(FF)V

    iput p1, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mHotspotPointX:F

    iput p2, p0, Landroid/graphics/drawable/SemRecoilDrawable;->mHotspotPointY:F

    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/SemRecoilDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/SemRecoilDrawable;->getAnimatingTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method
