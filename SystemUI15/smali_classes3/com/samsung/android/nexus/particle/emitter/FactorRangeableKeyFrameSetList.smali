.class public final Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;
.super Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFactorInterpolator:[Landroid/view/animation/Interpolator;

.field public final mFactorInterpolators:[[Landroid/view/animation/Interpolator;

.field public final mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public rangeableSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    new-array v1, v0, [[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-array v1, v0, [[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    new-array v1, v0, [Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    new-array v0, v0, [[Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    if-eqz v5, :cond_0

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    if-eqz v5, :cond_4

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
