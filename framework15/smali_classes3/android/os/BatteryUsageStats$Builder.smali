.class public final Landroid/os/BatteryUsageStats$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

.field private blacklist mBatteryCapacityMah:D

.field private final blacklist mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private blacklist mBatteryRatedCapacityMah:D

.field private blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mBatteryTimeRemainingMs:J

.field private blacklist mBatteryTypicalCapacityMah:D

.field private blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private blacklist mDischargeDurationMs:J

.field private blacklist mDischargePercentage:I

.field private blacklist mDischargedPowerLowerBoundMah:D

.field private blacklist mDischargedPowerUpperBoundMah:D

.field private final blacklist mIncludePowerModels:Z

.field private final blacklist mIncludesPowerStateData:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mIncludesScreenStateData:Z

.field private final blacklist mMinConsumedPowerThreshold:D

.field private blacklist mStatsDurationMs:J

.field private blacklist mStatsEndTimestampMs:J

.field private blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumerDataLayout(Landroid/os/BatteryUsageStats$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryRatedCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryRatedCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTypicalCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTypicalCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludePowerModels(Landroid/os/BatteryUsageStats$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludePowerModels:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesPowerStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesScreenStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStatsDuration(Landroid/os/BatteryUsageStats$Builder;)J
    .locals 2

    invoke-direct {p0}, Landroid/os/BatteryUsageStats$Builder;->getStatsDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor blacklist <init>([Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZZD)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;ZZZZD)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/AggregateBatteryConsumer$Builder;

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x0

    const-wide/32 v3, 0x1312d00

    invoke-direct {v1, v2, v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    invoke-virtual {v1, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    iput-boolean p2, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludePowerModels:Z

    iput-boolean p3, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    iput-boolean p4, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    iput-boolean p5, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    iput-wide p6, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-static {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    new-instance v4, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v5, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist getStatsDuration()J
    .locals 4

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public blacklist add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    .locals 4

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Added BatteryUsageStats does not include process state data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    iget v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    invoke-direct {p0}, Landroid/os/BatteryUsageStats$Builder;->getStatsDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    :cond_3
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->add(Landroid/os/AggregateBatteryConsumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UidBatteryConsumer$Builder;->add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    :cond_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Combining UserBatteryConsumers is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BatteryUsageStats have different custom power components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStats;
    .locals 2

    new-instance v0, Landroid/os/BatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V

    return-object v0
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v5, v2, v4}, Landroid/database/CursorWindow;->getType(II)I

    move-result v5

    const-string v6, ", "

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v6, "BLOB, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string/jumbo v6, "null, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v1

    new-instance v2, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    move-object v0, v2

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;
    .locals 6

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-static {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    new-instance v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;D)V

    move-object v1, v3

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public blacklist getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserBatteryConsumer$Builder;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v1

    new-instance v2, Landroid/os/UserBatteryConsumer$Builder;

    iget-wide v3, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/os/UserBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    move-object v0, v2

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public blacklist getUidBatteryConsumerBuilders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist isPowerStateDataNeeded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return v0
.end method

.method public blacklist isProcessStateDataNeeded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist isScreenStateDataNeeded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return v0
.end method

.method public blacklist isSupportedCustomPowerComponent(I)Z
    .locals 2

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    return-object p0
.end method

.method public blacklist setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method public blacklist setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryRatedCapacityMah:D

    return-object p0
.end method

.method public blacklist setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    return-object p0
.end method

.method public blacklist setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTypicalCapacityMah:D

    return-object p0
.end method

.method public blacklist setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    return-object p0
.end method

.method public blacklist setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    return-object p0
.end method

.method public blacklist setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput p1, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    return-object p0
.end method

.method public blacklist setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    iput-wide p3, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    return-object p0
.end method

.method public blacklist setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    return-object p0
.end method

.method public blacklist setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    return-object p0
.end method

.method public blacklist setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    return-object p0
.end method
