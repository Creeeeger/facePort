.class Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTelephonyCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    .line 19305
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 19309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 19310
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 19311
    .local v2, "rilDataRadioTechnology":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 19312
    .local v3, "dataNetworkType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v4

    .line 19320
    .local v4, "nrState":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/16 v8, 0xe

    if-ne v2, v8, :cond_4

    .line 19321
    if-eq v3, v7, :cond_2

    const/16 v7, 0xd

    if-ne v3, v7, :cond_0

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    goto :goto_0

    .line 19332
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19336
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 19338
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_1

    .line 19324
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_3

    .line 19328
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 19330
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v5, v6, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_1

    .line 19340
    :cond_4
    if-ne v2, v7, :cond_6

    .line 19341
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 19345
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 19347
    :cond_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v5, v6, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_1

    .line 19349
    :cond_6
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 19353
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 19355
    :cond_7
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 19357
    :goto_1
    return-void
.end method
