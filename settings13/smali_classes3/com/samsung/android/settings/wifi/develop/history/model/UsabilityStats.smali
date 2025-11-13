.class public Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;
.super Ljava/lang/Object;
.source "UsabilityStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;
    }
.end annotation


# instance fields
.field private final mLinkSpeedMbps:I

.field private final mRssi:I

.field private final mTimeStampMillis:J

.field private final mTotalBeaconRx:J

.field private final mTotalTxBad:J

.field private final mTotalTxRetries:J

.field private final mTotalTxSuccess:J


# direct methods
.method public static synthetic $r8$lambda$Hy7TsYROp-AcPXs6xHC5XzrdR-E(JLcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->lambda$parseEntry$0(JLcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    const/4 v2, 0x0

    .line 178
    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    .line 179
    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    .line 180
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    .line 181
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    .line 182
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    .line 183
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    return-void
.end method

.method private constructor <init>(JIIJJJJ)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    .line 168
    iput p3, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    .line 169
    iput p4, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    .line 170
    iput-wide p5, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    .line 171
    iput-wide p7, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    .line 172
    iput-wide p9, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    .line 173
    iput-wide p11, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    return-void
.end method

.method private static synthetic lambda$parseEntry$0(JLcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;)Z
    .locals 2

    .line 157
    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parse(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;
    .locals 15

    if-nez p0, :cond_0

    .line 118
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;-><init>()V

    return-object p0

    :cond_0
    const-string v0, ","

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 122
    array-length v0, p0

    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 124
    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TIME_STAMP:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 125
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v3

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->RSSI:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 126
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)I

    move-result v5

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->LINK_SPEED:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 127
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getIntegerValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)I

    move-result v6

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->BCN_CNT:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 128
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v7

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_GOOD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 129
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v9

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_BAD:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 130
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->getLongValue(Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;[Ljava/lang/String;)J

    move-result-wide v11

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->TX_RETRY:Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    .line 131
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

    .line 133
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized parseEntry(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    monitor-enter v0

    .line 141
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\n"

    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 144
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 145
    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->parseHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 147
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 148
    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->parse(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 150
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 154
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    sub-long/2addr v2, v4

    .line 157
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-interface {v1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseHeader(Ljava/lang/String;)Z
    .locals 2

    .line 101
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->reset()V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ","

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 106
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->get(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->setIndex(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$StatItem;->isValid()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public getLinkSpeedMbps()I
    .locals 0

    .line 198
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mLinkSpeedMbps:I

    return p0
.end method

.method public getRssi()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mRssi:I

    return p0
.end method

.method public getTimeStampMillis()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    return-wide v0
.end method

.method public getTotalBeaconRx()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalBeaconRx:J

    return-wide v0
.end method

.method public getTotalTxBad()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxBad:J

    return-wide v0
.end method

.method public getTotalTxRetries()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxRetries:J

    return-wide v0
.end method

.method public getTotalTxSuccess()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTotalTxSuccess:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeStamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTimeStampMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", linkSpeedMbps="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getLinkSpeedMbps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalBeaconRx="

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalBeaconRx()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxSuccess="

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxSuccess()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxBad="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxBad()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalTxRetries="

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->getTotalTxRetries()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
