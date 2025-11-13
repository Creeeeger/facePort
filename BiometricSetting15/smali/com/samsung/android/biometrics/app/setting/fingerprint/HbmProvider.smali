.class public interface abstract Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public destroyHbmProvider()V
    .locals 0

    .line 1
    return-void
.end method

.method public getCurrentAlpha()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public initHbmProvider()V
    .locals 0

    .line 1
    return-void
.end method

.method public isEnabledHbm()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onConfigurationInfoChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRotationChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract turnOffCalibrationLightSource()V
.end method

.method public abstract turnOffHBM()V
.end method

.method public abstract turnOffLightSource()V
.end method

.method public abstract turnOnCalibrationLightSource()V
.end method

.method public abstract turnOnHBM()V
.end method

.method public abstract turnOnLightSource()V
.end method
