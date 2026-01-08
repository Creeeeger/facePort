.class public final Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;
.super Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;

    .line 11
    .line 12
    invoke-direct {v3, v1}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 16
    .line 17
    invoke-direct {v4}, Landroid/app/TaskStackListener;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 21
    .line 22
    invoke-direct {v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 26
    .line 27
    invoke-direct {v6, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 31
    .line 32
    invoke-direct {v7, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 36
    .line 37
    invoke-direct {v8, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v0, p0

    .line 41
    .line 42
    move-object/from16 v1, p1

    .line 43
    .line 44
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 52
    .line 53
    iget-object v2, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v3, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 56
    .line 57
    iget-object v4, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 58
    .line 59
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 60
    .line 61
    iget-object v6, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 62
    .line 63
    iget-object v7, v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 64
    .line 65
    iget-object v8, v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 73
    .line 74
    iget-object v11, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v12, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 77
    .line 78
    iget-object v13, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 79
    .line 80
    sget-object v14, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 81
    .line 82
    iget-object v15, v9, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 83
    .line 84
    iget-object v1, v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 85
    .line 86
    iget-object v2, v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 87
    .line 88
    move-object v10, v0

    .line 89
    move-object/from16 v16, v1

    .line 90
    .line 91
    move-object/from16 v17, v2

    .line 92
    .line 93
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iput-object v0, v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 10
    .line 11
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 17
    .line 18
    iput v0, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mSessionId:I

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->addMaskClient(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p1
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->stop()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handleAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD_TRANSITION_ANIMATION:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 30
    .line 31
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 32
    .line 33
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsDispatchedTouchDownEvent:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeKeyguardMaskClientIfExist()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeKeyguardMaskClientIfExist()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 57
    .line 58
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsDispatchedTouchDownEvent:Z

    .line 59
    .line 60
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationSucceeded(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final handleCalibrationMode(IILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p2, v0, :cond_2

    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 12
    .line 13
    const-string v0, "nits"

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mCalibrationLightColor:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    const-string p2, "KEY_PACKAGE_NAME"

    .line 38
    .line 39
    const-string v0, "UnknownCalibrationClient"

    .line 40
    .line 41
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 45
    .line 46
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-direct {p3, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;-><init>(IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->addMaskClient(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 58
    .line 59
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 72
    .line 73
    iget-object p3, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-boolean p3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 79
    .line 80
    if-eqz p3, :cond_3

    .line 81
    .line 82
    iget-object p3, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 83
    .line 84
    move-object v0, p3

    .line 85
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 86
    .line 87
    const-wide/16 v3, 0x0

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v1, 0x5

    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object p3, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 97
    .line 98
    invoke-interface {p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffCalibrationLightSource()V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object p3, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 102
    .line 103
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionTurnOnCalibrationLs:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    check-cast p3, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method

.method public final handleCaptureCompleted(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffLightSource()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleCaptureCompleted(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final handleCommand(IIILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleCommand(IIILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f4

    .line 5
    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    .line 8
    const-string p2, "KEY_KEYGUARD"

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p4, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const-string v1, "KEY_PACKAGE_NAME"

    .line 16
    .line 17
    const-string v2, "Unknown"

    .line 18
    .line 19
    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance p4, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 23
    .line 24
    invoke-direct {p4, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;-><init>(IZ)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne p3, v1, :cond_1

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->updateDisplayState()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 38
    .line 39
    invoke-virtual {p1, p4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->addMaskClient(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;

    .line 47
    .line 48
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public final handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final handleOnFodSingleTap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->handleSingleTapEvent()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleOnFodSingleTap()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handleOnFodTouchDown()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasAuthMaskClient()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 16
    .line 17
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 18
    .line 19
    const/16 v2, 0x3e9

    .line 20
    .line 21
    if-eq v1, v2, :cond_6

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOnHbm$1()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 55
    .line 56
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    if-eq v0, v1, :cond_3

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    move-object v1, v0

    .line 71
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/16 v2, 0xb

    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionHandleTouchDown:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;->run()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionHandleTouchDown:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

    .line 97
    .line 98
    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 104
    .line 105
    move-object v0, p0

    .line 106
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 107
    .line 108
    const/16 v1, 0x8

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    const-wide/16 v3, 0x0

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_1
    return-void
.end method

.method public final handleOnFodTouchUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->onTouchUp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final handleOnTaskStackListener(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnTaskStackListener(II)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->handleOnTaskStackChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handlePrepareSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasMaskClient()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->init()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->onConfigurationInfoChanged()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDisplayStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->handleDisplayStateChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onDisplayStateChanged(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onRotationStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->onRotationChanged()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onRotationStateChanged(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setUdfpsForBpClient(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->setUdfpsForBpClient(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mRemoveUdfpsClient:Ljava/util/function/IntConsumer;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;->mOpticalController:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 24
    .line 25
    iput p1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mSessionId:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->addMaskClient(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
