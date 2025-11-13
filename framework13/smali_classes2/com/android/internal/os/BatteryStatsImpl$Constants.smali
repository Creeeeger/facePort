.class public final Lcom/android/internal/os/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final blacklist DEFAULT_BATTERY_CHARGED_DELAY_MS:I = 0xdbba0

.field private static final greylist-max-o DEFAULT_BATTERY_LEVEL_COLLECTION_DELAY_MS:J = 0x493e0L

.field private static final greylist-max-o DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J = 0x927c0L

.field private static final greylist-max-o DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME:J = 0x3e8L

.field private static final blacklist DEFAULT_MAX_HISTORY_BUFFER_KB:I = 0x80

.field private static final blacklist DEFAULT_MAX_HISTORY_BUFFER_LOW_RAM_DEVICE_KB:I = 0x40

.field private static final blacklist DEFAULT_MAX_HISTORY_FILES:I = 0x20

.field private static final blacklist DEFAULT_MAX_HISTORY_FILES_LOW_RAM_DEVICE:I = 0x40

.field private static final blacklist DEFAULT_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J = 0xea60L

.field private static final greylist-max-o DEFAULT_TRACK_CPU_ACTIVE_CLUSTER_TIME:Z = true

.field private static final greylist-max-o DEFAULT_UID_REMOVE_DELAY_MS:J = 0x493e0L

.field public static final blacklist KEY_BATTERY_CHARGED_DELAY_MS:Ljava/lang/String; = "battery_charged_delay_ms"

.field public static final greylist-max-o KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS:Ljava/lang/String; = "battery_level_collection_delay_ms"

.field public static final greylist-max-o KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:Ljava/lang/String; = "external_stats_collection_rate_limit_ms"

.field public static final greylist-max-o KEY_KERNEL_UID_READERS_THROTTLE_TIME:Ljava/lang/String; = "kernel_uid_readers_throttle_time"

.field public static final blacklist KEY_MAX_HISTORY_BUFFER_KB:Ljava/lang/String; = "max_history_buffer_kb"

.field public static final blacklist KEY_MAX_HISTORY_FILES:Ljava/lang/String; = "max_history_files"

.field public static final blacklist KEY_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:Ljava/lang/String; = "procstate_change_collection_delay_ms"

.field public static final greylist-max-o KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS:Ljava/lang/String; = "proc_state_cpu_times_read_delay_ms"

.field public static final greylist-max-o KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME:Ljava/lang/String; = "track_cpu_active_cluster_time"

.field public static final greylist-max-o KEY_UID_REMOVE_DELAY_MS:Ljava/lang/String; = "uid_remove_delay_ms"


# instance fields
.field public blacklist BATTERY_CHARGED_DELAY_MS:I

.field public greylist-max-o BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public greylist-max-o EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public greylist-max-o KERNEL_UID_READERS_THROTTLE_TIME:J

.field public blacklist MAX_HISTORY_BUFFER:I

.field public blacklist MAX_HISTORY_FILES:I

.field public blacklist PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public greylist-max-o TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public greylist-max-o UID_REMOVE_DELAY_MS:J

.field private final greylist-max-o mParser:Landroid/util/KeyValueListParser;

.field private greylist-max-o mResolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 19487
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 19488
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 19473
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 19474
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 19476
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 19478
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 19482
    const v0, 0xdbba0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 19485
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 19489
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19490
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19491
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_0

    .line 19493
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19494
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 19496
    :goto_0
    return-void
.end method

.method private blacklist updateBatteryChargedDelayMsLocked()V
    .locals 5

    .line 19597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 19601
    .local v0, "delay":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0xdbba0

    const-string v3, "battery_charged_delay_ms"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 19605
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19606
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19607
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19609
    :cond_1
    return-void
.end method

.method private greylist-max-o updateConstants()V
    .locals 7

    .line 19555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19557
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19563
    goto :goto_0

    .line 19592
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 19559
    :catch_0
    move-exception v1

    .line 19562
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19565
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 19567
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "kernel_uid_readers_throttle_time"

    const-wide/16 v5, 0x3e8

    .line 19568
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 19567
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 19570
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    .line 19571
    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 19570
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    .line 19572
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 19575
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 19578
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "procstate_change_collection_delay_ms"

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 19582
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_history_files"

    .line 19583
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x40

    if-eqz v3, :cond_0

    .line 19584
    move v3, v4

    goto :goto_1

    .line 19585
    :cond_0
    const/16 v3, 0x20

    .line 19582
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    .line 19586
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "max_history_buffer_kb"

    .line 19587
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19588
    goto :goto_2

    .line 19589
    :cond_1
    const/16 v4, 0x80

    .line 19586
    :goto_2
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 19591
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 19592
    monitor-exit v0

    .line 19593
    return-void

    .line 19592
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist updateDisplayHighRefreshRateLocked()V
    .locals 3

    .line 19627
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "refresh_rate_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 19630
    .local v0, "hrrMode":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSubScreenState:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteSubDisplayHighRefreshRateLocked(II)V

    .line 19631
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteDisplayHighRefreshRateLocked(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19634
    .end local v0    # "hrrMode":I
    goto :goto_0

    .line 19632
    :catch_0
    move-exception v0

    .line 19633
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 19635
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return-void
.end method

.method private greylist-max-o updateKernelUidReadersThrottleTime(JJ)V
    .locals 3
    .param p1, "oldTimeMs"    # J
    .param p3, "newTimeMs"    # J

    .line 19640
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 19641
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 19642
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    .line 19643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    .line 19644
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    .line 19645
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 19646
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    .line 19648
    :cond_0
    return-void
.end method

.method private blacklist updateScreenAutoBrightnessModeLocked()V
    .locals 2

    .line 19615
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 19618
    .local v0, "brightnessMode":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenAutoBrightnessLocked(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19621
    .end local v0    # "brightnessMode":I
    goto :goto_0

    .line 19619
    :catch_0
    move-exception v0

    .line 19620
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 19622
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return-void
.end method

.method private greylist-max-o updateUidRemoveDelay(J)V
    .locals 1
    .param p1, "newTimeMs"    # J

    .line 19652
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 19653
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 19654
    return-void
.end method


# virtual methods
.method public greylist-max-o dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 19657
    const-string/jumbo v0, "track_cpu_active_cluster_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19658
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 19659
    const-string v1, "kernel_uid_readers_throttle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19660
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19661
    const-string v1, "external_stats_collection_rate_limit_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19662
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19663
    const-string v1, "battery_level_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19664
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19665
    const-string v1, "procstate_change_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19666
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 19667
    const-string v1, "max_history_files"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19668
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 19669
    const-string v1, "max_history_buffer_kb"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19670
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 19671
    const-string v1, "battery_charged_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19672
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 19673
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 19523
    const-string v0, "battery_charging_state_update_delay"

    .line 19524
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19523
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19526
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19527
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 19528
    monitor-exit v0

    .line 19529
    return-void

    .line 19528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 19533
    :cond_0
    const-string v0, "screen_brightness_mode"

    .line 19534
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19533
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19536
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19537
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 19538
    monitor-exit v0

    .line 19539
    return-void

    .line 19538
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 19542
    :cond_1
    const-string v0, "refresh_rate_mode"

    .line 19543
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19542
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 19546
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 19547
    monitor-exit v0

    .line 19548
    return-void

    .line 19547
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 19551
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 19552
    return-void
.end method

.method public greylist-max-o startObserving(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 19499
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19500
    nop

    .line 19501
    const-string v0, "battery_stats_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 19500
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19503
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19504
    const-string v2, "battery_charging_state_update_delay"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19503
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19508
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19509
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19508
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19512
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 19513
    const-string v2, "refresh_rate_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 19512
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19516
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 19517
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateScreenAutoBrightnessModeLocked()V

    .line 19518
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateDisplayHighRefreshRateLocked()V

    .line 19519
    return-void
.end method
