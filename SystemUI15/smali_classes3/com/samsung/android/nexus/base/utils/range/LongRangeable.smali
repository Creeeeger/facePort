.class public final Lcom/samsung/android/nexus/base/utils/range/LongRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDelta:J

.field public mMax:J

.field public mMin:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide p3, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/LongRangeable;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iget-wide v0, p1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iget-wide v0, p1, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/LongRangeable;)V

    return-object v0
.end method

.method public final get()J
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    long-to-float p0, v2

    sget-object v2, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v2

    mul-float/2addr v2, p0

    float-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final onRangeUpdated()V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LongRangeable{mMin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
