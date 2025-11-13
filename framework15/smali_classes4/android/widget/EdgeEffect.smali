.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$EdgeEffectType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANGLE:D = 0.5235987755982988

.field private static final greylist-max-o COS:F

.field private static final blacklist DAMPING_RATIO:D = 0.98

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field private static final blacklist EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final blacklist EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final blacklist EDGE_GLOW_COLOR_DARK:Ljava/lang/String; = "#fafafa"

.field private static final blacklist EDGE_GLOW_COLOR_LIGHT:Ljava/lang/String; = "#000000"

.field private static final blacklist EDGE_MAX_ALPAH_DARK:F = 0.08f

.field private static final blacklist EDGE_MAX_ALPAH_LIGHT:F = 0.05f

.field private static final blacklist EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final blacklist EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final greylist-max-o EPSILON:F = 0.001f

.field private static final blacklist EXP_STRETCH_INTENSITY:F = 0.016f

.field private static final greylist-max-o GLOW_ALPHA_START:F = 0.09f

.field private static final blacklist LINEAR_DISTANCE_TAKE_OVER:D = 8.0

.field private static final blacklist LINEAR_STRETCH_INTENSITY:F = 0.016f

.field private static final blacklist LINEAR_VELOCITY_TAKE_OVER:F = 200.0f

.field private static final greylist-max-o MAX_ALPHA:F = 0.15f

.field private static final greylist-max-o MAX_GLOW_SCALE:F = 2.0f

.field private static final greylist-max-o MAX_VELOCITY:I = 0x2710

.field private static final greylist-max-o MIN_VELOCITY:I = 0x64

.field private static final blacklist MSG_CALL_ONRELEASE:I = 0x1

.field private static final blacklist NATURAL_FREQUENCY:D = 24.657

.field private static final blacklist ON_ABSORB_VELOCITY_ADJUSTMENT:F = 2.0f

.field private static final greylist-max-o PULL_DECAY_TIME:I = 0x7d0

.field private static final greylist-max-o PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final greylist-max-o PULL_GLOW_BEGIN:F = 0.0f

.field private static final greylist-max-o PULL_TIME:I = 0xa7

.field private static final greylist-max-o RADIUS_FACTOR:F = 0.6f

.field private static final greylist-max-o RECEDE_TIME:I = 0x258

.field private static final blacklist SCROLL_DIST_AFFECTED_BY_EXP_STRETCH:F = 0.33f

.field private static final blacklist SEM_APPEAR_TIME:I = 0xfa

.field private static final blacklist SEM_KEEP_TIME:I = 0x0

.field private static final blacklist SEM_RECEDE_TIME:I = 0x1c2

.field private static final blacklist SEM_STATE_APPEAR:I = 0x5

.field private static final blacklist SEM_STATE_KEEP:I = 0x6

.field private static final greylist-max-o SIN:F

.field private static final greylist-max-o STATE_ABSORB:I = 0x2

.field private static final greylist-max-o STATE_IDLE:I = 0x0

.field private static final greylist-max-o STATE_PULL:I = 0x1

.field private static final greylist-max-o STATE_PULL_DECAY:I = 0x4

.field private static final greylist-max-o STATE_RECEDE:I = 0x3

.field private static final blacklist TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final blacklist TYPE_GLOW:I = 0x0

.field private static final blacklist TYPE_NONE:I = -0x1

.field private static final blacklist TYPE_STRETCH:I = 0x1

.field public static final blacklist USE_STRETCH_EDGE_EFFECT_BY_DEFAULT:J = 0xa34bbc0L

.field private static final blacklist VALUE_THRESHOLD:D = 0.001

.field private static final greylist-max-o VELOCITY_GLOW_FACTOR:I = 0x6

.field private static final blacklist VELOCITY_THRESHOLD:D = 0.01


# instance fields
.field private greylist-max-o mBaseGlowScale:F

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDisplacement:F

.field private blacklist mDistance:F

.field private greylist-max-o mDuration:F

.field private blacklist mEdgeEffectType:I

.field private blacklist mForceCallOnRelease:Ljava/lang/Runnable;

.field private greylist-max-o mGlowAlpha:F

.field private greylist-max-o mGlowAlphaFinish:F

.field private greylist-max-o mGlowAlphaStart:F

.field private greylist-max-r mGlowScaleY:F

.field private greylist-max-o mGlowScaleYFinish:F

.field private greylist-max-o mGlowScaleYStart:F

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHeight:F

.field private blacklist mHostView:Landroid/view/View;

.field private final greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-p mPaint:Landroid/graphics/Paint;

.field private final blacklist mPath:Landroid/graphics/Path;

.field private greylist-max-o mPullDistance:F

.field private greylist-max-o mRadius:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetDisplacement:F

.field private blacklist mTempDeltaDistance:F

.field private blacklist mTempDisplacement:F

.field private blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private blacklist mTmpPoints:[F

.field private blacklist mVelocity:F

.field private blacklist mWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/EdgeEffect;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDeltaDistance(Landroid/widget/EdgeEffect;)F
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDisplacement(Landroid/widget/EdgeEffect;)F
    .locals 0

    iget p0, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/widget/EdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/EdgeEffect$1;-><init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/EdgeEffect$2;

    invoke-direct {v1, p0}, Landroid/widget/EdgeEffect$2;-><init>(Landroid/widget/EdgeEffect;)V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, -0x99999a

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const-wide/32 v3, 0xa34bbc0

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private blacklist calculateDistanceFromGlowValues(FF)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr v1, v0

    const v0, 0x3fb6db6e

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1

    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    div-float v0, p2, v0

    return v0
.end method

.method private blacklist calculateEdgeEffectMargin(I)F
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fc16872b020c49cL    # 0.136

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private blacklist dampStretchVector(F)F
    .locals 9

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c83126f    # 0.016f

    mul-float/2addr v2, v1

    const-wide v3, 0x402079748cecfc47L    # 8.237217334679498

    neg-float v5, v1

    float-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    const-wide v5, 0x3f90624de0000000L    # 0.01600000075995922

    mul-double/2addr v7, v5

    float-to-double v5, v2

    add-double/2addr v5, v7

    double-to-float v5, v5

    mul-float/2addr v5, v0

    return v5
.end method

.method private blacklist getCurrentEdgeEffectBehavior()I
    .locals 1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return v0
.end method

.method private blacklist isAtEquilibrium()Z
    .locals 8

    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method private blacklist isEdgeEffectRunning()Z
    .locals 2

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist max(FFFF)F
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private blacklist min(FFFF)F
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private greylist-max-o update()V
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-direct {p0, v4, v5}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_2
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateSpring()V
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    cmpg-float v4, v4, v5

    const/4 v6, 0x0

    if-gtz v4, :cond_2

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_2

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    mul-float/2addr v5, v3

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    iput v6, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v6, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_0

    :cond_1
    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    :goto_0
    return-void

    :cond_2
    const-wide v4, 0x3fa4467381d7dc00L    # 0.03960000000000008

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v7, 0x4038a83126e978d5L    # 24.657

    mul-double/2addr v4, v7

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v8, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v4

    iget v11, v0, Landroid/widget/EdgeEffect;->mDistance:F

    float-to-double v11, v11

    const-wide v13, 0x403829f2ba9d1f60L    # 24.16386

    mul-double/2addr v11, v13

    iget v13, v0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-double v13, v13

    mul-double/2addr v11, v13

    iget v13, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    float-to-double v11, v3

    const-wide v13, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v11, v13

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    float-to-double v13, v3

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    move-wide/from16 v19, v7

    float-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v9

    add-double/2addr v13, v6

    mul-double/2addr v11, v13

    const-wide v6, -0x3fc757ced916872bL    # -24.657

    mul-double/2addr v6, v11

    const-wide v13, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v6, v13

    float-to-double v13, v3

    const-wide v15, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v13, v15

    move-wide v15, v1

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    neg-double v13, v4

    mul-double v13, v13, v19

    move-wide/from16 v17, v11

    float-to-double v11, v3

    mul-double/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v13, v11

    mul-double v11, v4, v9

    move-wide/from16 v21, v9

    float-to-double v8, v3

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v11, v8

    add-double/2addr v13, v11

    mul-double/2addr v1, v13

    add-double/2addr v6, v1

    move-wide/from16 v11, v17

    double-to-float v1, v11

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    double-to-float v1, v6

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v2

    if-eqz v2, :cond_4

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v10, v11

    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v11, v12

    invoke-virtual {v1, v4, v11, v9, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v11, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v4, v11

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    iget v14, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v12, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v16, v2

    move v1, v7

    goto/16 :goto_2

    :cond_0
    if-ne v2, v5, :cond_6

    instance-of v8, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v8, :cond_6

    iget v8, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v8, v3, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->updateSpring()V

    :cond_1
    iget v8, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Landroid/graphics/RecordingCanvas;

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_2

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v9, 0xc

    new-array v9, v9, [F

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    :cond_2
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v6

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v5

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v11, 0x2

    aput v10, v9, v11

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v3

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v12, 0x4

    aput v10, v9, v12

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v13, 0x5

    aput v10, v9, v13

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/4 v10, 0x6

    aput v7, v9, v10

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v14, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v15, 0x7

    aput v14, v9, v15

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    iget v4, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v14, v4

    const/16 v4, 0x8

    aput v14, v9, v4

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v14, 0x9

    aput v7, v9, v14

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v7, v0, Landroid/widget/EdgeEffect;->mWidth:F

    iget v14, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v7, v14

    const/16 v14, 0xa

    aput v7, v9, v14

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v9, v0, Landroid/widget/EdgeEffect;->mHeight:F

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v9, v4

    const/16 v4, 0xb

    aput v9, v7, v4

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v8, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v9

    int-to-float v9, v9

    iget-object v4, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v4, v4, v6

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v11

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v10

    invoke-direct {v0, v4, v14, v11, v12}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v4

    add-float/2addr v9, v4

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v5

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v3

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v13

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v15

    invoke-direct {v0, v11, v12, v14, v13}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v11

    add-float/2addr v4, v11

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v6

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v19, 0x4

    aget v14, v14, v19

    iget-object v6, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v6, v6, v10

    invoke-direct {v0, v12, v13, v14, v6}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v6

    add-float/2addr v11, v6

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, v5

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v3

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/4 v14, 0x5

    aget v13, v13, v14

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v15

    invoke-direct {v0, v10, v12, v13, v14}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v10

    add-float/2addr v6, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v12, 0xa

    aget v10, v10, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v13, 0x8

    aget v12, v12, v13

    sub-float/2addr v10, v12

    sub-float v12, v11, v9

    div-float v13, v10, v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-direct {v0, v13}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v13

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v18, 0xb

    aget v15, v15, v18

    iget-object v5, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v17, 0x9

    aget v5, v5, v17

    sub-float/2addr v15, v5

    sub-float v5, v6, v4

    div-float v3, v15, v5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v1

    invoke-static {v13}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    cmpl-float v14, v11, v9

    if-lez v14, :cond_4

    cmpl-float v14, v6, v4

    if-lez v14, :cond_4

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/16 v16, 0x0

    cmpl-float v14, v14, v16

    if-lez v14, :cond_4

    iget v14, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v3, :cond_4

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    move/from16 v16, v2

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    invoke-virtual {v7, v13, v1, v14, v2}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    goto :goto_1

    :cond_4
    move/from16 v16, v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    move/from16 v16, v2

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :goto_2
    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    iget v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_7

    iget v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iget v3, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move v5, v1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x1

    :goto_5
    return v5
.end method

.method public whitelist finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    return-void
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getDistance()F
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return v0
.end method

.method public whitelist getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist isFinished()Z
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onAbsorb(I)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    int-to-float v1, p1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    int-to-float v3, p1

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v4

    const v4, 0x3e19999a    # 0.15f

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const v3, 0x3db851ec    # 0.09f

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v3, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    :goto_0
    return-void
.end method

.method public whitelist onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public whitelist onPull(FF)V
    .locals 10

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_3
    :goto_0
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v3, 0x43270000    # 167.0f

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    if-ne v0, v4, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    :cond_4
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const v7, 0x3e19999a    # 0.15f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    sub-double/2addr v8, v6

    const-wide v6, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v8, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :goto_1
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    if-ne v0, v4, :cond_6

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_6

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_6
    return-void
.end method

.method public blacklist onPullCallOnRelease(FFI)V
    .locals 4

    iput p1, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public whitelist onPullDistance(FF)F
    .locals 6

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float v3, v1, v3

    cmpl-float v4, v3, v2

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_1

    return v2

    :cond_1
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    iget v2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_2
    invoke-virtual {p0, v3, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return v3
.end method

.method public whitelist onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    return-void
.end method

.method public blacklist semSetHostView(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    return-void
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public whitelist setSize(II)V
    .locals 10

    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v0, v2

    sget v2, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v2, v0

    sub-float v3, v0, v2

    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v4, v1

    sget v1, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v1, v4

    sub-float v5, v4, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    div-float v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_0
    iput v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v6, p1

    iput v6, p0, Landroid/widget/EdgeEffect;->mWidth:F

    int-to-float v6, p2

    iput v6, p0, Landroid/widget/EdgeEffect;->mHeight:F

    return-void
.end method
