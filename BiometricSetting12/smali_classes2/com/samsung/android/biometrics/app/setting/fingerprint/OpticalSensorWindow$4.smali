.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$4;
.super Ljava/lang/Object;
.source "OpticalSensorWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->showSensorIconWhenScreenOff(IJ)V

    return-void
.end method
