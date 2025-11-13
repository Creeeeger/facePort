.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public index:I

.field public final isDataDifferential:Z

.field public final minSampleSize:I

.field public final reusableDataPointsArray:[F

.field public final reusableTimeArray:[F

.field public final reusableVelocityCoefficients:[F

.field public final samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

.field public final strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Impulse:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lsq2 not (yet) supported for differential axes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, p2, :cond_3

    if-ne p1, v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iput v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    const/16 p1, 0x14

    new-array p2, p1, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    new-array p2, p1, [F

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    new-array p1, v0, [F

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    return-void
.end method


# virtual methods
.method public final addDataPoint(FJ)V
    .locals 2

    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-direct {v1, p2, p3, p1}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;-><init>(JF)V

    aput-object v1, p0, v0

    goto :goto_0

    :cond_0
    iput-wide p2, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    iput p1, v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    :goto_0
    return-void
.end method

.method public final calculateVelocity(F)F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_11

    iget v3, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    aget-object v5, v4, v3

    if-nez v5, :cond_0

    move v0, v2

    goto/16 :goto_b

    :cond_0
    const/4 v6, 0x0

    move-object v7, v5

    :goto_0
    aget-object v8, v4, v3

    iget-boolean v10, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->isDataDifferential:Z

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->strategy:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    iget-object v12, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableDataPointsArray:[F

    iget-object v13, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableTimeArray:[F

    if-nez v8, :cond_1

    move/from16 v17, v10

    goto :goto_5

    :cond_1
    iget-wide v14, v5, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    move/from16 v16, v3

    iget-wide v2, v8, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    sub-long/2addr v14, v2

    long-to-float v14, v14

    move/from16 v17, v10

    iget-wide v9, v7, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float v2, v2

    sget-object v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    if-eq v11, v3, :cond_3

    if-eqz v17, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v5

    goto :goto_2

    :cond_3
    :goto_1
    move-object v7, v8

    :goto_2
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v14, v3

    if-gtz v3, :cond_7

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    goto :goto_5

    :cond_4
    iget v2, v8, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    aput v2, v12, v6

    neg-float v2, v14

    aput v2, v13, v6

    const/16 v2, 0x14

    if-nez v16, :cond_5

    move v3, v2

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    move/from16 v3, v16

    goto :goto_3

    :goto_4
    sub-int/2addr v3, v8

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    :goto_5
    iget v2, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->minSampleSize:I

    if-lt v6, v2, :cond_e

    sget-object v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    if-ne v2, v3, :cond_8

    :try_start_0
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->reusableVelocityCoefficients:[F

    invoke-static {v13, v12, v6, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FI[F)V

    aget v0, v0, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_9
    sub-int/2addr v6, v4

    aget v0, v13, v6

    move v2, v6

    const/4 v4, 0x0

    :goto_6
    if-lez v2, :cond_d

    add-int/lit8 v5, v2, -0x1

    aget v7, v13, v5

    cmpg-float v8, v0, v7

    if-nez v8, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v17, :cond_b

    aget v5, v12, v5

    neg-float v5, v5

    goto :goto_7

    :cond_b
    aget v8, v12, v2

    aget v5, v12, v5

    sub-float v5, v8, v5

    :goto_7
    sub-float/2addr v0, v7

    div-float/2addr v5, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v8, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v9, v8

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v0, v8

    sub-float v0, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    if-ne v2, v6, :cond_c

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, -0x1

    move v0, v7

    goto :goto_6

    :cond_d
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    :goto_9
    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float/2addr v0, v2

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    :goto_b
    cmpg-float v3, v0, v2

    if-nez v3, :cond_f

    goto :goto_c

    :cond_f
    cmpl-float v2, v0, v2

    if-lez v2, :cond_10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v2

    goto :goto_c

    :cond_10
    neg-float v1, v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v2

    :goto_c
    return v2

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
