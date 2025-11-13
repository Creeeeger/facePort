.class public abstract Landroid/os/BatteryStats$Uid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid$Pkg;,
        Landroid/os/BatteryStats$Uid$Proc;,
        Landroid/os/BatteryStats$Uid$Pid;,
        Landroid/os/BatteryStats$Uid$Sensor;,
        Landroid/os/BatteryStats$Uid$Wakelock;
    }
.end annotation


# static fields
.field public static final greylist-max-o NUM_PROCESS_STATE:I = 0x7

.field public static final greylist-max-o NUM_USER_ACTIVITY_TYPES:I

.field public static final greylist-max-o NUM_WIFI_BATCHED_SCAN_BINS:I = 0x5

.field public static final greylist-max-o PROCESS_STATE_BACKGROUND:I = 0x3

.field public static final greylist-max-o PROCESS_STATE_CACHED:I = 0x6

.field public static final greylist-max-o PROCESS_STATE_FOREGROUND:I = 0x2

.field public static final greylist-max-o PROCESS_STATE_FOREGROUND_SERVICE:I = 0x1

.field public static final greylist-max-o PROCESS_STATE_HEAVY_WEIGHT:I = 0x5

.field static final greylist-max-o PROCESS_STATE_NAMES:[Ljava/lang/String;

.field public static final blacklist PROCESS_STATE_NONEXISTENT:I = 0x7

.field public static final greylist-max-o PROCESS_STATE_TOP:I = 0x0

.field public static final greylist-max-o PROCESS_STATE_TOP_SLEEPING:I = 0x4

.field public static final greylist-max-o UID_PROCESS_TYPES:[Ljava/lang/String;

.field static final greylist-max-o USER_ACTIVITY_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 994
    const-string v0, "Top"

    const-string v1, "Fg Service"

    const-string v2, "Foreground"

    const-string v3, "Background"

    const-string v4, "Top Sleeping"

    const-string v5, "Heavy Weight"

    const-string v6, "Cached"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    .line 1001
    const-string v1, "T"

    const-string v2, "FS"

    const-string v3, "F"

    const-string v4, "B"

    const-string v5, "TS"

    const-string v6, "HW"

    const-string v7, "C"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    .line 1023
    const-string/jumbo v0, "other"

    const-string v1, "button"

    const-string/jumbo v2, "touch"

    const-string v3, "accessibility"

    const-string v4, "attention"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    .line 1027
    array-length v0, v0

    sput v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothDutyScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getBluetoothMeasuredBatteryConsumptionUC()J
.end method

.method public abstract blacklist getBluetoothMeasuredBatteryConsumptionUC(I)J
.end method

.method public abstract greylist-max-o getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
.end method

.method public abstract greylist-max-o getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
.end method

.method public abstract greylist-max-o getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getCpuActiveTime()J
.end method

.method public abstract blacklist getCpuActiveTime(I)J
.end method

.method public abstract greylist-max-o getCpuClusterTimes()[J
.end method

.method public abstract blacklist getCpuFreqTimes([JI)Z
.end method

.method public abstract greylist-max-o getCpuFreqTimes(I)[J
.end method

.method public abstract blacklist getCpuMeasuredBatteryConsumptionUC()J
.end method

.method public abstract blacklist getCpuMeasuredBatteryConsumptionUC(I)J
.end method

.method public abstract blacklist getCustomConsumerMeasuredBatteryConsumptionUC()[J
.end method

.method public abstract greylist-max-o getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract greylist-max-o getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract blacklist getDisplayPowerDrain(I)J
.end method

.method public abstract blacklist getDisplayTime(I)J
.end method

.method public abstract greylist-max-o getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getFullWifiLockTime(JI)J
.end method

.method public abstract blacklist getGnssMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist-max-o getJobCompletionStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getJobStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist getMobileRadioActiveTime(I)J
.end method

.method public abstract blacklist getMobileRadioActiveTimeInProcessState(I)J
.end method

.method public abstract greylist-max-o getMobileRadioApWakeupCount(I)J
.end method

.method public abstract blacklist getMobileRadioMeasuredBatteryConsumptionUC()J
.end method

.method public abstract blacklist getMobileRadioMeasuredBatteryConsumptionUC(I)J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-o getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract greylist getPackageStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getPidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getProcessStateTime(IJI)J
.end method

.method public abstract greylist-max-o getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getProcessStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getProportionalSystemServiceUsage()D
.end method

.method public abstract blacklist getScreenOffCpuFreqTimes([JI)Z
.end method

.method public abstract greylist-max-o getScreenOffCpuFreqTimes(I)[J
.end method

.method public abstract blacklist getScreenOnMeasuredBatteryConsumptionUC()J
.end method

.method public abstract greylist getSensorStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSpeakerMediaTime(II)J
.end method

.method public abstract greylist-max-o getSyncStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getSystemCpuTimeUs(I)J
.end method

.method public abstract greylist-max-o getTimeAtCpuSpeed(III)J
.end method

.method public abstract greylist getUid()I
.end method

.method public abstract greylist-max-o getUserActivityCount(II)I
.end method

.method public abstract greylist-max-o getUserCpuTimeUs(I)J
.end method

.method public abstract greylist-max-o getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist getWakelockStats()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiBatchedScanCount(II)I
.end method

.method public abstract greylist-max-r getWifiBatchedScanTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiMeasuredBatteryConsumptionUC()J
.end method

.method public abstract blacklist getWifiMeasuredBatteryConsumptionUC(I)J
.end method

.method public abstract greylist getWifiMulticastTime(JI)J
.end method

.method public abstract greylist-max-o getWifiRadioApWakeupCount(I)J
.end method

.method public abstract greylist getWifiRunningTime(JI)J
.end method

.method public abstract greylist-max-o getWifiScanActualTime(J)J
.end method

.method public abstract greylist-max-o getWifiScanBackgroundCount(I)I
.end method

.method public abstract greylist-max-o getWifiScanBackgroundTime(J)J
.end method

.method public abstract greylist-max-o getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiScanCount(I)I
.end method

.method public abstract greylist getWifiScanTime(JI)J
.end method

.method public abstract greylist-max-o getWifiScanTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasNetworkActivity()Z
.end method

.method public abstract blacklist hasSpeakerActivity()Z
.end method

.method public abstract greylist-max-o hasUserActivity()Z
.end method

.method public abstract greylist-max-o noteActivityPausedLocked(J)V
.end method

.method public abstract greylist-max-o noteActivityResumedLocked(J)V
.end method

.method public abstract greylist-max-o noteFullWifiLockAcquiredLocked(J)V
.end method

.method public abstract greylist-max-o noteFullWifiLockReleasedLocked(J)V
.end method

.method public abstract greylist-max-o noteUserActivityLocked(I)V
.end method

.method public abstract greylist-max-o noteWifiBatchedScanStartedLocked(IJ)V
.end method

.method public abstract greylist-max-o noteWifiBatchedScanStoppedLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiMulticastDisabledLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiMulticastEnabledLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiRunningLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiScanStartedLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiScanStoppedLocked(J)V
.end method

.method public abstract greylist-max-o noteWifiStoppedLocked(J)V
.end method
