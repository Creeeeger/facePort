.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;
.super Ljava/lang/Object;
.source "OpticalSensorWindow.java"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMode(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1002(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1102(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isOffState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
