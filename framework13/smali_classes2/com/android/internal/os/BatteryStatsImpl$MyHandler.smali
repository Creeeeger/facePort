.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 479
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 480
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 481
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 485
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    .line 486
    .local v0, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 515
    :pswitch_0
    if-eqz v0, :cond_3

    .line 516
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    .line 518
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSystemServicesReady:Z

    if-eqz v1, :cond_3

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryStatsService.action.BATTERYSTATS_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    if-eqz v0, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v4, :cond_0

    const-string v4, "android.os.action.CHARGING"

    goto :goto_0

    .line 502
    :cond_0
    const-string v4, "android.os.action.DISCHARGING"

    :goto_0
    nop

    .line 503
    .local v4, "action":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    invoke-interface {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 508
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mSystemServicesReady:Z

    if-nez v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mPendingReportCharging:Z

    .line 512
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "action":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 503
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 493
    :pswitch_2
    if-eqz v0, :cond_3

    .line 494
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_2

    .line 488
    :pswitch_3
    if-eqz v0, :cond_3

    .line 489
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    .line 526
    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
