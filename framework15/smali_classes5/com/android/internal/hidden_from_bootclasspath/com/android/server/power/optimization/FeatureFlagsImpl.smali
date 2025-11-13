.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist batteryUsageStatsByPowerAndScreenState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableSystemServicePowerAttr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onewayBatteryStatsService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist powerMonitorApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedBatteryStats()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedConnectivityBatteryStats()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist streamlinedMiscBatteryStats()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
