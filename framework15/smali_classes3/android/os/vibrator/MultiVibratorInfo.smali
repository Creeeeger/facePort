.class public final Landroid/os/vibrator/MultiVibratorInfo;
.super Landroid/os/VibratorInfo;
.source "MultiVibratorInfo.java"


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "MultiVibratorInfo"


# direct methods
.method public constructor blacklist <init>(I[Landroid/os/VibratorInfo;)V
    .locals 1

    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/vibrator/MultiVibratorInfo;-><init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfile;)V

    return-void
.end method

.method private constructor blacklist <init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfile;)V
    .locals 15

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I

    move-result v1

    int-to-long v4, v1

    invoke-static/range {p2 .. p2}, Landroid/os/vibrator/MultiVibratorInfo;->supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Landroid/os/vibrator/MultiVibratorInfo;->supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Landroid/os/vibrator/MultiVibratorInfo;->supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;

    move-result-object v8

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v9

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v10

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v11

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v12

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v13

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v14}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    return-void
.end method

.method private static blacklist capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I
    .locals 8

    const/4 v0, -0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getCapabilities()J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    and-int/lit16 v0, v0, -0x201

    :cond_1
    return v0
.end method

.method private static blacklist floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static blacklist frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v1

    new-instance v2, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v2}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v2

    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    nop

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-array v7, v6, [F

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([FF)V

    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v10, v0, v9

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitudes()[F

    move-result-object v12

    nop

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float/2addr v13, v14

    div-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    array-length v14, v7

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    if-ltz v13, :cond_3

    array-length v15, v12

    if-lt v14, v15, :cond_1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_1
    array-length v4, v7

    if-ge v15, v4, :cond_2

    aget v4, v7, v15

    add-int v16, v13, v15

    aget v5, v12, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calculating the intersection of vibrator frequency profiles: attempted to fetch from vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max amplitude with bad index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiVibratorInfo"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v5, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    invoke-direct {v4, v2, v8, v8, v5}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4

    :cond_4
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v2, v5, v1, v7}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4

    :cond_5
    :goto_3
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v5, 0x0

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-direct {v4, v2, v6, v1, v5}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4
.end method

.method private static blacklist frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_5

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gez v6, :cond_4

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    rem-float v7, v6, p1

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    sub-float v4, v3, v2

    cmpg-float v4, v4, p1

    if-gez v4, :cond_6

    return-object v1

    :cond_6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v0, :cond_0

    if-lez v4, :cond_1

    if-ge v4, v0, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic blacklist lambda$frequencyProfileIntersection$0(Landroid/os/VibratorInfo;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyResolutionHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isBrakingSupportKnown()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedBraking()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_2
    array-length v5, p0

    if-ge v4, v5, :cond_4

    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->hasBrakingSupport(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static blacklist supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isEffectSupportKnown()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedEffects()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_2
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static blacklist supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;
    .locals 7

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedPrimitives()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_2

    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
