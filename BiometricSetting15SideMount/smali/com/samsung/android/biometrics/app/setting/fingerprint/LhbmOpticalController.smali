.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;


# virtual methods
.method public createHbmLockStateMonitor()Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final createHbmProvider(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;
    .locals 0

    .line 1
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final handleDisplayStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->handleDisplayStateChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;->localHbmControlRequest(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final handleOnTaskStackChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final localHbmControlRequest(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasMaskClient()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move v2, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onLimitDisplayStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;->localHbmControlRequest(I)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->start()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v0, p0, v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->stop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v0, p0, v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
