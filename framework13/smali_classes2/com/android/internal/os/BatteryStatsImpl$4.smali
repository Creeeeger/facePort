.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->registerWifiApStateReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 7690
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReceive$0$com-android-internal-os-BatteryStatsImpl$4(I)V
    .locals 7
    .param p1, "State"    # I

    .line 7696
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 7697
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 7698
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 7697
    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mnoteHotspotStateLocked(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V

    .line 7699
    monitor-exit v0

    .line 7700
    return-void

    .line 7699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7693
    const-string/jumbo v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7695
    .local v0, "State":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BatteryStatsImpl$4;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7701
    return-void
.end method
