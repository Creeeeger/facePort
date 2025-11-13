.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "BSS_DisplayStateManager"

    .line 18
    .line 19
    const-string v1, "updateDisplayStateInAuthenticationSucceeded"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :pswitch_0
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 59
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v1, 0x5

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 70
    .line 71
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnCalibrationLightSource()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionTurnOnCalibrationLs:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionTurnOnCalibrationLs:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_0
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
