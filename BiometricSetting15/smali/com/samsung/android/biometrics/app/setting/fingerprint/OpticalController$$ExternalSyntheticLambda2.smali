.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v3, 0x5

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnLightSource()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->isTablet()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-wide/16 v2, 0x42

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-wide/16 v2, 0x22

    .line 55
    .line 56
    :goto_1
    const/4 p0, 0x2

    .line 57
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method
