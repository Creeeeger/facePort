.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final setSensorIcon()V
    .locals 0

    .line 1
    return-void
.end method

.method public final showSensorIcon()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
