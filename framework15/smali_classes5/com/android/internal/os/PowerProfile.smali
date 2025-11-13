.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;,
        Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;,
        Lcom/android/internal/os/PowerProfile$Subsystem;,
        Lcom/android/internal/os/PowerProfile$PowerGroup;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_NAME:Ljava/lang/String; = "name"

.field private static final greylist-max-o CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final greylist-max-o CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final greylist-max-o CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final greylist-max-o CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final blacklist CPU_POWER_BRACKETS_PREFIX:Ljava/lang/String; = "cpu.power_brackets.policy"

.field private static final blacklist CPU_SCALING_POLICY_POWER_POLICY:Ljava/lang/String; = "cpu.scaling_policy_power.policy"

.field private static final blacklist CPU_SCALING_STEP_POWER_POLICY:Ljava/lang/String; = "cpu.scaling_step_power.policy"

.field public static final greylist-max-o POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final greylist-max-o POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final blacklist POWER_BATTERY_TYPICAL_CAPACITY:Ljava/lang/String; = "battery.typical.capacity"

.field public static final greylist-max-o POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final greylist-max-o POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final greylist POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist POWER_BRACKETS_UNSPECIFIED:I = -0x1

.field public static final greylist-max-o POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final greylist POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final greylist POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final greylist-max-o POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final greylist-max-o POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final greylist POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final greylist-max-o POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final greylist-max-o POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final blacklist POWER_GROUP_DISPLAY_AMBIENT:Ljava/lang/String; = "ambient.on.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_FULL:Ljava/lang/String; = "screen.full.display"

.field public static final blacklist POWER_GROUP_DISPLAY_SCREEN_ON:Ljava/lang/String; = "screen.on.display"

.field public static final greylist-max-o POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final greylist-max-o POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final greylist POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final greylist POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final greylist POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final greylist POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final greylist POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final greylist-max-o POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final greylist-max-o POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final greylist POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final greylist POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final blacklist SUBSYSTEM_FIELDS_MASK:J = -0x1L

.field private static final blacklist SUBSYSTEM_MASK:J = 0xf00000000L

.field public static final blacklist SUBSYSTEM_MODEM:J = 0x100000000L

.field public static final blacklist SUBSYSTEM_NONE:J = 0x0L

.field public static final blacklist TAG:Ljava/lang/String; = "PowerProfile"

.field private static final greylist-max-o TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final greylist-max-o TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final greylist-max-o TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final greylist-max-o TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_MODEM:Ljava/lang/String; = "modem"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field static final blacklist sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

.field static final greylist-max-o sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

.field private blacklist mCpuPowerBracketCount:I

.field private blacklist mCpuScalingPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNumDisplays:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/power/ModemPowerProfile;

    invoke-direct {v0}, Lcom/android/internal/power/ModemPowerProfile;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    const v1, 0x117007a

    goto :goto_0

    :cond_0
    const v1, 0x1170079

    :goto_0
    nop

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/PowerProfile;->initLocked(Landroid/content/Context;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getDefaultValuesFromConfig(Landroid/content/res/Resources;)V
    .locals 8

    const v0, 0x10e004c

    const v1, 0x10e004a

    const v2, 0x10e0049

    const v3, 0x10e004b

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const-string v1, "bluetooth.controller.tx"

    const-string v2, "bluetooth.controller.voltage"

    const-string v3, "bluetooth.controller.idle"

    const-string v4, "bluetooth.controller.rx"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    aget v4, v0, v2

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-lez v4, :cond_1

    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static blacklist getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleDeprecatedModemConstant(ILjava/lang/String;I)V
    .locals 6

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    return-void
.end method

.method private greylist-max-o initCpuClusters()V
    .locals 11

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v10, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    aput-object v10, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v0, 0x1

    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v8, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v4, "cpu.core_power.cluster0"

    const/4 v6, 0x0

    const-string v2, "cpu.core_speeds.cluster0"

    const-string v3, "cpu.cluster_power.cluster0"

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V

    const/4 v1, 0x0

    aput-object v8, v7, v1

    :goto_1
    return-void
.end method

.method private blacklist initCpuPowerBrackets()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const-string v3, "cpu.power_brackets.policy"

    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    iget-object v6, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    array-length v6, v6

    new-array v7, v6, [I

    iput-object v7, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    sget-object v7, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Power brackets should be specified for all scaling policies or none"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    return-void

    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_8

    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    array-length v7, v6

    iget-object v8, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v8, v8

    if-ne v7, v8, :cond_7

    const/4 v7, 0x0

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_6

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    aput v8, v9, v7

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    if-le v8, v9, :cond_5

    iput v8, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong number of items in cpu.power_brackets.policy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    iget v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    return-void
.end method

.method private blacklist initCpuScalingPolicies()V
    .locals 15

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "cpu.scaling_policy_power.policy"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    nop

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "cpu.scaling_step_power.policy"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    nop

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v0, :cond_a

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_9

    sget-object v8, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Double;

    if-nez v8, :cond_4

    if-eqz v9, :cond_8

    :cond_4
    if-eqz v9, :cond_6

    array-length v10, v9

    new-array v10, v10, [D

    const/4 v11, 0x0

    :goto_3
    array-length v12, v9

    if-ge v11, v12, :cond_5

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    new-array v10, v6, [D

    :goto_4
    iget-object v11, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_5

    :cond_7
    move-wide v13, v1

    :goto_5
    invoke-direct {v12, v13, v14, v10, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile$CpuScalingPolicyPower-IA;)V

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    goto/16 :goto_a

    :cond_a
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v7, v4

    move v8, v6

    :goto_6
    if-ge v8, v7, :cond_b

    aget-object v9, v4, v8

    add-int/lit8 v0, v3, 0x1

    iget v10, v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    add-int/2addr v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x1

    if-lez v0, :cond_e

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v2

    :goto_7
    if-ge v6, v3, :cond_f

    aget-object v7, v2, v6

    iget-object v8, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_d

    new-array v11, v10, [D

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_c

    iget-object v13, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v13, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v13

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_c
    goto :goto_9

    :cond_d
    new-array v11, v4, [D

    :goto_9
    iget-object v12, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v13, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    invoke-direct {v13, v8, v9, v11, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile$CpuScalingPolicyPower-IA;)V

    invoke-virtual {v12, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v12, v7, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    add-int/2addr v1, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    const-string v9, "cpu.active"

    invoke-virtual {p0, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    new-array v4, v4, [D

    aput-wide v1, v4, v6

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[DLcom/android/internal/os/PowerProfile$CpuScalingPolicyPower-IA;)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    :goto_a
    return-void
.end method

.method private blacklist initDisplays()V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    :goto_0
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    const-string v2, "ambient.on.display"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    const-string/jumbo v6, "screen.on.display"

    invoke-virtual {p0, v6, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    const-string/jumbo v7, "screen.full.display"

    invoke-virtual {p0, v7, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "ambient.on"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    const/4 v3, 0x0

    const-string v4, " instead."

    const-string v8, "PowerProfile"

    if-eqz v1, :cond_1

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_1

    invoke-static {v2, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ambient.on is deprecated! Use "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_1
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string/jumbo v9, "screen.on"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_2

    invoke-static {v6, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "screen.on is deprecated! Use "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_2
    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string/jumbo v9, "screen.full"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    if-eqz v6, :cond_3

    iget v9, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    if-nez v9, :cond_3

    invoke-static {v7, v0}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screen.full is deprecated! Use "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    iput v5, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    goto/16 :goto_0
.end method

.method private blacklist initLocked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuScalingPolicies()V

    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuPowerBrackets()V

    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initDisplays()V

    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initModem()V

    return-void
.end method

.method private blacklist initLocked(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    return-void
.end method

.method private blacklist initModem()V
    .locals 3

    const-string/jumbo v0, "modem.controller.sleep"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x10000000

    const-string/jumbo v2, "modem.controller.idle"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x20000000

    const-string/jumbo v2, "modem.controller.rx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x30000000

    const-string/jumbo v2, "modem.controller.tx"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x31000000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x32000000

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x33000000

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    const/high16 v0, 0x34000000

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/os/PowerProfile;->handleDeprecatedModemConstant(ILjava/lang/String;I)V

    return-void
.end method

.method private blacklist isIgnoreType(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method static synthetic blacklist lambda$dump$1(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/Double;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method private static blacklist readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .locals 11

    const-string/jumbo v0, "item"

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "device"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Double;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    instance-of v0, p0, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/os/PowerProfile;->getDefaultValuesFromConfig(Landroid/content/res/Resources;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v5, "value"

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Double;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_4
    const-string v6, "array"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "modem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v5, p0}, Lcom/android/internal/power/ModemPowerProfile;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_7
    :goto_1
    const/4 v5, 0x0

    if-nez v1, :cond_8

    invoke-interface {p0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v7, 0x0

    :try_start_3
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v7, v9

    goto :goto_2

    :catch_0
    move-exception v9

    :goto_2
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    :goto_3
    nop

    :goto_4
    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    instance-of v4, p0, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_b

    move-object v4, p0

    check-cast v4, Landroid/content/res/XmlResourceParser;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v0
.end method

.method private blacklist writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .locals 6

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p3, p4, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "Modem values:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1, v0}, Lcom/android/internal/power/ModemPowerProfile;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    const-string v0, "cpu.suspend"

    const-wide v1, 0x10100000001L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "cpu.idle"

    const-wide v1, 0x10100000002L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "cpu.active"

    const-wide v3, 0x10100000003L

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    const-wide v3, 0x20b00000028L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p1, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    iget-object v5, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_0

    aget-object v9, v5, v8

    const-wide v10, 0x20300000004L

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Double;

    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    const-wide v9, 0x20100000005L

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "wifi.scan"

    const-wide v1, 0x10100000004L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.on"

    const-wide v1, 0x10100000005L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.active"

    const-wide v1, 0x10100000006L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.controller.idle"

    const-wide v1, 0x10100000007L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.controller.rx"

    const-wide v1, 0x10100000008L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.controller.tx"

    const-wide v1, 0x10100000009L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.controller.tx_levels"

    const-wide v1, 0x2010000000aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.controller.voltage"

    const-wide v1, 0x1010000000bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.controller.idle"

    const-wide v1, 0x1010000000cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.controller.rx"

    const-wide v1, 0x1010000000dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.controller.tx"

    const-wide v1, 0x1010000000eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.controller.voltage"

    const-wide v1, 0x1010000000fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "modem.controller.sleep"

    const-wide v1, 0x10100000010L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "modem.controller.idle"

    const-wide v1, 0x10100000011L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "modem.controller.rx"

    const-wide v1, 0x10100000012L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "modem.controller.tx"

    const-wide v1, 0x20100000013L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "modem.controller.voltage"

    const-wide v1, 0x10100000014L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "gps.on"

    const-wide v1, 0x10100000015L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "gps.signalqualitybased"

    const-wide v1, 0x20100000016L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantArrayToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "gps.voltage"

    const-wide v1, 0x10100000017L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.on"

    const-wide v1, 0x10100000018L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.active"

    const-wide v1, 0x10100000019L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "bluetooth.at"

    const-wide v1, 0x1010000001aL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "ambient.on"

    const-wide v1, 0x1010000001bL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "screen.on"

    const-wide v1, 0x1010000001cL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "radio.on"

    const-wide v1, 0x1010000001dL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "radio.scanning"

    const-wide v1, 0x1010000001eL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "radio.active"

    const-wide v1, 0x1010000001fL

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "screen.full"

    const-wide v1, 0x10100000020L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "audio"

    const-wide v1, 0x10100000021L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "video"

    const-wide v1, 0x10100000022L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "camera.flashlight"

    const-wide v1, 0x10100000023L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "memory.bandwidths"

    const-wide v1, 0x10100000024L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "camera.avg"

    const-wide v1, 0x10100000025L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string/jumbo v0, "wifi.batchedscan"

    const-wide v1, 0x10100000026L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    const-string v0, "battery.capacity"

    const-wide v1, 0x10100000027L

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->writePowerConstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;J)V

    return-void
.end method

.method public blacklist getAllFrequencies()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    iget-object v3, v2, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getAverageBatteryDrainMa(J)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAverageBatteryDrainOrDefaultMa(JD)D
    .locals 6

    const-wide v0, 0xf00000000L

    and-long/2addr v0, p1

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    const-wide v3, 0x100000000L

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainMa(I)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    return-wide p3

    :cond_1
    return-wide v3
.end method

.method public greylist getAveragePower(Ljava/lang/String;)D
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->isIgnoreType(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getAveragePower(Ljava/lang/String;I)D
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->isIgnoreType(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v3, v0

    if-le v3, p2, :cond_2

    if-ltz p2, :cond_2

    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_2
    if-ltz p2, :cond_4

    array-length v3, v0

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_4
    :goto_0
    return-wide v1

    :cond_5
    return-wide v1
.end method

.method public greylist-max-o getAveragePowerForCpuCluster(I)D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getAveragePowerForCpuCore(II)D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getAveragePowerForCpuScalingPolicy(I)D
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->policyPower:D

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getAveragePowerForCpuScalingStep(II)D
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    aget-wide v1, v1, p2

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;I)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAveragePowerForOrdinal(Ljava/lang/String;ID)D
    .locals 3

    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->getOrdinalPowerType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    return-wide v1
.end method

.method public greylist-max-o getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 2

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide p2
.end method

.method public greylist getBatteryCapacity()D
    .locals 2

    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBatteryTypicalCapacity()D
    .locals 2

    const-string v0, "battery.typical.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCpuPowerBracketCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuPowerBracketCount:I

    return v0
.end method

.method public blacklist getCpuPowerBracketForScalingStep(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuScalingPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->powerBrackets:[I

    aget v1, v1, p2

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o getNumCoresInCpuCluster(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumCpuClusters()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public blacklist getNumDisplays()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/PowerProfile;->mNumDisplays:I

    return v0
.end method

.method public greylist-max-o getNumElements(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumSpeedStepsInCpuCluster(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initForTesting(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;->initForTesting(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    return-void
.end method

.method public blacklist initForTesting(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .locals 3

    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sModemPowerProfile:Lcom/android/internal/power/ModemPowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/power/ModemPowerProfile;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v1, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    instance-of v2, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    nop

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
