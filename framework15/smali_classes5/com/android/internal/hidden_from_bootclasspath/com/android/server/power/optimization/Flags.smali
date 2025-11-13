.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags; = null

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_BY_POWER_AND_SCREEN_STATE:Ljava/lang/String; = "com.android.server.power.optimization.battery_usage_stats_by_power_and_screen_state"

.field public static final blacklist FLAG_DISABLE_SYSTEM_SERVICE_POWER_ATTR:Ljava/lang/String; = "com.android.server.power.optimization.disable_system_service_power_attr"

.field public static final blacklist FLAG_ONEWAY_BATTERY_STATS_SERVICE:Ljava/lang/String; = "com.android.server.power.optimization.oneway_battery_stats_service"

.field public static final blacklist FLAG_POWER_MONITOR_API:Ljava/lang/String; = "com.android.server.power.optimization.power_monitor_api"

.field public static final blacklist FLAG_STREAMLINED_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_battery_stats"

.field public static final blacklist FLAG_STREAMLINED_CONNECTIVITY_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_connectivity_battery_stats"

.field public static final blacklist FLAG_STREAMLINED_MISC_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_misc_battery_stats"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist batteryUsageStatsByPowerAndScreenState()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->batteryUsageStatsByPowerAndScreenState()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableSystemServicePowerAttr()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->disableSystemServicePowerAttr()Z

    move-result v0

    return v0
.end method

.method public static blacklist onewayBatteryStatsService()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->onewayBatteryStatsService()Z

    move-result v0

    return v0
.end method

.method public static blacklist powerMonitorApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->powerMonitorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedBatteryStats()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedBatteryStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedConnectivityBatteryStats()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedConnectivityBatteryStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedMiscBatteryStats()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedMiscBatteryStats()Z

    move-result v0

    return v0
.end method
