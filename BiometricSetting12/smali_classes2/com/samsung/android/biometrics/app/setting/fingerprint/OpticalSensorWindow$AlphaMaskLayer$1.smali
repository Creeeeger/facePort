.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;
.super Landroid/database/ContentObserver;
.source "OpticalSensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

.field final synthetic val$this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;->val$this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;)V

    return-void
.end method
