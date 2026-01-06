.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-boolean v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->getCurrentAlpha()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->deliveryTouchEventToHAL(III)V

    :cond_0
    return-void
.end method
