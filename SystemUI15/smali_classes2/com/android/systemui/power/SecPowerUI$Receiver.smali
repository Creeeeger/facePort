.class public final Lcom/android/systemui/power/SecPowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHasReceivedBattery:Z

.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI$Receiver;->mHasReceivedBattery:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v8, "misc_event"

    const/4 v9, 0x0

    const-string/jumbo v10, "safe mode case : "

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "PowerUI.Notification"

    const/4 v14, 0x1

    const-string v15, "PowerUI"

    if-eqz v12, :cond_79

    iput-boolean v14, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->mHasReceivedBattery:Z

    iget-object v10, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v11, v10, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    const-string v12, "level"

    const/16 v2, 0x64

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, v10, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget-object v10, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v12, v10, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v10, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v10, v3, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const-string v6, "plugged"

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v6, v3, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eq v10, v6, :cond_0

    iget-object v6, v3, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-boolean v9, v3, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v6, v3, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eqz v6, :cond_1

    move v6, v14

    goto :goto_0

    :cond_1
    move v6, v9

    :goto_0
    if-eqz v10, :cond_2

    move/from16 v16, v14

    goto :goto_1

    :cond_2
    move/from16 v16, v9

    :goto_1
    invoke-virtual {v3, v11}, Lcom/android/systemui/power/SecPowerUI;->findBatteryLevelBucket$1(I)I

    move-result v3

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v2, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    invoke-virtual {v4, v2}, Lcom/android/systemui/power/SecPowerUI;->findBatteryLevelBucket$1(I)I

    move-result v2

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v5, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    iget-boolean v7, v4, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    const-string v9, "online"

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const-string v9, "hv_charger"

    const/4 v14, 0x0

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryHighVoltageCharger:Z

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v9, v4, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    move/from16 v19, v5

    const/4 v5, 0x4

    if-eqz v9, :cond_5

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    and-int/2addr v9, v5

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    move v9, v14

    :goto_2
    iput-boolean v9, v4, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const-string v9, "charge_type"

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v14, 0x2

    if-ne v9, v14, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, v4, Lcom/android/systemui/power/SecPowerUI;->mBatterySlowCharger:Z

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "mBootCompleted = "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v9, v9, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " |  mFullyConnected = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v9, v9, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    invoke-static {v4, v9, v15}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v9, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    iget v14, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    iget-boolean v5, v4, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessOverheat:Z

    move/from16 v20, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v5, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    const-string v8, "health"

    move-object/from16 v21, v13

    const/4 v13, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v13, 0x3

    if-ne v8, v13, :cond_6

    const/high16 v22, 0x100000

    and-int v5, v5, v22

    if-eqz v5, :cond_6

    const/16 v8, 0x8

    :cond_6
    iput v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v5, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    const v8, 0x8000

    and-int/2addr v5, v8

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v4, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessOverheat:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BATTERY_HEALTH_CHECK / batteryHealth : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v5, v5, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / wirelessOverheat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v5, v5, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessOverheat:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v5, v4, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    iget v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v13, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    check-cast v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput v8, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStatus:I

    iput v13, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    iget v5, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    sget-boolean v8, Lcom/android/systemui/PowerUiRune;->HV_CHARGER_ENABLE_POPUP:Z

    if-nez v8, :cond_9

    sget-boolean v13, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    if-eqz v13, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v23, v8

    goto :goto_6

    :cond_9
    :goto_5
    const-string v13, "current_event"

    move/from16 v23, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v13, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    iput v13, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    :goto_6
    iget-object v4, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    sget-boolean v13, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    move/from16 v24, v8

    if-eqz v13, :cond_c

    iget v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    const/16 v17, 0x10

    and-int/lit8 v25, v8, 0x10

    if-eqz v25, :cond_a

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    :goto_7
    iput v8, v4, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    :cond_c
    const-string v8, "charger_type"

    move/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v4, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    if-eqz v4, :cond_10

    iget-object v8, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    move/from16 v26, v7

    const-string v7, "protection"

    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v8, Lcom/android/systemui/power/SecPowerUI;->mProtectionEvent:I

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v7, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-nez v7, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->setSleepChargingOff()V

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    if-lez v7, :cond_f

    iget v7, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    const/16 v13, 0x64

    if-ne v7, v13, :cond_e

    iput-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isSleepChargingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    const-string v7, ""

    iput-object v7, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move v7, v13

    goto :goto_8

    :cond_f
    const/16 v7, 0x64

    :goto_8
    if-ne v11, v7, :cond_11

    iget v7, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    if-eq v11, v7, :cond_11

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isSleepChargingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "show again AdaptiveProtection Notification"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v7, v0, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mChargingStartTime:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/power/SecPowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move/from16 v26, v7

    :cond_11
    :goto_9
    sget-boolean v0, Lcom/android/systemui/power/SecPowerUI;->DEBUG:Z

    if-eqz v0, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "buckets   ....."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v8, v8, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " .. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    const/16 v18, 0x0

    aget v13, v13, v18

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v8, v8, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v13, 0x1

    aget v8, v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "level          "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v13, v13, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "status         "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v13, v13, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "plugType       "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v13, v13, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "bucket         "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "plugged        "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v13, v16

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "current_Event  "

    const-string v8, " ---> "

    invoke-static {v5, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v13, v13, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "health  "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v8, v8, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v7, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v8, v7, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    iget v7, v7, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    check-cast v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget v13, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    iput v13, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    iput v7, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    if-ltz v2, :cond_13

    move v7, v11

    move v13, v12

    const-wide/16 v11, 0x0

    iput-wide v11, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    goto :goto_a

    :cond_13
    move v7, v11

    move v13, v12

    iget v11, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    if-ge v2, v11, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    :cond_14
    :goto_a
    iput v2, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    iget-object v8, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v8, v8, Lcom/android/systemui/power/SecPowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    if-eqz v8, :cond_15

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    if-eqz v0, :cond_15

    const-string v0, "cancelled task"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

    iput-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mLastBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

    new-instance v8, Lcom/android/systemui/power/BatteryStateData;

    iget v11, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v12, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    invoke-direct {v8, v11, v6, v2, v12}, Lcom/android/systemui/power/BatteryStateData;-><init>(IZII)V

    iput-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    new-instance v6, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v6, v1, v8}, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/power/SecPowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v6, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v11, 0x7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_26

    iget v6, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const/4 v12, 0x1

    if-eq v6, v12, :cond_19

    if-ne v6, v8, :cond_16

    goto :goto_b

    :cond_16
    const/4 v8, 0x4

    if-ne v6, v8, :cond_18

    iget v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    const/16 v12, 0x64

    if-ne v8, v12, :cond_17

    iput v11, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto/16 :goto_c

    :cond_17
    const/4 v8, 0x6

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto/16 :goto_c

    :cond_18
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_19
    :goto_b
    sget-boolean v8, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v8, :cond_1f

    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySlowCharger:Z

    if-eqz v8, :cond_1a

    const/16 v8, 0x8

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1a
    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    if-nez v8, :cond_1b

    const/16 v8, 0x9

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1b
    iget v8, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    const/4 v12, 0x3

    if-ne v8, v12, :cond_1c

    iput v12, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1c
    const/4 v12, 0x4

    if-ne v8, v12, :cond_1d

    iput v12, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1d
    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v8, :cond_1e

    const/4 v8, 0x2

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1e
    const/4 v8, 0x1

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_1f
    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    if-nez v8, :cond_20

    const/16 v8, 0x9

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_20
    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySlowCharger:Z

    if-eqz v8, :cond_21

    const/16 v8, 0x8

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_21
    iget v8, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    const/4 v12, 0x3

    if-ne v8, v12, :cond_22

    iput v12, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_22
    const/4 v12, 0x4

    if-ne v8, v12, :cond_23

    iput v12, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_23
    iget-boolean v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v8, :cond_24

    const/4 v8, 0x2

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_c

    :cond_24
    const/4 v8, 0x1

    iput v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    :goto_c
    if-ne v6, v10, :cond_25

    iget-boolean v6, v0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    if-eqz v6, :cond_25

    iget v6, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    packed-switch v6, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    const/16 v6, 0xa

    goto :goto_d

    :pswitch_1
    const/16 v6, 0xb

    :goto_d
    iput v6, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    :cond_25
    if-eqz v4, :cond_27

    iget-boolean v4, v0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    if-eqz v4, :cond_27

    const/16 v4, 0xc

    iput v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    goto :goto_e

    :cond_26
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    :cond_27
    :goto_e
    iget v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    iget v6, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    iget-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget v12, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput v12, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    iput v4, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput v6, v8, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    const-string v8, "now_bar_charging_vi"

    if-eqz v4, :cond_28

    const-string v4, "Skip charging animation - already playing"

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v13

    move/from16 v12, v26

    goto :goto_10

    :cond_28
    move v4, v13

    move/from16 v12, v26

    invoke-virtual {v0, v10, v4, v14, v12}, Lcom/android/systemui/power/SecPowerUI;->skipChargingUi(IIIZ)Z

    move-result v13

    if-eqz v13, :cond_29

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "Skip charging animation - by "

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_29
    const-class v11, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v13, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v13, v11}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result v11

    const-class v13, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v13}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v6

    goto :goto_f

    :cond_2a
    const/4 v6, 0x2

    :goto_f
    iget-object v13, v0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    if-eqz v11, :cond_2d

    const/16 v11, 0x8

    if-eq v6, v11, :cond_2d

    const-string v11, "View Cover is covered and closed, so don\'t play charging animation but turn on AOD, cover type : "

    invoke-static {v6, v11, v15}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xf

    if-eq v6, v11, :cond_2b

    const/16 v11, 0x10

    if-eq v6, v11, :cond_2b

    const/16 v11, 0x11

    if-ne v6, v11, :cond_2c

    :cond_2b
    const-string v6, "Supported view cover && cover closed, so we should call PluginAODManager"

    invoke-virtual {v13, v6}, Lcom/android/systemui/power/DozeChargingHelper;->handlePluginAodCharging(Ljava/lang/String;)V

    :cond_2c
    const-string v6, "Skip charging animation - by cover state"

    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    invoke-virtual {v0, v10}, Lcom/android/systemui/power/SecPowerUI;->requestNowBarChargingInfo(I)V

    move/from16 v27, v2

    move/from16 v28, v3

    move v13, v4

    move/from16 v17, v5

    goto/16 :goto_13

    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Charger connected, charger : "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v11, v0, Lcom/android/systemui/power/SecPowerUI;->mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v11, Lcom/android/systemui/PowerUiRune;->CHARGING_VI_NOW_BAR:Z

    move/from16 v17, v5

    const-string v5, "old_charging_vi"

    if-eqz v11, :cond_33

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v11

    invoke-static {v11}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->setChargerAnimationView()V

    iput-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/systemui/power/SecPowerUI;->requestNowBarChargingInfo(I)V

    move/from16 v27, v2

    move/from16 v28, v3

    move v13, v4

    goto/16 :goto_12

    :cond_2e
    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->isAodOrLockScreen()Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/SemStatusBarManager;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SemStatusBarManager;

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v5

    goto :goto_11

    :cond_2f
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_31

    new-instance v5, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {v5}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    const-string v11, "charging_vi_now_bar_key"

    invoke-virtual {v5, v11}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    const-string v11, "com.android.systemui"

    invoke-virtual {v5, v11}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    const/4 v11, 0x6

    invoke-virtual {v5, v11}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    iget-object v11, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    move/from16 v27, v2

    const v2, 0x7f0d007e

    move/from16 v28, v3

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/power/ChargerNowBarView;

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerNowBarView:Lcom/android/systemui/power/ChargerNowBarView;

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v11, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    iput v3, v2, Lcom/android/systemui/power/ChargerNowBarView;->currentBatteryLevel:I

    iput v11, v2, Lcom/android/systemui/power/ChargerNowBarView;->chargingType:I

    iput-object v0, v2, Lcom/android/systemui/power/ChargerNowBarView;->animationListener:Lcom/android/systemui/power/ChargerAnimationListener;

    invoke-virtual {v5, v2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setContentViewForNormalCard(Landroid/view/View;)V

    invoke-virtual {v13}, Lcom/android/systemui/power/DozeChargingHelper;->handleDisplayStateWhenDozeCharging()V

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

    move v13, v4

    const-wide/16 v3, 0x1194

    invoke-virtual {v6, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mFaceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v2, v5}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->updateItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setChargerNowBarView updateItem, mChargerNowBarView : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerNowBarView:Lcom/android/systemui/power/ChargerNowBarView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iput-object v8, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    goto :goto_12

    :cond_31
    move/from16 v27, v2

    move/from16 v28, v3

    move v13, v4

    const-string v2, "Call notifyPluggedIn for indicator charging animation"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mSystemEventCoordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iget-object v4, v4, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-nez v4, :cond_32

    const/4 v4, 0x0

    :cond_32
    new-instance v5, Lcom/android/systemui/statusbar/events/BatteryEvent;

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/statusbar/events/BatteryEvent;-><init>(II)V

    check-cast v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    invoke-virtual {v0, v10}, Lcom/android/systemui/power/SecPowerUI;->requestNowBarChargingInfo(I)V

    goto :goto_12

    :cond_33
    move/from16 v27, v2

    move/from16 v28, v3

    move v13, v4

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->setChargerAnimationView()V

    iput-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    :goto_12
    iget-boolean v2, v0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v2, :cond_34

    iget-boolean v2, v0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    if-nez v2, :cond_34

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_34

    const-string v2, "Plug type is not wireless, but mIsDeviceMoving is not still released. We should release mIsDeviceMoving to true !!"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    :cond_34
    :goto_13
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    if-eqz v2, :cond_38

    if-lez v10, :cond_38

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-nez v3, :cond_38

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerNowBarView:Lcom/android/systemui/power/ChargerNowBarView;

    invoke-virtual {v2}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v3, v2, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    iget-object v4, v3, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_14

    :cond_35
    const/4 v4, 0x0

    :goto_14
    iget-object v5, v3, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iput-object v4, v3, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    :cond_36
    iget-object v3, v2, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet;->cancel()V

    iput-object v4, v2, Lcom/android/systemui/power/ChargerNowBarView;->animationListener:Lcom/android/systemui/power/ChargerAnimationListener;

    const-string v2, "PowerUI.ChargerNowBarView"

    const-string v3, "Animation Stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/power/DozeChargingHelper;->restoreDisplayStateWhenDozeCharging()V

    :cond_38
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    move v2, v13

    invoke-virtual {v0, v10, v2, v14, v12}, Lcom/android/systemui/power/SecPowerUI;->skipChargingUi(IIIZ)Z

    move-result v3

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skip charging sound & vibrate - by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_16

    :cond_39
    iget-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningStopPowerSoundTask:Z

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3a

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mStopPowerSoundTask:Lcom/android/systemui/power/SecPowerUI$6;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningStopPowerSoundTask:Z

    goto :goto_15

    :cond_3a
    const/4 v3, 0x0

    :goto_15
    iget-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    iget-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mStopPowerSoundTask:Lcom/android/systemui/power/SecPowerUI$6;

    const-wide/16 v11, 0xbb8

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, v0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningStopPowerSoundTask:Z

    :goto_16
    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedBatteryProtectionOnCharging:Z

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/high16 v3, 0x400000

    and-int v4, v14, v3

    if-ne v4, v3, :cond_3b

    const/4 v4, 0x1

    goto :goto_17

    :cond_3b
    const/4 v4, 0x0

    :goto_17
    iget v5, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_18

    :cond_3c
    const/4 v3, 0x0

    :goto_18
    const-string v5, "oldMisalign : "

    const-string v6, ", curMisalign : "

    invoke-static {v5, v6, v15, v4, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget v5, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-lez v5, :cond_41

    if-nez v4, :cond_3e

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isViewCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v0, "View cover closed, so we doesn\'t show misalign view"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_3d
    const-string v3, "Show wireless misalign"

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/power/SecPowerUI;->setWirelessMisalignView(I)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessMisalignTask:Z

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    :cond_3e
    if-eqz v4, :cond_3f

    if-nez v3, :cond_3f

    const-string v3, "Show align view"

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/power/SecPowerUI;->setWirelessMisalignView(I)V

    goto :goto_19

    :cond_3f
    if-eqz v4, :cond_40

    if-nez v3, :cond_42

    :cond_40
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    goto :goto_19

    :cond_41
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    :cond_42
    :goto_19
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {v0, v10, v2, v9}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    if-eqz v25, :cond_49

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    move/from16 v4, v24

    if-ne v4, v3, :cond_43

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    if-eq v2, v3, :cond_49

    :cond_43
    const-string v3, "Battery swelling mode - priorBatterySwellingMode = "

    const-string v5, " mBatterySwellingMode = "

    invoke-static {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mBatteryStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-lez v3, :cond_48

    iget v5, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_48

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_44

    const-string/jumbo v3, "showBatterySwellingNotice()"

    move-object/from16 v6, v21

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    goto :goto_1a

    :cond_44
    move-object/from16 v6, v21

    const-string v8, "Not battery low swelling mode, (ignore high swelling mode) so return "

    invoke-static {v3, v8, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1a
    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    if-ne v3, v5, :cond_46

    const-string/jumbo v3, "showBatterySwellingPopup for low temp"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "showBatterySwellingLowTempPopup()"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v3, :cond_47

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v5, :cond_45

    goto :goto_1b

    :cond_45
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    invoke-virtual {v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1b

    :cond_46
    const-string v3, "Neither battery swelling mode nor low temp, so no popup is shown"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_1b
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->dismissChargingNotice()V

    goto :goto_1c

    :cond_48
    move-object/from16 v6, v21

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object v0, v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_4a

    const-string v0, "dismissBatterySwellingPopup()"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_1c

    :cond_49
    move-object/from16 v6, v21

    :cond_4a
    :goto_1c
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const v4, 0x10000006

    const-wide/32 v11, 0xea60

    iget-object v5, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    const/4 v8, 0x4

    if-ne v3, v8, :cond_4b

    iget v8, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    const/4 v13, 0x3

    if-eq v8, v13, :cond_4c

    const/4 v13, 0x7

    if-eq v8, v13, :cond_4c

    const/4 v13, 0x6

    if-ne v8, v13, :cond_4b

    goto :goto_1d

    :cond_4b
    const/16 v8, 0x8

    const/4 v13, 0x4

    goto :goto_1f

    :cond_4c
    const/4 v13, 0x6

    :goto_1d
    if-ne v8, v13, :cond_4d

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_4d

    const-string v0, "Direct mode, so skip this logic"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :cond_4d
    const-string v3, "Unhealthy state"

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_52

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v4, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v4, :cond_4e

    iget v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    const/4 v8, 0x6

    if-ne v4, v8, :cond_4f

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1e

    :cond_4e
    const/4 v8, 0x6

    :cond_4f
    invoke-virtual {v3, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_1e
    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-ne v3, v8, :cond_51

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_50

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_50
    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_51
    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_22

    :cond_52
    const/16 v8, 0x8

    if-ne v9, v8, :cond_5d

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_22

    :goto_1f
    if-ne v13, v3, :cond_57

    iget v13, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-ne v8, v13, :cond_57

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_55

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v4, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v4, :cond_53

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_20

    :cond_53
    invoke-virtual {v3, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_20
    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_54

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_54
    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_22

    :cond_55
    const/4 v4, 0x3

    if-ne v9, v4, :cond_5d

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-nez v4, :cond_56

    invoke-virtual {v3, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_56
    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionWarning()V

    goto :goto_22

    :cond_57
    if-nez v20, :cond_58

    iget-boolean v4, v0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessOverheat:Z

    if-eqz v4, :cond_58

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWirelessChargerDisconnectNotice()V

    goto :goto_22

    :cond_58
    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5d

    iget v4, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_59

    const/4 v4, 0x3

    if-ne v3, v4, :cond_59

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_59

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    goto :goto_21

    :cond_59
    move-object v3, v5

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v4, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v8, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object v3, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_5a
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :goto_21
    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v3, :cond_5b

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5b
    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5c
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_5d
    :goto_22
    iget-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    if-eqz v3, :cond_5f

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    check-cast v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v3, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object v3, v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_5e
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :cond_5f
    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-eq v9, v3, :cond_62

    const/4 v4, 0x5

    if-eq v9, v4, :cond_60

    if-eq v3, v4, :cond_60

    const/16 v4, 0x9

    if-eq v9, v4, :cond_60

    if-ne v3, v4, :cond_62

    :cond_60
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v3

    if-nez v3, :cond_61

    const-string v0, "Knox Customization: shouldWakeUp: not waking when battery health is changed"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_61
    const-string v3, "Overvoltage/Undervoltage status is changed so turn on the screen."

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_62
    :goto_23
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_65

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-nez v3, :cond_63

    if-eqz v19, :cond_63

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showIncompatibleChargerNotice()V

    goto :goto_24

    :cond_63
    if-nez v19, :cond_65

    if-eqz v3, :cond_65

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v3, :cond_64

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_64
    const-string v3, "dismissing incompatible charger notification"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    :cond_65
    :goto_24
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->FULL_BATTERY_CHECK:Z

    if-eqz v0, :cond_68

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    if-eq v2, v3, :cond_68

    const/4 v4, 0x5

    if-ne v3, v4, :cond_66

    const/4 v3, 0x2

    if-ne v2, v3, :cond_67

    :cond_66
    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    invoke-static {v2}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_67
    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    const-string v2, "checkFullBatteryStatus, change chargingAnimStarted to false"

    invoke-virtual {v0, v2}, Lcom/android/systemui/power/DozeChargingHelper;->handlePluginAodCharging(Ljava/lang/String;)V

    :cond_68
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LOW_BATTERY_DUMP"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    sub-int v11, v7, v2

    const/16 v3, 0xa

    if-ge v11, v3, :cond_69

    sub-int/2addr v2, v7

    if-lt v2, v3, :cond_6a

    :cond_69
    const/4 v2, -0x1

    goto :goto_26

    :cond_6a
    :goto_25
    move/from16 v3, v27

    move/from16 v2, v28

    goto :goto_27

    :goto_26
    if-ne v7, v2, :cond_6b

    goto :goto_25

    :goto_27
    if-ge v3, v2, :cond_6c

    const/4 v2, -0x2

    if-ne v3, v2, :cond_6c

    :cond_6b
    iget-boolean v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    if-eqz v2, :cond_6c

    const-string v2, "Low battery dump"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6c
    if-eqz v23, :cond_70

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-eqz v2, :cond_6f

    and-int v4, v17, v3

    if-nez v4, :cond_6f

    invoke-static {}, Lcom/android/systemui/power/PowerUtils;->isViewCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_28

    :cond_6d
    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "showHVchargerEnableAlertDialog()"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_70

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_6e

    goto :goto_28

    :cond_6e
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$22;

    invoke-direct {v3, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_28

    :cond_6f
    and-int v3, v17, v3

    if-eqz v3, :cond_70

    if-nez v2, :cond_70

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "dismissHVchargerEnableAlertDialog()"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const-string v0, "afcDisableChargerDialog is dimissed"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_28
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/high16 v2, 0x200000

    and-int v3, v14, v2

    iget-object v4, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-nez v3, :cond_71

    iget v5, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_71

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "showAbnormalPadNotification"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    goto :goto_29

    :cond_71
    if-eqz v3, :cond_72

    iget v0, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    and-int/2addr v0, v2

    if-nez v0, :cond_72

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dismissAbnormalPadNotification"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    :cond_72
    :goto_29
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    if-eqz v0, :cond_73

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v0, v7}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTipsNotification(Lcom/android/systemui/power/SecPowerUI;I)V

    :cond_73
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    if-eqz v0, :cond_75

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mTurnOffPsmLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_74

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "turn_off_psm_trigger_level"

    const/16 v5, 0x32

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/power/SecPowerUI;->mTurnOffPsmLevel:I

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/power/SecPowerUI$8;

    iget-object v6, v0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v0, v6, v2}, Lcom/android/systemui/power/SecPowerUI$8;-><init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2a

    :cond_74
    const/4 v6, 0x0

    :goto_2a
    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mTurnOffPsmLevel:I

    if-ge v7, v2, :cond_75

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    if-lt v3, v2, :cond_75

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_75

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.ACTION_TURN_OFF_PSM_NOTI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/power/PowerUiConstants;->TURN_OFF_PSM_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_75
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    if-eqz v0, :cond_76

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTurnOnBatteryProtectionByLongTermCharge(Lcom/android/systemui/power/SecPowerUI;)V

    goto :goto_2b

    :cond_76
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    if-eqz v0, :cond_77

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/SecPowerUI;)V

    :cond_77
    :goto_2b
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    if-eqz v0, :cond_78

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->checkBatteryProtectionNotification()V

    :cond_78
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

    if-eqz v0, :cond_8b

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v0, v10}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckBatteryProtectionTipsNotification(Lcom/android/systemui/power/SecPowerUI;I)V

    goto/16 :goto_31

    :cond_79
    move-object v6, v13

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mupdateBatteryNotificationLanguage(Lcom/android/systemui/power/SecPowerUI;)V

    goto/16 :goto_31

    :cond_7a
    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v2, v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckWirelessChargingFodStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V

    iget-object v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v2, v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckWaterDetectionStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V

    iget-object v1, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v2, v1, Lcom/android/systemui/power/SecPowerUI;->mTemperatureHiccupState:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x2000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7b

    const/4 v9, 0x1

    goto :goto_2c

    :cond_7b
    move v9, v3

    :goto_2c
    iput-boolean v9, v1, Lcom/android/systemui/power/SecPowerUI;->mTemperatureHiccupState:Z

    const-string v0, "USB damage detection - oldTemperatureHiccupState : "

    const-string v3, ", mTemperatureHiccupState : "

    invoke-static {v0, v3, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/systemui/power/SecPowerUI;->mTemperatureHiccupState:Z

    invoke-static {v0, v3, v15}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/systemui/power/SecPowerUI;->mTemperatureHiccupState:Z

    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v0, v3, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    if-eq v2, v0, :cond_8b

    if-eqz v0, :cond_8b

    invoke-virtual {v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showUsbDamageProtectionAlertDialog()V

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_7c
    const-string v2, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showUnintentionalLcdOnNotice()V

    goto/16 :goto_31

    :cond_7d
    const-string v2, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "dismissUnintentionallyLcdOnNotice"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    goto/16 :goto_31

    :cond_7e
    const-string v2, "com.samsung.systemui.power.action.WATER_ALERT_SOUND_TEST"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playWaterAlertSound()V

    goto/16 :goto_31

    :cond_7f
    const-string v2, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v1, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-static {v1, v0}, Lcom/android/systemui/power/SecPowerUI;->-$$Nest$mcheckCoolDownStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_80
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    const-string v3, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    goto/16 :goto_2f

    :cond_81
    const-string v2, "com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "com.samsung.android.sm.CLEAR_TIPS_NOTI"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "android.intent.action.tips.noti.confirmed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    goto/16 :goto_2e

    :cond_82
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_2d

    :cond_83
    const-string v2, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const-string/jumbo v3, "sleep_charging_event"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const-string/jumbo v3, "sleep_charging_finish_time"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/power/SecPowerUI;->mChargingStartTime:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v1, v0, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargingStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/power/SecPowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_84
    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v0, "Charging time is changed, check charging notification"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v1, v0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget v2, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    goto/16 :goto_31

    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_86
    :goto_2d
    const-string v0, "Time is changed, so we need to init LTC time"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    sget-boolean v1, Lcom/android/systemui/power/SecPowerUI;->DEBUG:Z

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->clearScheduling()V

    goto :goto_31

    :cond_87
    :goto_2e
    new-instance v2, Lcom/android/systemui/power/tips/TipsManager;

    iget-object v1, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/android/systemui/power/tips/TipsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/power/tips/TipsManager;->checkIntentAction(Landroid/content/Intent;)V

    goto :goto_31

    :cond_88
    :goto_2f
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-boolean v3, v0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    if-nez v3, :cond_89

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerUI;->checkOverheatShutdownHappened()V

    :cond_89
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8a

    const-string v0, "emergency"

    const-string v3, "persist.sys.emergency_reset"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showSafeModeNotice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_30

    :catch_0
    move-exception v0

    const-string v3, "Safe mode exception occur"

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8a
    :goto_30
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    :cond_8b
    :goto_31
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
