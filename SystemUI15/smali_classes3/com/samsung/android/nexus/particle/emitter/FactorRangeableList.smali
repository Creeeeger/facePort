.class public final Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget v7, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->min:F

    iget v8, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    aput-object v6, v2, v5

    iget v5, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    aput-object v6, v2, v5

    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v3, v2}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>(Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;)V

    return-object v0
.end method

.method public final setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-object p0, p0, p1

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-object p0, p0, p1

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget-object p0, p0, p1

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactorRangeableList{ranges="

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

    iget-object v9, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object v8, v9, v8

    iget v10, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-object v10, v9, v10

    iget v4, v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-object v4, v9, v4

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
