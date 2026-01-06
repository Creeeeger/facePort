.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;
.super Landroid/database/ContentObserver;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->observe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->updateValue()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
