.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener$1;
.super Landroid/database/ContentObserver;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->observe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->updateValue()V

    return-void
.end method
