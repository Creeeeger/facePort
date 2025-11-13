.class public final synthetic Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/power/SecPowerUI$Receiver;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mLastBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

    iget v2, v0, Lcom/android/systemui/power/BatteryStateData;->bucket:I

    iget v3, v1, Lcom/android/systemui/power/BatteryStateData;->bucket:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, v1, Lcom/android/systemui/power/BatteryStateData;->plugged:Z

    if-ne v2, v3, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    iget-boolean v10, v0, Lcom/android/systemui/power/BatteryStateData;->plugged:Z

    if-nez v10, :cond_4

    if-lt v2, v3, :cond_2

    if-eqz v6, :cond_4

    :cond_2
    if-gez v2, :cond_4

    iget v6, v0, Lcom/android/systemui/power/BatteryStateData;->batteryStatus:I

    if-eq v6, v5, :cond_4

    if-eq v2, v3, :cond_3

    move-object v0, v9

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    if-eqz v1, :cond_3

    iput-boolean v4, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    iput-boolean v5, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningLowBatteryTask:Z

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryWarningTask:Lcom/android/systemui/power/SecPowerUI$1;

    const-wide/16 v0, 0x1f4

    invoke-virtual {v8, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_3
    check-cast v9, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v9, v7}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showLowBatteryWarning(Z)V

    goto :goto_3

    :cond_4
    if-nez v10, :cond_6

    if-le v2, v3, :cond_5

    if-lez v2, :cond_5

    goto :goto_2

    :cond_5
    check-cast v9, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean p0, v9, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    if-eqz p0, :cond_8

    iget p0, v0, Lcom/android/systemui/power/BatteryStateData;->batteryLevel:I

    iget v0, v1, Lcom/android/systemui/power/BatteryStateData;->batteryLevel:I

    if-eq p0, v0, :cond_8

    invoke-virtual {v9}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningLowBatteryTask:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryWarningTask:Lcom/android/systemui/power/SecPowerUI$1;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningLowBatteryTask:Z

    :cond_7
    check-cast v9, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v4, v9, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v9}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    invoke-virtual {v9}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    :cond_8
    :goto_3
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessMisalignTask:Z

    if-eqz v0, :cond_9

    const-string v0, "PowerUI"

    const-string v1, "mWirelessMisalignTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
