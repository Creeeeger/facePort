.class public final Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLinkSpeedMbps:I

.field public final mRssi:I

.field public final mTimeStampMillis:J

.field public final mTotalBeaconRx:J

.field public final mTotalTxBad:J

.field public final mTotalTxRetries:J

.field public final mTotalTxSuccess:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    return-void
.end method

.method public constructor <init>(JIIJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    iput-wide p5, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    iput-wide p7, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    iput-wide p9, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    iput-wide p11, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;
    .locals 15

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;-><init>()V

    return-object p0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    sget v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v3

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)I

    move-result v5

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)I

    move-result v6

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v7

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v9

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v11

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v13

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;-><init>(JIIJJJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "UsabilityStats"

    const-string v0, "malformed UsabilityStats "

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized parseEntry(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->values()[Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v5, :cond_0

    aget-object v8, v4, v6

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->setIndex(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sput v7, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    if-eqz v3, :cond_5

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->setIndex(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->mMaxIndex:I

    if-eq v2, v7, :cond_5

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_4

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->parse(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    move-result-object v4

    iget-wide v5, v4, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    const-wide/32 v4, 0xa4cb800

    sub-long/2addr v2, v4

    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-object v1

    :goto_4
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeStamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", linkSpeedMbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalBeaconRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxBad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
