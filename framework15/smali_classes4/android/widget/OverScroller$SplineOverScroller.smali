.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final greylist-max-o BALLISTIC:I = 0x2

.field private static final greylist-max-o CUBIC:I = 0x1

.field private static greylist-max-o DECELERATION_RATE:F = 0.0f

.field private static final blacklist DEFAULT_MODE:I = 0x1

.field private static final blacklist DISTANCE_M1:F = 3.0f

.field private static final blacklist DISTANCE_M2:F = 1.25f

.field private static final blacklist DURATION_M1:F = 2.7f

.field private static final blacklist DURATION_M2:F = 1.45f

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o GRAVITY:F = 2000.0f

.field private static final blacklist HIGHER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final blacklist HIGHER_TIME_GAP_MARGIN:J = 0x1L

.field private static greylist-max-o INFLEXION:F = 0.0f

.field private static final blacklist INFLEXIONS:[F

.field private static final blacklist LOWER_TIME_GAP_COMPENSATION:J = 0x1L

.field private static final blacklist LOWER_TIME_GAP_MARGIN:J = 0x1L

.field private static final blacklist MARGIN_COMPENSATION_STARTING_COUNT:I = 0x1e

.field private static final blacklist MINIMUM_BOOSTED_FLING_VELOCITY_NEGATIVE:I = -0x320

.field private static final blacklist MINIMUM_BOOSTED_FLING_VELOCITY_POSITIVE:I = 0x320

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field public static final blacklist ORIGINAL_MODE:I = 0x0

.field public static final blacklist SMOOTH_MODE:I = 0x1

.field private static final greylist-max-o SPLINE:I = 0x0

.field private static greylist-max-o SPLINE_POSITION:[F = null

.field private static final blacklist SPLINE_POSITIONS:[[F

.field private static greylist-max-o SPLINE_TIME:[F = null

.field private static final blacklist SPLINE_TIMES:[[F

.field private static final greylist-max-o START_TENSION:F = 0.5f

.field private static blacklist sIsSmoothFlingEnabled:Z

.field private static blacklist sUseRegulateCurrentTimeInterval:Z


# instance fields
.field private greylist mCurrVelocity:F

.field private greylist-max-o mCurrentPosition:I

.field private greylist-max-o mDeceleration:F

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFinal:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private blacklist mFlingSTBFlag:Z

.field private blacklist mIsDVFSBoosting:Z

.field private blacklist mMaximumVelocity:I

.field private greylist-max-o mOver:I

.field private greylist-max-o mPhysicalCoeff:F

.field private blacklist mPrevTime:J

.field private blacklist mPrevTimeGap:J

.field private blacklist mSTBIndex:I

.field private greylist-max-o mSplineDistance:I

.field private greylist-max-o mSplineDuration:I

.field private greylist-max-o mStart:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private blacklist mUpdateCount:I

.field private greylist-max-o mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 22

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    new-array v1, v0, [I

    const/16 v3, 0x65

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v0, v1, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v0, v1, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sput-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    xor-int/2addr v1, v2

    sput-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->sUseRegulateCurrentTimeInterval:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sget-object v4, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v4, v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v5

    sub-float v4, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x64

    if-ge v8, v9, :cond_4

    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v10, v9, v10

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2
    sub-float v11, v9, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v6

    const/high16 v13, 0x40400000    # 3.0f

    mul-float v14, v11, v13

    sub-float v15, v5, v11

    mul-float/2addr v14, v15

    sub-float v15, v5, v11

    mul-float/2addr v15, v2

    mul-float v16, v11, v4

    add-float v15, v15, v16

    mul-float/2addr v15, v14

    mul-float v16, v11, v11

    mul-float v16, v16, v11

    add-float v15, v15, v16

    sub-float v16, v15, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v12, v0

    const-wide v18, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v12, v18

    if-gez v0, :cond_2

    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v1

    sub-float v12, v5, v11

    mul-float/2addr v12, v3

    add-float/2addr v12, v11

    mul-float/2addr v12, v14

    mul-float v13, v11, v11

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    aput v12, v0, v8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    sub-float v12, v0, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v7

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v17, v12, v16

    sub-float v20, v5, v12

    mul-float v14, v17, v20

    sub-float v17, v5, v12

    mul-float v17, v17, v3

    add-float v17, v17, v12

    mul-float v17, v17, v14

    mul-float v20, v12, v12

    mul-float v20, v20, v12

    add-float v17, v17, v20

    sub-float v20, v17, v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move/from16 v21, v14

    float-to-double v13, v3

    cmpg-double v3, v13, v18

    if-gez v3, :cond_0

    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v3, v3, v1

    sub-float v13, v5, v12

    mul-float/2addr v13, v2

    mul-float v14, v12, v4

    add-float/2addr v13, v14

    mul-float v14, v21, v13

    mul-float v13, v12, v12

    mul-float/2addr v13, v12

    add-float/2addr v14, v13

    aput v14, v3, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    goto/16 :goto_1

    :cond_0
    cmpl-float v3, v17, v10

    if-lez v3, :cond_1

    move v0, v12

    move/from16 v14, v21

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_1
    move v7, v12

    move/from16 v14, v21

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_2
    cmpl-float v0, v15, v10

    if-lez v0, :cond_3

    move v9, v11

    const/4 v0, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    goto/16 :goto_2

    :cond_3
    move v6, v11

    const/4 v0, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    goto/16 :goto_2

    :cond_4
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v1

    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v3, v3, v1

    aput v5, v3, v9

    aput v5, v0, v9

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e851eb8    # 0.26f
    .end array-data
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSTBIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingSTBFlag:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    sget-boolean v1, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    :cond_0
    return-void
.end method

.method private greylist-max-o adjustDuration(III)V
    .locals 10

    sub-int v0, p2, p1

    sub-int v1, p3, p1

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private greylist-max-o fitOnBounceCurve(III)V
    .locals 9

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v7, 0x447a0000    # 1000.0f

    sub-float v8, v4, v0

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static greylist-max-o getDeceleration(I)F
    .locals 1

    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private greylist-max-o getSplineDeceleration(I)D
    .locals 3

    sget v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(I)D
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    sget-boolean v4, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    const/16 v5, 0x64

    :cond_0
    sget-object v6, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v6, v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    add-float/2addr v6, v8

    float-to-double v8, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v10, v6

    mul-double/2addr v10, v8

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v12, v6

    mul-double/2addr v10, v12

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v12, v6

    div-double/2addr v12, v2

    mul-double/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    return-wide v10

    :cond_1
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(I)I
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    sget-boolean v4, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    const/16 v7, 0x64

    :cond_0
    sget-object v8, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v8, v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    const v8, 0x402ccccd    # 2.7f

    mul-float/2addr v8, v9

    const v10, 0x3fb9999a    # 1.45f

    add-float/2addr v8, v10

    float-to-double v10, v8

    mul-double/2addr v5, v10

    div-double v12, v0, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v5, v12

    double-to-int v5, v5

    return v5

    :cond_1
    div-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    return v4
.end method

.method private greylist-max-o onEdgeReached()V
    .locals 6

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    neg-float v4, v3

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v2

    :cond_0
    float-to-int v2, v1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-float v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->sUseRegulateCurrentTimeInterval:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_2
    return-void
.end method

.method private greylist-max-o startAfterEdge(IIII)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v6, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    sub-int v13, v7, v12

    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    if-eqz v14, :cond_4

    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    :cond_4
    invoke-direct {v6, v9}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    if-eqz v11, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    if-eqz v11, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    move v4, v8

    :goto_4
    iget v5, v6, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    :cond_7
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private greylist-max-o startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private greylist-max-o startSpringback(III)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int v0, p1, p2

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method greylist-max-o continueWhenFinished()Z
    .locals 6

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :pswitch_1
    return v1

    :pswitch_2
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o extendDuration(I)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method greylist-max-o finish()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onSmoothScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    :cond_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method greylist-max-o fling(IIIII)V
    .locals 5

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetsIntervalTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    sget-boolean v3, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-nez v3, :cond_2

    const/16 v3, 0x320

    if-ge p2, v3, :cond_1

    const/16 v3, -0x320

    if-gt p2, v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onSmoothScrollEvent(Z)V

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    :cond_2
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v3, p3, :cond_3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v3, v4, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_3
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v3, p4, :cond_4

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v3, v4, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_4
    sget-boolean v3, Landroid/widget/OverScroller$SplineOverScroller;->sUseRegulateCurrentTimeInterval:Z

    if-eqz v3, :cond_5

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method greylist-max-o notifyEdgeReached(III)V
    .locals 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method greylist-max-o setFinalPosition(I)V
    .locals 2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method greylist-max-o setFriction(F)V
    .locals 0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public blacklist setMode(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sput-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->sIsSmoothFlingEnabled:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    if-nez v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/widget/OverScroller$SplineOverScroller;->sUseRegulateCurrentTimeInterval:Z

    :cond_3
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->INFLEXION:F

    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method blacklist setSTBIndex(I)V
    .locals 0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSTBIndex:I

    return-void
.end method

.method greylist-max-o springback(III)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o startScroll(III)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method greylist-max-o update()Z
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    sget-boolean v5, Landroid/widget/OverScroller$SplineOverScroller;->sUseRegulateCurrentTimeInterval:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v5, :cond_4

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetsIntervalTime()J

    move-result-wide v9

    cmp-long v5, v9, v6

    if-nez v5, :cond_0

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    if-lez v5, :cond_0

    iget-wide v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    add-long/2addr v9, v3

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    :cond_0
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/16 v9, 0x1e

    if-le v5, v9, :cond_2

    iget-wide v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v9, v3, v9

    iget-wide v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    cmp-long v5, v9, v11

    if-lez v5, :cond_1

    iget-wide v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v11, v6

    add-long v3, v11, v13

    goto :goto_0

    :cond_1
    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    sub-long/2addr v5, v13

    cmp-long v5, v9, v5

    if-gez v5, :cond_2

    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v5, v11

    sub-long v3, v5, v13

    :cond_2
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-wide/16 v3, 0x0

    :cond_3
    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v5, v3, v5

    iput-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTimeGap:J

    iput-wide v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPrevTime:J

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/2addr v5, v8

    iput v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_6

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v5, :cond_5

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    return v8

    :cond_6
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v9, v5

    cmp-long v5, v3, v9

    if-lez v5, :cond_7

    return v6

    :cond_7
    const-wide/16 v5, 0x0

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v9, 0x447a0000    # 1000.0f

    const/high16 v10, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    long-to-float v7, v3

    div-float/2addr v7, v9

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v7

    mul-float/2addr v11, v7

    div-float/2addr v11, v10

    add-float/2addr v9, v11

    float-to-double v5, v9

    goto :goto_2

    :pswitch_1
    long-to-float v7, v3

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float v9, v7, v7

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v9

    mul-float/2addr v10, v7

    mul-float/2addr v10, v9

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    float-to-double v5, v12

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v10, v10

    mul-float/2addr v10, v11

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v10, v12

    neg-float v12, v7

    add-float/2addr v12, v9

    mul-float/2addr v10, v12

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_2

    :pswitch_2
    long-to-float v7, v3

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v11, v7, v10

    float-to-int v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/16 v14, 0x64

    if-ge v11, v14, :cond_8

    int-to-float v14, v11

    div-float/2addr v14, v10

    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v10

    sget-object v10, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v10, v10, v11

    sget-object v16, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v11, 0x1

    aget v16, v16, v17

    sub-float v17, v16, v10

    sub-float v18, v15, v14

    div-float v13, v17, v18

    sub-float v17, v7, v14

    mul-float v17, v17, v13

    add-float v12, v10, v17

    :cond_8
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-double v5, v10

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v13

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v14, v14

    div-float/2addr v10, v14

    mul-float/2addr v10, v9

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    nop

    :goto_2
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v7, v9

    iput v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist updateScroll(FF)V
    .locals 3

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v2, v0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float v2, p1, p2

    mul-float/2addr v2, v1

    int-to-float v1, v0

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return-void
.end method
