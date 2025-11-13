.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PNW.batteryInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatterySettings:Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "PNW.dismissedWarning"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "PNW.powerMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget p2, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    if-ne p2, v3, :cond_2

    return-void

    :cond_2
    iput-boolean v2, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "PNW.abnormalPadNoThanks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleAbnormalPadNotiNoThanks"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "dismissAbnormalPadNotification"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string p1, "com.android.systemui.abnormal_pad"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string p1, "User clicked Do_not_show_again, so we set preference."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "DoNotShowAbnormalPadNoti"

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_4
    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    const-string v0, "reason"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput v3, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput v2, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    if-eqz p2, :cond_12

    iget p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    if-eq p1, p2, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    goto/16 :goto_1

    :cond_8
    const-string p2, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_12

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_9

    goto/16 :goto_1

    :cond_9
    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_a
    const-string p2, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0xa

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "showSafeModePopUp()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_b

    goto/16 :goto_1

    :cond_b
    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings$12;

    invoke-direct {p2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_c
    const-string p2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    goto :goto_1

    :cond_d
    const-string p2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    goto :goto_1

    :cond_e
    const-string p2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_f
    const-string p2, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    goto :goto_1

    :cond_10
    const-string p2, "com.samsung.android.systemui.action.DELETED_CHARGING_NOTI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    goto :goto_1

    :cond_11
    const-string p2, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    :cond_12
    :goto_1
    return-void
.end method
