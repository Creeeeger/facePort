.class public final Lcom/samsung/android/nexus/base/utils/random/FloatRandom;
.super Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCache:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public final get()F
    .locals 11

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    iput v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    iget-wide v3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    double-to-float v1, v3

    iget-wide v3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    double-to-float v3, v3

    sget-object v4, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_4

    array-length v5, v0

    if-lez v5, :cond_4

    array-length v5, v0

    iget v6, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    if-le v6, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-float/2addr v3, v1

    iget-wide v7, v4, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    const-wide v9, 0x5deece66dL

    mul-long/2addr v7, v9

    const-wide/16 v9, 0xb

    add-long/2addr v7, v9

    const-wide v9, 0xffffffffffffL

    and-long/2addr v7, v9

    const/16 v9, 0x18

    ushr-long v9, v7, v9

    long-to-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x4b800000    # 1.6777216E7f

    div-float/2addr v9, v10

    mul-float/2addr v9, v3

    add-float/2addr v9, v1

    aput v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-wide v7, v4, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :cond_4
    :goto_1
    iput v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    aget p0, v0, v1

    return p0
.end method

.method public final onCreate()V
    .locals 1

    const v0, 0x186a0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    return-void
.end method
