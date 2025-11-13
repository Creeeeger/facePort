.class public final Landroid/os/BatteryUsageStats;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStats$Builder;,
        Landroid/os/BatteryUsageStats$AggregateBatteryConsumerScope;
    }
.end annotation


# static fields
.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_ALL_APPS:I = 0x1

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_COUNT:I = 0x2

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_DEVICE:I = 0x0

.field private static final blacklist BATTERY_CONSUMER_CURSOR_WINDOW_SIZE:J = 0x1312d00L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATSD_PULL_ATOM_MAX_BYTES:I = 0xafc8

.field private static final blacklist UID_USAGE_TIME_PROCESS_STATES:[I

.field private static final blacklist WEIGHT_BACKGROUND_STATE:D = 8.333333333333333E-5

.field private static final blacklist WEIGHT_CONSUMED_POWER:D = 1.0

.field private static final blacklist WEIGHT_FOREGROUND_STATE:D = 2.777777777777778E-5

.field static final blacklist XML_ATTR_BATTERY_CAPACITY:Ljava/lang/String; = "battery_capacity"

.field static final blacklist XML_ATTR_BATTERY_REMAINING:Ljava/lang/String; = "battery_remaining"

.field static final blacklist XML_ATTR_CHARGE_REMAINING:Ljava/lang/String; = "charge_remaining"

.field static final blacklist XML_ATTR_DISCHARGE_DURATION:Ljava/lang/String; = "discharge_duration"

.field static final blacklist XML_ATTR_DISCHARGE_LOWER:Ljava/lang/String; = "discharge_lower"

.field static final blacklist XML_ATTR_DISCHARGE_PERCENT:Ljava/lang/String; = "discharge_pct"

.field static final blacklist XML_ATTR_DISCHARGE_UPPER:Ljava/lang/String; = "discharge_upper"

.field static final blacklist XML_ATTR_DURATION:Ljava/lang/String; = "duration"

.field static final blacklist XML_ATTR_END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"

.field static final blacklist XML_ATTR_HIGHEST_DRAIN_PACKAGE:Ljava/lang/String; = "highest_drain_package"

.field static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field static final blacklist XML_ATTR_MODEL:Ljava/lang/String; = "model"

.field static final blacklist XML_ATTR_POWER:Ljava/lang/String; = "power"

.field static final blacklist XML_ATTR_POWER_STATE:Ljava/lang/String; = "power_state"

.field static final blacklist XML_ATTR_PREFIX_CUSTOM_COMPONENT:Ljava/lang/String; = "custom_component_"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_POWER_STATE_DATA:Ljava/lang/String; = "includes_power_state_data"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_PROC_STATE_DATA:Ljava/lang/String; = "includes_proc_state_data"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_SCREEN_STATE_DATA:Ljava/lang/String; = "includes_screen_state_data"

.field static final blacklist XML_ATTR_PROCESS_STATE:Ljava/lang/String; = "process_state"

.field static final blacklist XML_ATTR_SCOPE:Ljava/lang/String; = "scope"

.field static final blacklist XML_ATTR_SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field static final blacklist XML_ATTR_START_TIMESTAMP:Ljava/lang/String; = "start_timestamp"

.field static final blacklist XML_ATTR_TIME_IN_BACKGROUND:Ljava/lang/String; = "time_in_background"

.field static final blacklist XML_ATTR_TIME_IN_FOREGROUND:Ljava/lang/String; = "time_in_foreground"

.field static final blacklist XML_ATTR_TIME_IN_FOREGROUND_SERVICE:Ljava/lang/String; = "time_in_foreground_service"

.field static final blacklist XML_ATTR_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_ATTR_USER_ID:Ljava/lang/String; = "user_id"

.field static final blacklist XML_TAG_AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final blacklist XML_TAG_BATTERY_USAGE_STATS:Ljava/lang/String; = "battery_usage_stats"

.field static final blacklist XML_TAG_COMPONENT:Ljava/lang/String; = "component"

.field static final blacklist XML_TAG_CUSTOM_COMPONENT:Ljava/lang/String; = "custom_component"

.field static final blacklist XML_TAG_POWER_COMPONENTS:Ljava/lang/String; = "power_components"

.field static final blacklist XML_TAG_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field private final blacklist mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

.field private final blacklist mBatteryCapacityMah:D

.field private blacklist mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private blacklist mBatteryRatedCapacityMah:D

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mBatteryTimeRemainingMs:J

.field private blacklist mBatteryTypicalCapacityMah:D

.field private final blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private final blacklist mDischargeDurationMs:J

.field private final blacklist mDischargePercentage:I

.field private final blacklist mDischargedPowerLowerBound:D

.field private final blacklist mDischargedPowerUpperBound:D

.field private final blacklist mIncludesPowerModels:Z

.field private final blacklist mIncludesPowerStateData:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mIncludesScreenStateData:Z

.field private final blacklist mStatsDurationMs:J

.field private final blacklist mStatsEndTimestampMs:J

.field private final blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$AhjaskFZdcWuZdURmjqwkJa5acs(Landroid/os/BatteryUsageStats;Landroid/os/UidBatteryConsumer;)D
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I
    .locals 0

    iget p0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/os/BatteryUsageStats;->UID_USAGE_TIME_PROCESS_STATES:[I

    new-instance v0, Landroid/os/BatteryUsageStats$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$mgetStatsDuration(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryRatedCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryRatedCapacityMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryTypicalCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTypicalCapacityMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludePowerModels(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesScreenStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesPowerStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryConsumerDataLayout(Landroid/os/BatteryUsageStats$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    const-wide/16 v0, 0x0

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->isExcludedFromBatteryUsageStats()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->build()Landroid/os/UidBatteryConsumer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer$Builder;->build()Landroid/os/UserBatteryConsumer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/os/AggregateBatteryConsumer;

    iput-object v5, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/os/AggregateBatteryConsumer$Builder;->build()Landroid/os/AggregateBatteryConsumer;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-static {p1}, Landroid/database/CursorWindow;->newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    iget-boolean v1, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    iget-boolean v2, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    iget-boolean v4, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/AggregateBatteryConsumer;

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-direct {v2, v3, v1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    new-instance v5, Landroid/os/UserBatteryConsumer;

    invoke-direct {v5, v2}, Landroid/os/UserBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    new-instance v5, Landroid/os/UidBatteryConsumer;

    invoke-direct {v5, v2}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v4, Landroid/os/AggregateBatteryConsumer;

    invoke-direct {v4, v2}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    iget-object v5, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-virtual {v4}, Landroid/os/AggregateBatteryConsumer;->getScope()I

    move-result v6

    aput-object v4, v5, v6

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHistory;->createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "battery_usage_stats"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "custom_component_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v3, :cond_0

    nop

    const-string/jumbo v9, "includes_proc_state_data"

    invoke-interface {v0, v10, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v11, "includes_screen_state_data"

    invoke-interface {v0, v10, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v19

    const-string/jumbo v11, "includes_power_state_data"

    invoke-interface {v0, v10, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v20

    new-instance v21, Landroid/os/BatteryUsageStats$Builder;

    new-array v11, v6, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v11, v21

    move v14, v9

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v11 .. v18}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZZD)V

    move-object/from16 v1, v21

    nop

    const-string/jumbo v11, "start_timestamp"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "end_timestamp"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "duration"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "battery_capacity"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "discharge_pct"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "discharge_lower"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v11

    const-string v13, "discharge_upper"

    invoke-interface {v0, v10, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "discharge_duration"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "battery_remaining"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    nop

    const-string v11, "charge_remaining"

    invoke-interface {v0, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_2

    :cond_0
    invoke-interface {v0, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    :goto_3
    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_4

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_3
    goto :goto_4

    :sswitch_0
    const-string v8, "aggregate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_5

    :sswitch_1
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_5

    :sswitch_2
    const-string/jumbo v8, "uid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_5

    :goto_4
    move v7, v3

    :goto_5
    packed-switch v7, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    invoke-static {v0, v1}, Landroid/os/UserBatteryConsumer;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    goto :goto_6

    :pswitch_1
    invoke-static {v0, v1}, Landroid/os/UidBatteryConsumer;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    goto :goto_6

    :pswitch_2
    invoke-static {v0, v1}, Landroid/os/AggregateBatteryConsumer;->parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    nop

    :cond_4
    :goto_6
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v3

    return-object v3

    :cond_6
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No root element"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x1c450 -> :sswitch_2
        0x36ebcb -> :sswitch_1
        0xa70fdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/BatteryConsumer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryConsumer;

    invoke-virtual {v1}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/BatteryConsumer;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D
    .locals 12

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    nop

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    nop

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v0

    long-to-double v8, v2

    const-wide v10, 0x3efd208a5a912e32L    # 2.777777777777778E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v4

    const-wide v10, 0x3f15d867c3ece2a5L    # 8.333333333333333E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private blacklist printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_0

    const/4 v1, 0x1

    if-eq p8, v1, :cond_0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Landroid/os/BatteryConsumer;->powerModelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmp-long v1, p9, v1

    if-eqz v1, :cond_1

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p9, p10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v0

    const-wide v1, 0x10300000001L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000003L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v1

    const-wide v3, 0x10300000007L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/AggregateBatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-boolean v1, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/AggregateBatteryConsumer;->writePowerComponentModelProto(Landroid/util/proto/ProtoOutputStream;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/os/BatteryUsageStats;->writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V

    return-void
.end method

.method private blacklist writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 24

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v9

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->hasStatsProtoData()Z

    move-result v11

    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-nez v14, :cond_0

    cmp-long v14, v9, v12

    if-nez v14, :cond_0

    if-nez v11, :cond_0

    move-object/from16 v18, v1

    move/from16 v21, v2

    move/from16 v2, p2

    goto/16 :goto_3

    :cond_0
    const-wide v14, 0x20b00000005L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    nop

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v6

    const-wide v14, 0x10500000001L

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-eqz v11, :cond_1

    const-wide v14, 0x10b00000002L

    invoke-virtual {v5, v0, v14, v15}, Landroid/os/UidBatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    sget-object v6, Landroid/os/BatteryUsageStats;->UID_USAGE_TIME_PROCESS_STATES:[I

    array-length v14, v6

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    move-object/from16 v18, v1

    aget v1, v6, v15

    move/from16 v21, v2

    invoke-virtual {v5, v1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v22, v2, v16

    if-gtz v22, :cond_2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-wide/from16 v19, v7

    goto :goto_2

    :cond_2
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-wide/from16 v19, v7

    const-wide v5, 0x20b00000005L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v5, 0x10e00000001L

    invoke-virtual {v0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p0

    move-object/from16 v1, v18

    move-wide/from16 v7, v19

    move/from16 v2, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto :goto_1

    :cond_3
    move-object/from16 v18, v1

    move/from16 v21, v2

    move-object/from16 v22, v5

    move-wide/from16 v19, v7

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v1

    move/from16 v2, p2

    if-lt v1, v2, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v1

    move/from16 v21, v2

    move/from16 v2, p2

    :goto_4
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 35

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Estimated power use (mAh):"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Capacity: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", Rated: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getBatteryRatedCapacity()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", Typical: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getBatteryTypicalCapacity()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", Computed drain: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v14

    const-string v0, ", actual drain: "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "    Global"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v9

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v10

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/16 v0, 0x13

    const-wide/16 v16, 0x0

    if-ge v8, v0, :cond_2

    invoke-virtual {v9, v8}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v18

    invoke-virtual {v10, v8}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v20

    cmpl-double v0, v18, v16

    if-nez v0, :cond_1

    cmpl-double v0, v20, v16

    if-nez v0, :cond_1

    move/from16 v23, v8

    move-object v15, v9

    move-object/from16 v24, v14

    move-object v14, v10

    goto :goto_1

    :cond_1
    invoke-static {v8}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v8}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v16

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move/from16 v23, v8

    move/from16 v8, v22

    move-object v15, v9

    move-object/from16 v24, v14

    move-object v14, v10

    move-wide/from16 v9, v16

    invoke-direct/range {v0 .. v10}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V

    :goto_1
    add-int/lit8 v8, v23, 0x1

    move-object v10, v14

    move-object v9, v15

    move-object/from16 v14, v24

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    move/from16 v23, v8

    move-object v15, v9

    move-object/from16 v24, v14

    move-object v14, v10

    const/16 v0, 0x3e8

    move v9, v0

    :goto_2
    iget-object v0, v11, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit16 v0, v0, 0x3e8

    if-ge v9, v0, :cond_4

    nop

    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v18

    nop

    invoke-virtual {v14, v9}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v20

    cmpl-double v0, v18, v16

    if-nez v0, :cond_3

    cmpl-double v0, v20, v16

    if-nez v0, :cond_3

    move/from16 v23, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v9}, Landroid/os/BatteryConsumer;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v25

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move/from16 v23, v9

    move-wide/from16 v9, v25

    invoke-direct/range {v0 .. v10}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V

    :goto_3
    add-int/lit8 v9, v23, 0x1

    goto :goto_2

    :cond_4
    move/from16 v23, v9

    iget-boolean v0, v11, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    if-nez v0, :cond_5

    iget-boolean v0, v11, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    if-eqz v0, :cond_11

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v11, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v10, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v8, v10

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_10

    aget-object v7, v10, v6

    iget v2, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    iget v2, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-nez v2, :cond_7

    iget v2, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v15, v7}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v19

    invoke-virtual {v14, v7}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v25

    cmpl-double v2, v19, v16

    if-nez v2, :cond_8

    cmpl-double v2, v25, v16

    if-nez v2, :cond_8

    nop

    :goto_5
    move/from16 v31, v6

    move/from16 v33, v8

    move-object/from16 v27, v9

    move-object/from16 v34, v10

    const/16 v30, 0x0

    goto/16 :goto_9

    :cond_8
    iget v2, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-ne v2, v0, :cond_a

    iget v2, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eq v2, v1, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v21, v0

    move/from16 v22, v1

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    iget v0, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v1, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "      ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_b
    if-eqz v0, :cond_d

    if-nez v2, :cond_c

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v3, "screen "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_d
    if-nez v2, :cond_e

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    move/from16 v21, v0

    move/from16 v22, v1

    :goto_7
    iget v0, v7, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v23

    nop

    iget-boolean v0, v11, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    if-eqz v0, :cond_f

    invoke-virtual {v15, v7}, Landroid/os/BatteryConsumer;->getPowerModel(Landroid/os/BatteryConsumer$Key;)I

    move-result v0

    move/from16 v27, v0

    goto :goto_8

    :cond_f
    move/from16 v27, v4

    :goto_8
    invoke-virtual {v15, v7}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move/from16 v30, v4

    move-wide/from16 v4, v19

    move/from16 v31, v6

    move-object/from16 v32, v7

    move-wide/from16 v6, v25

    move/from16 v33, v8

    move/from16 v8, v27

    move-object/from16 v27, v9

    move-object/from16 v34, v10

    move-wide/from16 v9, v28

    invoke-direct/range {v0 .. v10}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDIJ)V

    move/from16 v0, v21

    move/from16 v1, v22

    :goto_9
    add-int/lit8 v6, v31, 0x1

    move-object/from16 v9, v27

    move/from16 v8, v33

    move-object/from16 v10, v34

    goto/16 :goto_4

    :cond_10
    move-object/from16 v27, v9

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v12, v13, v0}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v12, v13, v0}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpToProto(Ljava/io/FileDescriptor;)V
    .locals 2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public blacklist getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getBatteryCapacity()D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method public blacklist getBatteryRatedCapacity()D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryRatedCapacityMah:D

    return-wide v0
.end method

.method public blacklist getBatteryTimeRemainingMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getBatteryTypicalCapacity()D
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTypicalCapacityMah:D

    return-wide v0
.end method

.method public blacklist getChargeTimeRemainingMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getConsumedPower()D
    .locals 2

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCustomPowerComponentNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDischargeDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method public blacklist getDischargePercentage()I
    .locals 1

    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return v0
.end method

.method public blacklist getDischargedPowerRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatsDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    return-wide v0
.end method

.method public blacklist getStatsEndTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method public blacklist getStatsProto()[B
    .locals 10

    const v0, 0x1339e

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const v3, 0xafc8

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-direct {p0, v2, v0}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    if-gt v6, v3, :cond_0

    return-object v5

    :cond_0
    const-wide/32 v6, 0xafc8

    int-to-long v8, v4

    mul-long/2addr v8, v6

    array-length v3, v5

    int-to-long v6, v3

    div-long/2addr v8, v6

    const-wide/16 v6, 0x400

    sub-long/2addr v8, v6

    long-to-int v0, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-direct {p0, v1, v3}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist getStatsStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method public blacklist getUidBatteryConsumers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserBatteryConsumers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isProcessStateDataIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .locals 7

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Battery history was not requested in the BatteryUsageStatsQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerModels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToBatteryUsageStatsParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "battery_usage_stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_component_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "includes_proc_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "includes_screen_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "includes_power_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "start_timestamp"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "end_timestamp"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "duration"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "battery_capacity"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "discharge_pct"

    iget v3, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "discharge_lower"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "discharge_upper"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "discharge_duration"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "battery_remaining"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "charge_remaining"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v2}, Landroid/os/AggregateBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v3, p1}, Landroid/os/UidBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserBatteryConsumer;

    invoke-virtual {v3, p1}, Landroid/os/UserBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
