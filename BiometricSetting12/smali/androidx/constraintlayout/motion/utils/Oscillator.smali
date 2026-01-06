.class public Landroidx/constraintlayout/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "Oscillator.java"


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field PI2:D

.field mArea:[D

.field private mNormalized:Z

.field mPeriod:[F

.field mPosition:[D

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Oscillator"

    sput-object v0, Landroidx/constraintlayout/motion/utils/Oscillator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    iput-wide v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method


# virtual methods
.method public addPoint(DF)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v2, v1

    add-int/lit8 v1, v2, -0x1

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    new-array v2, v0, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aput-wide p1, v2, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    aput p3, v2, v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method

.method getDP(D)D
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_0

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_1

    const-wide v3, 0x3feffffde7210be9L    # 0.999999

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p1

    :goto_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v5

    const-wide/16 v6, 0x0

    if-lez v5, :cond_2

    return-wide v1

    :cond_2
    if-eqz v5, :cond_3

    neg-int v1, v5

    add-int/lit8 v5, v1, -0x1

    move-wide v1, v3

    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    aget v9, v8, v5

    add-int/lit8 v10, v5, -0x1

    aget v10, v8, v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v12, v11, v5

    add-int/lit8 v14, v5, -0x1

    aget-wide v14, v11, v14

    sub-double/2addr v12, v14

    div-double/2addr v9, v12

    mul-double v12, v9, v1

    add-int/lit8 v14, v5, -0x1

    aget v8, v8, v14

    float-to-double v14, v8

    add-int/lit8 v8, v5, -0x1

    aget-wide v16, v11, v8

    mul-double v16, v16, v9

    sub-double v14, v14, v16

    add-double v6, v12, v14

    :cond_3
    return-wide v6
.end method

.method getP(D)D
    .locals 20

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    move-wide/from16 v1, p1

    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v3

    const-wide/16 v4, 0x0

    if-lez v3, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    neg-int v6, v3

    add-int/lit8 v3, v6, -0x1

    move-wide v6, v1

    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    aget v9, v8, v3

    add-int/lit8 v10, v3, -0x1

    aget v10, v8, v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v12, v11, v3

    add-int/lit8 v14, v3, -0x1

    aget-wide v14, v11, v14

    sub-double/2addr v12, v14

    div-double/2addr v9, v12

    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    add-int/lit8 v13, v3, -0x1

    aget-wide v12, v12, v13

    add-int/lit8 v14, v3, -0x1

    aget v8, v8, v14

    float-to-double v14, v8

    add-int/lit8 v8, v3, -0x1

    aget-wide v16, v11, v8

    mul-double v16, v16, v9

    sub-double v14, v14, v16

    add-int/lit8 v8, v3, -0x1

    aget-wide v16, v11, v8

    sub-double v16, v6, v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double v14, v6, v6

    add-int/lit8 v8, v3, -0x1

    aget-wide v16, v11, v8

    add-int/lit8 v8, v3, -0x1

    aget-wide v18, v11, v8

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    mul-double/2addr v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double v4, v12, v14

    :cond_3
    :goto_1
    return-wide v4
.end method

.method public getSlope(D)D
    .locals 11

    iget v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mType:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v7, v1

    rem-double/2addr v7, v3

    sub-double/2addr v7, v1

    mul-double/2addr v5, v7

    return-wide v5

    :pswitch_1
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    neg-double v0, v0

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v3

    neg-double v3, v3

    mul-double/2addr v3, v1

    return-wide v3

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    return-wide v3

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getDP(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    add-double/2addr v7, v9

    rem-double/2addr v7, v3

    sub-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    return-wide v5

    :pswitch_5
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(D)D
    .locals 9

    iget v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mType:I

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    rem-double/2addr v7, v1

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v5, v0

    mul-double v2, v0, v0

    sub-double/2addr v5, v2

    return-wide v5

    :pswitch_1
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->PI2:D

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    add-double/2addr v0, v5

    rem-double/2addr v0, v3

    sub-double/2addr v5, v0

    return-wide v5

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    add-double/2addr v0, v5

    rem-double/2addr v0, v3

    sub-double/2addr v0, v5

    return-wide v0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    add-double/2addr v7, v5

    rem-double/2addr v7, v1

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double/2addr v5, v0

    return-wide v5

    :pswitch_5
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/Oscillator;->getP(D)D

    move-result-wide v2

    rem-double/2addr v2, v5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public normalize()V
    .locals 14

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget v5, v5, v4

    float-to-double v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v4, -0x1

    aget v6, v5, v6

    aget v5, v5, v4

    add-float/2addr v6, v5

    div-float/2addr v6, v7

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v7, v5, v4

    add-int/lit8 v9, v4, -0x1

    aget-wide v9, v5, v9

    sub-double/2addr v7, v9

    float-to-double v9, v6

    mul-double/2addr v9, v7

    add-double/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget v6, v5, v4

    float-to-double v8, v6

    div-double v10, v2, v0

    mul-double/2addr v8, v10

    double-to-float v6, v8

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v5

    const/4 v4, 0x1

    :goto_3
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    array-length v6, v5

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, -0x1

    aget v6, v5, v6

    aget v5, v5, v4

    add-float/2addr v6, v5

    div-float/2addr v6, v7

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    aget-wide v8, v5, v4

    add-int/lit8 v10, v4, -0x1

    aget-wide v10, v5, v10

    sub-double/2addr v8, v10

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mArea:[D

    add-int/lit8 v10, v4, -0x1

    aget-wide v10, v5, v10

    float-to-double v12, v6

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    aput-wide v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mNormalized:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPosition:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/Oscillator;->mPeriod:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
