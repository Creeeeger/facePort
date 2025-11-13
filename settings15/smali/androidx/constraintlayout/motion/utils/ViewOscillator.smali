.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public final mWavePoints:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get(F)F
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    float-to-double v6, v1

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v2, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    aget v6, v6, v5

    float-to-double v6, v6

    aput-wide v6, v2, v5

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    aget v6, v6, v5

    float-to-double v6, v6

    aput-wide v6, v2, v3

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v6, v6, v5

    float-to-double v6, v6

    aput-wide v6, v2, v4

    :goto_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v5, v2, v5

    aget-wide v2, v2, v3

    float-to-double v7, v1

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    cmpg-double v11, v7, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-gez v11, :cond_1

    move-wide v7, v9

    goto :goto_1

    :cond_1
    cmpl-double v11, v7, v12

    if-lez v11, :cond_2

    move-wide v7, v12

    :cond_2
    :goto_1
    iget-object v11, v1, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v11, v7, v8}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v11

    if-lez v11, :cond_3

    move-wide v9, v12

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_4

    neg-int v9, v11

    add-int/lit8 v10, v9, -0x1

    iget-object v11, v1, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aget v16, v11, v10

    sub-int/2addr v9, v4

    aget v11, v11, v9

    sub-float v4, v16, v11

    float-to-double v12, v4

    iget-object v4, v1, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v17, v4, v10

    aget-wide v19, v4, v9

    sub-double v17, v17, v19

    div-double v12, v12, v17

    iget-object v4, v1, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    aget-wide v9, v4, v9

    float-to-double v14, v11

    mul-double v21, v12, v19

    sub-double v14, v14, v21

    sub-double v21, v7, v19

    mul-double v21, v21, v14

    add-double v21, v21, v9

    mul-double/2addr v7, v7

    mul-double v19, v19, v19

    sub-double v7, v7, v19

    mul-double/2addr v7, v12

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double v9, v7, v21

    :cond_4
    :goto_2
    add-double/2addr v9, v2

    iget v1, v1, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    packed-switch v1, :pswitch_data_0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x0

    throw v0

    :pswitch_1
    mul-double/2addr v9, v11

    rem-double/2addr v9, v11

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    sub-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v12, v3, v1

    mul-double/2addr v12, v12

    sub-double v1, v3, v12

    goto :goto_3

    :pswitch_2
    add-double/2addr v2, v9

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_3
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v9, v1

    add-double/2addr v9, v3

    rem-double/2addr v9, v1

    sub-double v1, v3, v9

    goto :goto_3

    :pswitch_4
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v9, v1

    add-double/2addr v9, v3

    rem-double/2addr v9, v1

    sub-double v1, v9, v3

    goto :goto_3

    :pswitch_5
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v9, v11

    add-double/2addr v9, v3

    rem-double/2addr v9, v11

    sub-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double v1, v3, v1

    goto :goto_3

    :pswitch_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    rem-double/2addr v9, v3

    sub-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    add-double/2addr v1, v5

    double-to-float v0, v1

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

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mType:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[0 , "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method
