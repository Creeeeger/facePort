.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;
.super Landroid/content/BroadcastReceiver;
.source "OpticalSensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_TUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string v3, "START"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v3, v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V

    goto :goto_0

    :cond_0
    const-string v2, "STOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2500(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_NO_DELAY_IN_SCREEN_OFF:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2600(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2700(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method
