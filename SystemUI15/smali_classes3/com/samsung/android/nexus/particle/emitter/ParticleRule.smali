.class public final Lcom/samsung/android/nexus/particle/emitter/ParticleRule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applyWorldFactorCheckList:[Z

.field public colorMode:I

.field public final configValues:[Z

.field public final factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

.field public final factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

.field public lastWorldFactorUpdateTime:J

.field public final lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

.field public particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

.field public final posMode:I

.field public final scaleMode:I

.field public final tempWorldFactorValues:[F


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v0, v0, 0x3

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sCount:I

    new-array v2, v0, [Z

    sget-object v3, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, v3, v4

    iget-boolean v5, v5, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v4, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    mul-int/lit8 v4, v4, 0x3

    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lastWorldFactorUpdateTime:J

    new-array v6, v4, [F

    iput-object v6, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->tempWorldFactorValues:[F

    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->DISABLE_WHEN_DISAPPEARED:Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    sget v6, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sCount:I

    new-array v7, v6, [Z

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;

    move v9, v2

    :goto_0
    if-ge v9, v6, :cond_0

    aget-object v10, v8, v9

    iget-boolean v10, v10, Lcom/samsung/android/nexus/particle/emitter/ParticleConfigType;->defaultValue:Z

    aput-boolean v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iput-object v7, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    iget-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([ZZ)V

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v8, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    iput-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    iget-object v8, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    array-length v10, v9

    iget v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iput v11, v3, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iget-object v11, v3, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-static {v9, v2, v11, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v10, v9

    iget-object v11, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-static {v11, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    iget-object v10, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    array-length v11, v10

    invoke-static {v9, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    iget-object v10, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    array-length v11, v10

    invoke-static {v9, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    iput v8, v3, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    iget-object v3, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iget-wide v8, v3, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v8, v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iget-wide v8, v3, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v8, v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v3, v0

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_2

    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v10, v9}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v9, v1, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->posMode:I

    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->scaleMode:I

    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->applyWorldFactorCheckList:[Z

    invoke-static {p0, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->configValues:[Z

    invoke-static {p0, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>(Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    return-object v0
.end method

.method public final setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget-object p0, p0, p1

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final setKeyFrameListRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 7

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_4

    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    iget v2, v2, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    new-array v3, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-array v4, v0, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v6, v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    if-lez v1, :cond_1

    iget v5, v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    cmpg-float v2, v5, v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "position range overlapped. it will occurs non-Ascending positions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    iget v2, v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    aput-object v6, v3, v1

    aget-object v5, p3, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v6, v5}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aget-object p3, p2, p1

    if-nez p3, :cond_3

    iget p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    :cond_3
    aput-object v3, p2, p1

    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    aput-object v4, p2, p1

    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    aput-object p3, p2, p1

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    aput-object p3, p0, p1

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "different length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget-object p0, p0, p1

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method

.method public final setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget-object p0, p0, p1

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p3, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->onRangeUpdated()V

    return-void
.end method
