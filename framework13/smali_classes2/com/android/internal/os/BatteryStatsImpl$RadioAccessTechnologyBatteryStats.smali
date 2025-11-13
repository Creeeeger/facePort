.class Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioAccessTechnologyBatteryStats"
.end annotation


# instance fields
.field private blacklist mActive:Z

.field private blacklist mFrequencyRange:I

.field private blacklist mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mSignalStrength:I

.field public final blacklist perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetRxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(ILcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 11
    .param p1, "freqCount"    # I
    .param p2, "clock"    # Lcom/android/internal/os/Clock;
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1109
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1114
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1127
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1131
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1134
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1135
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v2, v1

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1133
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 6
    .param p1, "frequencyRange"    # I
    .param p2, "make"    # Z

    .line 1365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1366
    if-nez p2, :cond_0

    return-object v1

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1369
    .local v0, "freqCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1370
    .local v2, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    new-array v3, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1371
    const/4 v3, 0x0

    .local v3, "freq":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1372
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v3

    .line 1371
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "freqCount":I
    .end local v2    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v3    # "freq":I
    :cond_1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    return-object v0

    .line 1376
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected frequency range ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") requested in getRxDurationCounter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-object v1
.end method

.method private blacklist getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 9
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "make"    # Z

    .line 1337
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1338
    if-nez p3, :cond_0

    return-object v1

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1341
    .local v0, "freqCount":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    array-length v4, v3

    .line 1342
    .local v4, "signalStrengthCount":I
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1343
    .local v3, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    const-class v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1344
    const/4 v5, 0x0

    .local v5, "freq":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1345
    const/4 v6, 0x0

    .local v6, "strength":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 1346
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v5

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v6

    .line 1345
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1344
    .end local v6    # "strength":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1350
    .end local v0    # "freqCount":I
    .end local v3    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v4    # "signalStrengthCount":I
    .end local v5    # "freq":I
    :cond_2
    const-string v0, ") requested in getTxDurationCounter"

    const-string v3, "BatteryStatsImpl"

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v4

    if-lt p1, v4, :cond_3

    goto :goto_3

    .line 1355
    :cond_3
    if-ltz p2, :cond_5

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    array-length v2, v2

    if-lt p2, v2, :cond_4

    goto :goto_2

    .line 1360
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 1356
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected signal strength ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-object v1

    .line 1351
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency range ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-object v1
.end method


# virtual methods
.method public blacklist getFrequencyRangeCount()I
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    return v0
.end method

.method public blacklist getTimeSinceMark(IIJ)J
    .locals 5
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .line 1193
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const-wide/16 v1, 0x3e8

    mul-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3
.end method

.method public blacklist incrementRxDuration(IJ)V
    .locals 1
    .param p1, "frequencyRange"    # I
    .param p2, "durationMs"    # J

    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1230
    return-void
.end method

.method public blacklist incrementTxDuration(IIJ)V
    .locals 1
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "durationMs"    # J

    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1222
    return-void
.end method

.method public blacklist noteActive(ZJ)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "elapsedRealtimeMs"    # J

    .line 1144
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1145
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1146
    if-eqz p1, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1153
    :goto_0
    return-void
.end method

.method public blacklist noteFrequencyRange(IJ)V
    .locals 2
    .param p1, "frequencyRange"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1160
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1162
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1164
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1165
    return-void

    .line 1167
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1168
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1169
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1170
    return-void
.end method

.method public blacklist noteSignalStrength(IJ)V
    .locals 3
    .param p1, "signalStrength"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1176
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1178
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1180
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1181
    return-void

    .line 1183
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1185
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1186
    return-void
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1287
    .local v2, "oldFreqCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1288
    .local v3, "oldSignalStrengthCount":I
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v4, v4

    .line 1289
    .local v4, "currFreqCount":I
    const/4 v5, 0x5

    .line 1291
    .local v5, "currSignalStrengthCount":I
    const/4 v6, 0x0

    .local v6, "freq":I
    :goto_0
    const/4 v7, 0x5

    if-ge v6, v2, :cond_3

    .line 1292
    const/4 v8, 0x0

    .local v8, "strength":I
    :goto_1
    if-ge v8, v3, :cond_2

    .line 1293
    if-ge v6, v4, :cond_1

    if-lt v8, v7, :cond_0

    goto :goto_2

    .line 1300
    :cond_0
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 1295
    :cond_1
    :goto_2
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1298
    .local v9, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1299
    .end local v9    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    nop

    .line 1292
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1291
    .end local v8    # "strength":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1305
    .end local v6    # "freq":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 1306
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_4
    if-ge v6, v2, :cond_7

    .line 1307
    const/4 v9, 0x0

    .local v9, "strength":I
    :goto_5
    if-ge v9, v3, :cond_6

    .line 1308
    if-ge v6, v4, :cond_4

    if-lt v9, v7, :cond_5

    .line 1310
    :cond_4
    new-instance v16, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1313
    .local v10, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1315
    .end local v10    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_5
    invoke-direct {v0, v6, v9, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1307
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1306
    .end local v9    # "strength":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1320
    .end local v6    # "freq":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 1321
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_6
    if-ge v6, v2, :cond_9

    .line 1322
    if-lt v6, v4, :cond_8

    .line 1325
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v14}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1327
    .local v7, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1328
    goto :goto_7

    .line 1330
    .end local v7    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_8
    invoke-direct {v0, v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1321
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1333
    .end local v6    # "freq":I
    :cond_9
    return-void
.end method

.method public blacklist reset(J)V
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J

    .line 1236
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1237
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1238
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 1239
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1240
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1241
    :cond_0
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1238
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1243
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v2, :cond_2

    goto :goto_3

    .line 1244
    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1237
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public blacklist setMark(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 1201
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1202
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1203
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 1204
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1202
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1252
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1253
    .local v0, "freqCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1256
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1257
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1255
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1261
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1262
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1264
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1266
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v1, :cond_3

    .line 1267
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1266
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1265
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1272
    .end local v2    # "i":I
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v1, :cond_5

    .line 1273
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 1275
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_6

    .line 1277
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1280
    .end local v1    # "i":I
    :cond_6
    :goto_6
    return-void
.end method
