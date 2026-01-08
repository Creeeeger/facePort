.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mEnrollWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;


# virtual methods
.method public final prepareWindows()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;->mEnrollWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initFromBaseWindow(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;->mEnrollWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;->mEnrollWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
