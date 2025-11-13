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

    .line 99
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    .line 202
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 292
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 240
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 243
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 247
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 248
    iput v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 255
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 256
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 257
    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 265
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    .line 413
    new-instance v2, Landroid/widget/EdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/widget/EdgeEffect$1;-><init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v2, Landroid/widget/EdgeEffect$2;

    invoke-direct {v2, p0}, Landroid/widget/EdgeEffect$2;-><init>(Landroid/widget/EdgeEffect;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    .line 300
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 302
    .local v2, "a":Landroid/content/res/TypedArray;
    const v3, -0x99999a

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 304
    .local v3, "themeColor":I
    const-wide/32 v4, 0xa34bbc0

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 305
    move v0, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 306
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    const v0, 0xffffff

    and-int/2addr v0, v3

    const/high16 v4, 0x33000000

    or-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    sget-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 312
    return-void
.end method

.method private blacklist calculateDistanceFromGlowValues(FF)F
    .locals 3
    .param p1, "scale"    # F
    .param p2, "alpha"    # F

    .line 930
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 933
    return v0

    .line 935
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 936
    const v1, 0x3fb6db6e

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 937
    .local v1, "v":F
    mul-float v0, v1, v1

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    return v0

    .line 939
    .end local v1    # "v":F
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    div-float v0, p2, v0

    return v0
.end method

.method private blacklist calculateEdgeEffectMargin(I)F
    .locals 4
    .param p1, "width"    # I

    .line 316
    int-to-double v0, p1

    const-wide v2, 0x3fc16872b020c49cL    # 0.136

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 320
    .local v0, "margin":F
    return v0
.end method

.method private blacklist dampStretchVector(F)F
    .locals 11
    .param p1, "normalizedVec"    # F

    .line 958
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 959
    .local v0, "sign":F
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 960
    .local v1, "overscroll":F
    const v2, 0x3c83126f    # 0.016f

    mul-float/2addr v2, v1

    .line 961
    .local v2, "linearIntensity":F
    const-wide v3, 0x402079748cecfc47L    # 8.237217334679498

    .line 962
    .local v3, "scalar":D
    const-wide v5, 0x3f90624de0000000L    # 0.01600000075995922

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    neg-float v9, v1

    float-to-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v7, v5

    .line 963
    .local v7, "expIntensity":D
    float-to-double v5, v2

    add-double/2addr v5, v7

    double-to-float v5, v5

    mul-float/2addr v5, v0

    return v5
.end method

.method private blacklist getCurrentEdgeEffectBehavior()I
    .locals 1

    .line 337
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const/4 v0, -0x1

    return v0

    .line 340
    :cond_0
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return v0
.end method

.method private blacklist isAtEquilibrium()Z
    .locals 8

    .line 947
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 948
    .local v0, "displacement":D
    iget v2, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, v2

    .line 953
    .local v2, "velocity":D
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

    .line 407
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

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
    .param p1, "f1"    # F
    .param p2, "f2"    # F
    .param p3, "f3"    # F
    .param p4, "f4"    # F

    .line 812
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 813
    .local v0, "max":F
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 814
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private blacklist min(FFFF)F
    .locals 2
    .param p1, "f1"    # F
    .param p2, "f2"    # F
    .param p3, "f3"    # F
    .param p4, "f4"    # F

    .line 806
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 807
    .local v0, "min":F
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 808
    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private greylist-max-o update()V
    .locals 8

    .line 827
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 828
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 830
    .local v2, "t":F
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 832
    .local v3, "interp":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 833
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 834
    iget v6, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 835
    invoke-direct {p0, v5, v4}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 837
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 839
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    .line 840
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 866
    :pswitch_0
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 867
    goto :goto_0

    .line 869
    :pswitch_1
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 842
    :pswitch_2
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 843
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 844
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 846
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 847
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 850
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 851
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 852
    goto :goto_0

    .line 854
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 855
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 856
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 858
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 859
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 862
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 863
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 873
    :cond_1
    :goto_0
    return-void

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

    .line 876
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 877
    .local v1, "time":J
    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 878
    .local v3, "deltaT":F
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 879
    return-void

    .line 881
    :cond_0
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 883
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

    .line 884
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_2

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 885
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    .line 889
    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 891
    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v4, v3

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v4, v7

    add-float/2addr v5, v4

    .line 892
    .local v5, "targetDistance":F
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    .line 894
    iput v6, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 895
    iput v6, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_0

    .line 897
    :cond_1
    iput v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 899
    :goto_0
    return-void

    .line 901
    .end local v5    # "targetDistance":F
    :cond_2
    const-wide v4, 0x4038a83126e978d5L    # 24.657

    const-wide v7, 0x3fa4467381d7dc00L    # 0.03960000000000008

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    .line 904
    .local v7, "mDampedFreq":D
    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float v9, v4, v5

    float-to-double v9, v9

    .line 905
    .local v9, "cosCoeff":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v7

    const-wide v13, 0x403829f2ba9d1f60L    # 24.16386

    move-wide v15, v7

    .end local v7    # "mDampedFreq":D
    .local v15, "mDampedFreq":D
    float-to-double v6, v4

    mul-double/2addr v6, v13

    float-to-double v4, v5

    mul-double/2addr v6, v4

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v4, v4

    add-double/2addr v6, v4

    mul-double/2addr v11, v6

    .line 907
    .local v11, "sinCoeff":D
    float-to-double v4, v3

    const-wide v6, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v4, v6

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v13, v3

    mul-double/2addr v13, v15

    .line 908
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    float-to-double v6, v3

    mul-double v7, v15, v6

    .line 909
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    add-double/2addr v13, v6

    mul-double/2addr v4, v13

    .line 910
    .local v4, "distance":D
    const-wide v6, -0x3fc757ced916872bL    # -24.657

    mul-double/2addr v6, v4

    const-wide v13, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v6, v13

    float-to-double v13, v3

    const-wide v19, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double v13, v13, v19

    .line 911
    move-wide/from16 v19, v1

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    .end local v1    # "time":J
    .local v19, "time":J
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move-wide v13, v15

    move-wide v15, v4

    .end local v4    # "distance":D
    .local v13, "mDampedFreq":D
    .local v15, "distance":D
    neg-double v4, v13

    mul-double/2addr v4, v9

    move-wide/from16 v17, v9

    .end local v9    # "cosCoeff":D
    .local v17, "cosCoeff":D
    float-to-double v8, v3

    mul-double/2addr v8, v13

    .line 912
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    mul-double v8, v13, v11

    move-wide/from16 v21, v11

    .end local v11    # "sinCoeff":D
    .local v21, "sinCoeff":D
    float-to-double v10, v3

    mul-double/2addr v10, v13

    .line 913
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    mul-double/2addr v1, v4

    add-double/2addr v6, v1

    .line 914
    .local v6, "velocity":D
    move-wide v4, v15

    .end local v15    # "distance":D
    .restart local v4    # "distance":D
    double-to-float v1, v4

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 915
    double-to-float v2, v6

    iput v2, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 916
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 917
    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 918
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_1

    .line 916
    :cond_3
    const/4 v1, 0x0

    .line 920
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 921
    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 922
    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 924
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)Z
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    .line 715
    .local v2, "edgeEffectBehavior":I
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_0

    .line 716
    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->update()V

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 719
    .local v8, "count":I
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    .line 720
    .local v9, "centerX":F
    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v10, v11

    .line 722
    .local v10, "centerY":F
    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v11, v12

    invoke-virtual {v1, v4, v11, v9, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 724
    iget v11, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v4, v11

    .line 725
    .local v4, "displacement":F
    iget-object v11, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 727
    .local v11, "translateX":F
    iget-object v12, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 728
    invoke-virtual {v1, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    iget-object v12, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    iget v14, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 730
    iget v12, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 731
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 732
    .end local v4    # "displacement":F
    .end local v8    # "count":I
    .end local v9    # "centerX":F
    .end local v10    # "centerY":F
    .end local v11    # "translateX":F
    move v1, v7

    goto/16 :goto_1

    :cond_0
    if-ne v2, v5, :cond_6

    instance-of v8, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v8, :cond_6

    .line 733
    iget v8, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v8, v3, :cond_1

    .line 734
    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->updateSpring()V

    .line 736
    :cond_1
    iget v8, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_5

    .line 737
    move-object v8, v1

    check-cast v8, Landroid/graphics/RecordingCanvas;

    .line 738
    .local v8, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_2

    .line 739
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 740
    const/16 v9, 0xc

    new-array v9, v9, [F

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 743
    :cond_2
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 745
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v6

    .line 746
    aput v7, v9, v5

    .line 747
    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v11, 0x2

    aput v10, v9, v11

    .line 748
    aput v7, v9, v3

    .line 749
    const/4 v12, 0x4

    aput v10, v9, v12

    .line 750
    iget v13, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v14, 0x5

    aput v13, v9, v14

    .line 751
    const/4 v15, 0x6

    aput v7, v9, v15

    .line 752
    const/16 v16, 0x7

    aput v13, v9, v16

    .line 753
    iget v4, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float v18, v10, v4

    const/16 v19, 0x8

    aput v18, v9, v19

    .line 754
    const/16 v18, 0x9

    aput v7, v9, v18

    .line 755
    mul-float/2addr v10, v4

    const/16 v4, 0xa

    aput v10, v9, v4

    .line 756
    iget v10, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v13, v10

    const/16 v10, 0xb

    aput v13, v9, v10

    .line 757
    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 759
    iget-object v9, v8, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 761
    .local v9, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v13

    int-to-float v13, v13

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v6

    aget v4, v7, v11

    aget v11, v7, v12

    aget v7, v7, v15

    .line 762
    invoke-direct {v0, v10, v4, v11, v7}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v4

    add-float/2addr v13, v4

    .line 763
    .local v13, "left":F
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v5

    aget v11, v7, v3

    aget v3, v7, v14

    aget v7, v7, v16

    .line 764
    invoke-direct {v0, v10, v11, v3, v7}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v3

    add-float/2addr v4, v3

    .line 765
    .local v4, "top":F
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v6

    const/4 v11, 0x2

    aget v11, v7, v11

    aget v12, v7, v12

    aget v7, v7, v15

    .line 766
    invoke-direct {v0, v10, v11, v12, v7}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v7

    add-float/2addr v3, v7

    .line 767
    .local v3, "right":F
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v10, v5

    const/4 v12, 0x3

    aget v15, v10, v12

    aget v12, v10, v14

    aget v10, v10, v16

    .line 768
    invoke-direct {v0, v11, v15, v12, v10}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v10

    add-float/2addr v7, v10

    .line 770
    .local v7, "bottom":F
    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v11, 0xa

    aget v11, v10, v11

    aget v10, v10, v19

    sub-float/2addr v11, v10

    .line 771
    .local v11, "x":F
    sub-float v10, v3, v13

    .line 772
    .local v10, "width":F
    div-float v12, v11, v10

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-direct {v0, v12}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v12

    .line 774
    .local v12, "vecX":F
    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v16, 0xb

    aget v16, v15, v16

    aget v15, v15, v18

    sub-float v16, v16, v15

    .line 775
    .local v16, "y":F
    sub-float v15, v7, v4

    .line 776
    .local v15, "height":F
    div-float v5, v16, v15

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {v0, v5}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v5

    .line 778
    .local v5, "vecY":F
    invoke-static {v12}, Ljava/lang/Float;->isFinite(F)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Ljava/lang/Float;->isFinite(F)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 779
    .local v6, "hasValidVectors":Z
    :goto_0
    cmpl-float v14, v3, v13

    if-lez v14, :cond_4

    cmpl-float v14, v7, v4

    if-lez v14, :cond_4

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/16 v17, 0x0

    cmpl-float v20, v14, v17

    if-lez v20, :cond_4

    iget v1, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v21, v1, v17

    if-lez v21, :cond_4

    if-eqz v6, :cond_4

    .line 780
    invoke-virtual {v9, v12, v5, v14, v1}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    .line 787
    .end local v3    # "right":F
    .end local v4    # "top":F
    .end local v5    # "vecY":F
    .end local v6    # "hasValidVectors":Z
    .end local v7    # "bottom":F
    .end local v8    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    .end local v9    # "renderNode":Landroid/graphics/RenderNode;
    .end local v10    # "width":F
    .end local v11    # "x":F
    .end local v12    # "vecX":F
    .end local v13    # "left":F
    .end local v15    # "height":F
    .end local v16    # "y":F
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 736
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 791
    :cond_6
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 792
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 793
    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 796
    :goto_1
    const/4 v3, 0x0

    .line 797
    .local v3, "oneLastFrame":Z
    iget v4, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_7

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_7

    .line 798
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 799
    const/4 v3, 0x1

    goto :goto_2

    .line 797
    :cond_7
    const/4 v1, 0x0

    .line 802
    :goto_2
    iget v4, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v4, :cond_9

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v5, 0x1

    :goto_4
    return v5
.end method

.method public whitelist finish()V
    .locals 1

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 385
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 386
    return-void
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 699
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getDistance()F
    .locals 1

    .line 577
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return v0
.end method

.method public whitelist getMaxHeight()I
    .locals 1

    .line 823
    iget v0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist isFinished()Z
    .locals 1

    .line 375
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
    .locals 6
    .param p1, "velocity"    # I

    .line 616
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 618
    .local v0, "edgeEffectBehavior":I
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 619
    const/16 v2, 0x1c

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 622
    :cond_0
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 623
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 624
    int-to-float v1, p1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 625
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    goto :goto_0

    .line 626
    :cond_1
    if-nez v0, :cond_2

    .line 627
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 628
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 629
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 631
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 632
    int-to-float v3, p1

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v4

    const v4, 0x3e19999a    # 0.15f

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 636
    const v3, 0x3db851ec    # 0.09f

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 637
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 643
    const v1, 0x3ccccccd    # 0.025f

    div-int/lit8 v3, p1, 0x64

    mul-int/2addr v3, p1

    int-to-float v3, v3

    const v5, 0x391d4952    # 1.5E-4f

    mul-float/2addr v3, v5

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 646
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v3

    .line 648
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 646
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 649
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    goto :goto_0

    .line 651
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 653
    :goto_0
    return-void
.end method

.method public whitelist onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .line 402
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 403
    return-void
.end method

.method public whitelist onPull(FF)V
    .locals 12
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 458
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 459
    .local v0, "edgeEffectBehavior":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 461
    return-void

    .line 463
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 464
    .local v1, "now":J
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 465
    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-nez v4, :cond_1

    .line 467
    return-void

    .line 469
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    .line 470
    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    if-ne v3, v4, :cond_2

    .line 473
    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_0

    .line 475
    :cond_2
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 478
    :goto_0
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_3

    .line 479
    const/16 v6, 0x1c

    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 483
    :cond_3
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 485
    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 486
    const/high16 v3, 0x43270000    # 167.0f

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 488
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 489
    if-ne v0, v4, :cond_4

    .line 491
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 493
    :cond_4
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 494
    iput v5, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 496
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    .line 497
    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 498
    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_1

    .line 500
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 501
    .local v3, "absdd":F
    const v6, 0x3e19999a    # 0.15f

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 504
    const-wide/16 v6, 0x0

    iget v8, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 505
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    sub-double/2addr v10, v8

    const-wide v8, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v10, v8

    .line 504
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    div-double/2addr v6, v8

    double-to-float v6, v6

    .line 507
    .local v6, "scale":F
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 510
    .end local v3    # "absdd":F
    .end local v6    # "scale":F
    :goto_1
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 511
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 512
    if-ne v0, v4, :cond_6

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_6

    .line 513
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 515
    :cond_6
    return-void
.end method

.method public blacklist onPullCallOnRelease(FFI)V
    .locals 4
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .param p3, "delayTime"    # I

    .line 437
    iput p1, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    .line 438
    iput p2, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    .line 439
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method public whitelist onPullDistance(FF)F
    .locals 7
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 547
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 548
    .local v0, "edgeEffectBehavior":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 549
    return v1

    .line 551
    :cond_0
    iget v2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 552
    .local v2, "finalDistance":F
    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float v4, v2, v3

    .line 553
    .local v4, "delta":F
    cmpl-float v5, v4, v1

    if-nez v5, :cond_1

    cmpl-float v5, v3, v1

    if-nez v5, :cond_1

    .line 554
    return v1

    .line 557
    :cond_1
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2

    if-nez v0, :cond_2

    .line 559
    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 560
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 562
    :cond_2
    invoke-virtual {p0, v4, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 563
    return v4
.end method

.method public whitelist onRelease()V
    .locals 3

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 589
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 590
    return-void

    .line 593
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 594
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 595
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 597
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 598
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 599
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 601
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 602
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 603
    return-void
.end method

.method public blacklist semSetHostView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "canVerticalScroll"    # Z

    .line 331
    iput-object p1, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    .line 332
    return-void
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 677
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 678
    return-void
.end method

.method public whitelist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 661
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    return-void
.end method

.method public whitelist setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 351
    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v0, v2

    .line 352
    .local v0, "r":F
    sget v3, Landroid/widget/EdgeEffect;->COS:F

    mul-float v4, v3, v0

    .line 353
    .local v4, "y":F
    sub-float v5, v0, v4

    .line 354
    .local v5, "h":F
    int-to-float v6, p2

    mul-float/2addr v6, v1

    div-float/2addr v6, v2

    .line 355
    .local v6, "or":F
    mul-float/2addr v3, v6

    .line 356
    .local v3, "oy":F
    sub-float v1, v6, v3

    .line 358
    .local v1, "oh":F
    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 359
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    div-float v2, v1, v5

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_0
    iput v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 361
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    int-to-float v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mWidth:F

    .line 364
    int-to-float v2, p2

    iput v2, p0, Landroid/widget/EdgeEffect;->mHeight:F

    .line 365
    return-void
.end method
