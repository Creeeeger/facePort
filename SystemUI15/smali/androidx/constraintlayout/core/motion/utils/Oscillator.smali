.class public final Landroidx/constraintlayout/core/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mArea:[D

.field public mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

.field public final mPI2:D

.field public mPeriod:[F

.field public mPosition:[D

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    return-void
.end method


# virtual methods
.method public final addPoint(DF)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    new-array v2, v0, [D

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aput-wide p1, v0, v1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aput p3, p0, v1

    return-void
.end method

.method public final getP(D)D
    .locals 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    cmpl-double v2, p1, v3

    if-lez v2, :cond_1

    move-wide p1, v3

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-lez v2, :cond_2

    move-wide v0, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    neg-int v0, v2

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    aget v3, v2, v1

    add-int/lit8 v0, v0, -0x2

    aget v2, v2, v0

    sub-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    aget-wide v6, v5, v1

    aget-wide v8, v5, v0

    sub-double/2addr v6, v8

    div-double/2addr v3, v6

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    aget-wide v0, p0, v0

    float-to-double v5, v2

    mul-double v10, v3, v8

    sub-double/2addr v5, v10

    sub-double v10, p1, v8

    mul-double/2addr v10, v5

    add-double/2addr v10, v0

    mul-double/2addr p1, p1

    mul-double/2addr v8, v8

    sub-double/2addr p1, v8

    mul-double/2addr p1, v3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    add-double v0, p1, v10

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final getValue(DD)D
    .locals 9

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    move-result-wide p1

    add-double/2addr p1, p3

    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    iget-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    mul-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    rem-double/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    mul-double/2addr p1, v3

    rem-double/2addr p1, v3

    sub-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sub-double p0, v7, p0

    mul-double/2addr p0, p0

    sub-double/2addr v7, p0

    return-wide v7

    :pswitch_2
    add-double/2addr p3, p1

    mul-double/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_3
    mul-double/2addr p1, v5

    add-double/2addr p1, v7

    rem-double/2addr p1, v5

    sub-double/2addr v7, p1

    return-wide v7

    :pswitch_4
    mul-double/2addr p1, v5

    add-double/2addr p1, v7

    rem-double/2addr p1, v5

    sub-double/2addr p1, v7

    return-wide p1

    :pswitch_5
    mul-double/2addr p1, v3

    add-double/2addr p1, v7

    rem-double/2addr p1, v3

    sub-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sub-double/2addr v7, p0

    return-wide v7

    :pswitch_6
    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    rem-double/2addr p1, v7

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    return-wide p0

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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
