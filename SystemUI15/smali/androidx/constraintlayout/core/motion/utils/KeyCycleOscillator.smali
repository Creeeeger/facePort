.class public abstract Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public mVariesBy:I

.field public final mWavePoints:Ljava/util/ArrayList;

.field public mWaveShape:I

.field public mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get(F)F
    .locals 9

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    float-to-double v4, p1

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v3

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v2

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v3, v0, v3

    aget-wide v5, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    float-to-double v7, p1

    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    move-result-wide v5

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide p0, p0, v1

    mul-double/2addr v5, p0

    add-double/2addr v5, v3

    double-to-float p0, v5

    return p0
.end method

.method public final getSlope(F)F
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_0

    float-to-double v8, v1

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aput-wide v6, v2, v4

    aput-wide v6, v2, v3

    aput-wide v6, v2, v5

    :goto_0
    float-to-double v1, v1

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v8, v8, v3

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    invoke-virtual {v10, v1, v2, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    move-result-wide v8

    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v11, v11, v3

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v13, v13, v3

    invoke-virtual {v10, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide v15

    add-double/2addr v15, v11

    cmpg-double v3, v1, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-gtz v3, :cond_1

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_1

    :cond_1
    cmpl-double v3, v1, v11

    if-ltz v3, :cond_2

    const-wide v1, 0x3feffffde7210be9L    # 0.999999

    :cond_2
    :goto_1
    iget-object v3, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    neg-int v3, v3

    add-int/lit8 v17, v3, -0x1

    iget-object v6, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aget v7, v6, v17

    sub-int/2addr v3, v5

    aget v6, v6, v3

    sub-float/2addr v7, v6

    float-to-double v4, v7

    iget-object v7, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v18, v7, v17

    aget-wide v20, v7, v3

    sub-double v18, v18, v20

    div-double v4, v4, v18

    mul-double/2addr v1, v4

    float-to-double v6, v6

    mul-double v4, v4, v20

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    :goto_2
    add-double/2addr v6, v13

    iget v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    iget-wide v2, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    packed-switch v1, :pswitch_data_0

    mul-double/2addr v6, v2

    mul-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    :goto_3
    mul-double/2addr v6, v1

    goto :goto_5

    :pswitch_0
    iget-object v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    rem-double v2, v15, v11

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    move-result-wide v6

    goto :goto_5

    :pswitch_1
    mul-double/2addr v6, v13

    mul-double/2addr v15, v13

    add-double/2addr v15, v4

    rem-double/2addr v15, v13

    sub-double/2addr v15, v4

    mul-double/2addr v6, v15

    goto :goto_5

    :pswitch_2
    neg-double v4, v2

    mul-double/2addr v4, v6

    mul-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    :goto_4
    mul-double v6, v1, v4

    goto :goto_5

    :pswitch_3
    neg-double v1, v6

    goto :goto_4

    :pswitch_4
    mul-double/2addr v6, v4

    goto :goto_5

    :pswitch_5
    mul-double/2addr v6, v13

    mul-double/2addr v15, v13

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    add-double/2addr v15, v1

    rem-double/2addr v15, v13

    sub-double/2addr v15, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_6
    const-wide/16 v6, 0x0

    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x2

    aget-wide v10, v1, v4

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v0, v0, v4

    mul-double/2addr v6, v0

    add-double/2addr v6, v8

    double-to-float v0, v6

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 0

    return-void
.end method

.method public final setup()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v2, v1, [D

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    const/4 v7, 0x0

    aput v1, v4, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveShape:I

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWaveString:Ljava/lang/String;

    iget v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v8, v9, v10, v11, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;-><init>(ILjava/lang/String;II)V

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    iget v10, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v11, v10

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    aput-wide v11, v2, v8

    aget-object v11, v4, v8

    iget v12, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v13, v12

    aput-wide v13, v11, v7

    iget v13, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v14, v13

    aput-wide v14, v11, v5

    iget v14, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    float-to-double v5, v14

    aput-wide v5, v11, v3

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget v6, v9, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    move-object v11, v4

    int-to-double v3, v6

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v3, v3, v17

    iget-object v6, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aput-wide v3, v6, v8

    iget-object v3, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aput v10, v3, v8

    iget-object v3, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    aput v13, v3, v8

    iget-object v3, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    aput v14, v3, v8

    iget-object v3, v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aput v12, v3, v8

    add-int/lit8 v8, v8, 0x1

    move-object v4, v11

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    move-object v11, v4

    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v3, v1

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/4 v8, 0x3

    aput v8, v5, v6

    aput v3, v5, v7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v6, v5

    add-int/2addr v6, v4

    new-array v6, v6, [D

    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    array-length v6, v5

    add-int/2addr v6, v4

    new-array v4, v6, [D

    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v12, v1, v7

    const-wide/16 v9, 0x0

    cmpl-double v6, v12, v9

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    if-lez v6, :cond_2

    aget v6, v8, v7

    invoke-virtual {v12, v9, v10, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_2
    array-length v6, v1

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    aget-wide v13, v1, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v13, v9

    if-gez v13, :cond_3

    aget v6, v8, v6

    invoke-virtual {v12, v9, v10, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    :cond_3
    move v6, v7

    :goto_1
    array-length v9, v3

    if-ge v6, v9, :cond_4

    aget-object v9, v3, v6

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    aget v10, v10, v6

    float-to-double v13, v10

    aput-wide v13, v9, v7

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    aget v10, v10, v6

    float-to-double v13, v10

    const/4 v10, 0x1

    aput-wide v13, v9, v10

    aget v10, v5, v6

    float-to-double v13, v10

    const/4 v4, 0x2

    aput-wide v13, v9, v4

    aget-wide v9, v1, v6

    aget v13, v8, v6

    invoke-virtual {v12, v9, v10, v13}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v4, v7

    const-wide/16 v5, 0x0

    :goto_2
    iget-object v8, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v9, v8

    if-ge v4, v9, :cond_5

    aget v8, v8, v4

    float-to-double v8, v8

    add-double/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    :goto_3
    iget-object v10, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v13, v10

    const/high16 v14, 0x40000000    # 2.0f

    if-ge v4, v13, :cond_6

    add-int/lit8 v13, v4, -0x1

    aget v18, v10, v13

    aget v10, v10, v4

    add-float v18, v18, v10

    div-float v10, v18, v14

    iget-object v14, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v18, v14, v4

    aget-wide v13, v14, v13

    sub-double v18, v18, v13

    float-to-double v13, v10

    mul-double v18, v18, v13

    add-double v8, v18, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v7

    :goto_4
    iget-object v10, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v13, v10

    if-ge v4, v13, :cond_7

    aget v13, v10, v4

    div-double v14, v5, v8

    double-to-float v14, v14

    mul-float/2addr v13, v14

    aput v13, v10, v4

    add-int/lit8 v4, v4, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    iget-object v4, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v7

    const/4 v6, 0x1

    :goto_5
    iget-object v4, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v5, v4

    if-ge v6, v5, :cond_8

    add-int/lit8 v5, v6, -0x1

    aget v8, v4, v5

    aget v4, v4, v6

    add-float/2addr v8, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v8, v4

    iget-object v9, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v13, v9, v6

    aget-wide v9, v9, v5

    sub-double/2addr v13, v9

    iget-object v9, v12, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    aget-wide v15, v9, v5

    float-to-double v4, v8

    mul-double/2addr v13, v4

    add-double/2addr v13, v15

    aput-wide v13, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    invoke-static {v7, v1, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    :goto_6
    invoke-static {v7, v2, v11}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mType:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    const-string v3, "["

    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
