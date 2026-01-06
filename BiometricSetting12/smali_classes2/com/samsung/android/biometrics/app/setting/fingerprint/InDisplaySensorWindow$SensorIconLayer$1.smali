.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;
.super Landroid/content/BroadcastReceiver;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION: CLOSE_SYSTEM_DIALOG : reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "recentapps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-boolean v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsKeyguard:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getSemStatusBarManager()Landroid/app/SemStatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v4, "Cancel auth because of PanelExpanded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_2
    goto/16 :goto_0

    :cond_3
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const-string v3, "isShow"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v3, "Cancel auth because of AirCommand"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    const/4 v1, -0x1

    const-string v2, "info"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleTouchEvent(I)Z

    goto :goto_0

    :sswitch_1
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FAKE_AOD:Z

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleTouchEvent(I)Z

    :cond_7
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
