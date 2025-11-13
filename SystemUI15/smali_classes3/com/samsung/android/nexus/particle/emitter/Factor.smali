.class public final Lcom/samsung/android/nexus/particle/emitter/Factor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mNeedValidate:Z

.field public final mStepSkipList:[Z

.field public final values:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Factor;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/particle/emitter/Factor;->initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    return-void
.end method


# virtual methods
.method public final initValues([Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v1, v0

    if-eqz p2, :cond_1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x3

    array-length v3, p1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    if-nez p2, :cond_2

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object p2, v0, v2

    iget v3, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v4

    aput v4, p0, v3

    iget v3, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v4

    aput v4, p0, v3

    iget p2, p2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-object v3, p1, p2

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v3

    aput v3, p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    aget-object v4, p2, v2

    if-eqz v4, :cond_3

    iget v5, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v4

    aput v4, p0, v5

    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aput v6, p0, v4

    iget v3, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aput v6, p0, v3

    goto :goto_3

    :cond_3
    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v5

    aput v5, p0, v4

    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v5

    aput v5, p0, v4

    iget v3, v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->get()F

    move-result v4

    aput v4, p0, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput v1, p0, v0

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput v1, p0, v0

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput v1, p0, v0

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    aput v0, p0, v1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    aput v0, p0, v1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    aput v0, p0, v1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    aput v0, p0, v1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactorValueList{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget-object v9, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    aget v8, v9, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v10, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v4, v9, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v6, v7, v8, v10, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "\n#%d: %s: val = %f / spd = %f / acc = %f"

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validate()V
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    iget-object v7, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    aget v6, v7, v6

    const/4 v8, 0x0

    cmpl-float v6, v8, v6

    if-nez v6, :cond_0

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v5, v7, v5

    cmpl-float v5, v8, v5

    if-nez v5, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    aput-boolean v5, v6, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    return-void
.end method
