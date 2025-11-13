.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback$Stub;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBrightnessChanged(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mH:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
