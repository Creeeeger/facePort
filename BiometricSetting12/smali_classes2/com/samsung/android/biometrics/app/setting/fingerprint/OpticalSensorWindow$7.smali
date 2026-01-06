.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$7;
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$7;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$7;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V

    return-void
.end method
