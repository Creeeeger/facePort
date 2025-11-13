.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;
.implements Landroid/app/OnSemColorsChangedListener;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;


# static fields
.field static final MAX_TIME_BLACK_MASK_MODE_FOR_TAP_TO_SHOW:I = 0xfa


# instance fields
.field protected mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

.field mBlackMaskWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

.field protected mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

.field public mIsAuthenticated:Z

.field mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

.field public final mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

.field public final mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

.field public mRunnableOnDisplayStateDoze:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;

.field public mWallpaperFontColor:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;)V
    .locals 13

    move-object v12, p0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mIsKeyguard:Z

    move-object/from16 v0, p11

    .line 3
    iput-object v0, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 4
    iget-object v0, v12, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 5
    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v0, p12

    .line 6
    iput-object v0, v12, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 7
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->updateDisplayState()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BSS_UdfpsKeyguardClient"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x4

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    if-eq p1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->hideSensorIconOnLock()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string p1, "AOD is showing, extend black mask time"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x23

    .line 47
    .line 48
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setBlackMaskMode(JZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setBlackMaskMode(JZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 60
    .line 61
    if-eqz p0, :cond_5

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->hideSensorIconWhenScreenOff()V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_0
    return v0
.end method

.method public final handleOnAodStatusChanged()V
    .locals 7

    .line 1
    const-string v0, "BSS_UdfpsKeyguardClient"

    .line 2
    .line 3
    const-string v1, "handleOnAodStatusChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 23
    .line 24
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 55
    .line 56
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 57
    .line 58
    if-ne v0, v2, :cond_7

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsUltrasonic:Z

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 77
    .line 78
    move-object v1, v0

    .line 79
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const/16 v2, 0x64

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showSensorIconDueToAodWhenScreenIsOff()V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->hideSensorIconWhenScreenOff()V

    .line 95
    .line 96
    .line 97
    :cond_7
    :goto_2
    return-void
.end method

.method public final handleSingleTapEvent()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->isSensorIconShown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-wide/16 v2, 0x2710

    .line 28
    .line 29
    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showSensorIconDueToFodTouchWhenScreenIsOff(JZ)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsUltrasonic:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/16 v1, 0x64

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final handleTspBlock(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x2710

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->isSensorIconShown()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 16
    .line 17
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_5

    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v2, 0x6

    .line 44
    const/16 v3, 0x3ec

    .line 45
    .line 46
    invoke-static {v0, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showHelpMessageOnAod(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    const-wide/16 v2, 0xbb8

    .line 56
    .line 57
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 71
    .line 72
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 98
    .line 99
    iget v1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerIconHideReason:I

    .line 100
    .line 101
    if-ne v1, v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 109
    .line 110
    const/4 p1, 0x4

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    return-void
.end method

.method public final hideSensorIconOnLock()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public hideSensorIconWhenScreenOff()V
    .locals 8

    .line 1
    const-string v0, "BSS_UdfpsKeyguardClient"

    .line 2
    .line 3
    const-string v1, "hideSensorIconWhenScreenOff"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    invoke-interface {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x4

    .line 60
    const/4 v4, 0x2

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOffDoze(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_2
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x3

    .line 81
    const/4 v3, 0x0

    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 94
    .line 95
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 100
    .line 101
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public final moveSensorIcon(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->moveIcon(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onAodStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->handleOnAodStatusChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAodStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->handleOnAodStatusChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAuthenticationError(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->stop()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showIconOnAuthenticationFail()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const v0, 0x7f100167

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showHelpMessageOnAod$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showIconOnAuthenticationFail()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showHelpMessageOnAod$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-wide/16 v0, 0x46

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setBlackMaskMode(JZ)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->registerListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 p1, 0x4

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onBouncerScreen(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->updateWallpaperFontColor()V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->isSensorIconShown()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_0
    return-void
.end method

.method public final onBrightnessChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p0, "BSS_UdfpsKeyguardClient"

    .line 10
    .line 11
    const-string p1, "onBrightnessChanged, but AOD is showing"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setBlackMaskMode(JZ)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onCaptureComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCaptureStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->moveIcon(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 8
    .line 9
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mViEffectType:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 14
    .line 15
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 16
    .line 17
    const/16 v2, 0x3e9

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v2, "BSS_UdfpsKeyguardSensorWindow"

    .line 27
    .line 28
    const-string v3, "startVisualEffect"

    .line 29
    .line 30
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onColorsChanged(Landroid/app/SemWallpaperColors;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    and-int/lit8 p1, p2, 0x2

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->updateWallpaperFontColor()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final onDisplayStateChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p1, v2, :cond_0

    .line 5
    .line 6
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-eq p1, v0, :cond_6

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eq p1, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq p1, v2, :cond_2

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x3e9

    .line 28
    .line 29
    if-eq p1, v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mRunnableOnDisplayStateDoze:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    if-eqz p1, :cond_9

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->run()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mRunnableOnDisplayStateDoze:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mHelpMessageOnAodView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 58
    .line 59
    iget-boolean p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 73
    .line 74
    if-nez p1, :cond_9

    .line 75
    .line 76
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->updateWallpaperFontColor()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->moveIcon(II)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->hideSensorIconOnLock()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 127
    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_8

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    :cond_9
    :goto_1
    return-void
.end method

.method public final onHbmChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->moveIcon(II)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->hideSensorIconOnLock()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserCancel(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVisualEffectFinished()V
    .locals 2

    .line 1
    const-string v0, "onVisualEffectFinished"

    .line 2
    .line 3
    const-string v1, "BSS_UdfpsKeyguardClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->shouldMaintainWindow()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p0, "onVisualEffectFinished: should maintain window"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->stop()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final prepareWindows()V
    .locals 8

    .line 1
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;)V

    .line 12
    .line 13
    .line 14
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v7

    .line 20
    move-object v2, p0

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda2;)V

    .line 22
    .line 23
    .line 24
    iput-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 27
    .line 28
    invoke-virtual {v7, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initFromBaseWindow(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 39
    .line 40
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 45
    .line 46
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;->mBlackMaskView:Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->setBlackMaskMode(Z)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mBlackMaskWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method public final setAodStatusMonitor(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 2
    .line 3
    return-void
.end method

.method public final setBlackMaskMode(JZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mBlackMaskWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "setBlackMaskMode: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "BSS_UdfpsOpticalBlackMaskWindow"

    .line 21
    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;->mBlackMaskView:Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;

    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mIsBlackMaskModeOn:Z

    .line 28
    .line 29
    if-ne v1, p3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    if-eqz p3, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0x8

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->setBlackMaskMode(Z)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->unregisterListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->shouldMaintainWindow()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->stop()V

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void

    .line 78
    :cond_5
    :goto_3
    const-string p0, "BSS_UdfpsKeyguardClient"

    .line 79
    .line 80
    const-string p1, "setBlackMaskMode: should maintain window"

    .line 81
    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final setUdfpsIconOptionMonitor(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 2
    .line 3
    return-void
.end method

.method public final shouldMaintainWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mBlackMaskWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;->mBlackMaskView:Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mIsBlackMaskModeOn:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    :goto_0
    const/4 p0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_1
    return p0
.end method

.method public final showFingerIconOnLock()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 15
    .line 16
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->isSensorIconShown()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    const-wide/16 v2, 0x1388

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final showHelpMessageOnAod$1(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-wide/16 v2, 0x2710

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v2, v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showSensorIconDueToFodTouchWhenScreenIsOff(JZ)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showHelpMessageOnAod(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    const-wide/16 v2, 0xbb8

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final showIconOnAuthenticationFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const-wide/16 v2, 0x1388

    .line 31
    .line 32
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public showSensorIconDueToAodWhenScreenIsOff()V
    .locals 7

    .line 1
    const-string v0, "BSS_UdfpsKeyguardClient"

    .line 2
    .line 3
    const-string v1, "showSensorIconDueToAodWhenScreenIsOff"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodStartTime:I

    .line 19
    .line 20
    iget v3, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodEndTime:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isInAodScheduleTime()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 40
    .line 41
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 47
    .line 48
    const-wide/16 v2, 0x2710

    .line 49
    .line 50
    invoke-interface {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOnDoze(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x3

    .line 76
    const/4 v3, 0x1

    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->turnOnTsp()V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public showSensorIconDueToFodTouchWhenScreenIsOff(JZ)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "showSensorIconDueToTouchWhenScreenIsOff: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_UdfpsKeyguardClient"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 21
    .line 22
    const-wide/16 v2, 0x2710

    .line 23
    .line 24
    add-long/2addr v2, p1

    .line 25
    invoke-interface {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->turnOnTsp()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOnDoze(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 51
    .line 52
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    if-eq v0, v3, :cond_1

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    if-ne v0, v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "showSensorIcon: pending, waiting for doze"

    .line 62
    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;JZ)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mRunnableOnDisplayStateDoze:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x3

    .line 86
    const/4 v5, 0x1

    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-interface/range {v3 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 99
    .line 100
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    move-object v3, v0

    .line 111
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 112
    .line 113
    const/16 v4, 0xb

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v8, 0x0

    .line 117
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    if-eqz p3, :cond_3

    .line 121
    .line 122
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 123
    .line 124
    invoke-virtual {p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    const-wide/16 v0, 0x0

    .line 141
    .line 142
    if-eqz p3, :cond_4

    .line 143
    .line 144
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 145
    .line 146
    iget-boolean v3, p3, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 147
    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    iget-boolean p3, p3, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 151
    .line 152
    if-eqz p3, :cond_4

    .line 153
    .line 154
    move-wide p1, v0

    .line 155
    :cond_4
    cmp-long p3, p1, v0

    .line 156
    .line 157
    if-lez p3, :cond_5

    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 160
    .line 161
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    .line 163
    .line 164
    :cond_5
    return-void
.end method

.method public final start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;->start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Landroid/app/WallpaperManager;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->updateWallpaperFontColor()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->addCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 29
    .line 30
    iget-boolean p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->registerHbmListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledScreenOn()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 56
    .line 57
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->isKeyguardBouncerShowing()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIconWithAnimation()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isShowing()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showSensorIconDueToAodWhenScreenIsOff()V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCallback:Lcom/samsung/android/biometrics/app/setting/ClientCallback;

    .line 91
    .line 92
    invoke-interface {p1, p0}, Lcom/samsung/android/biometrics/app/setting/ClientCallback;->onClientStarted(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final stop()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x3

    .line 25
    const/4 v3, 0x0

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mIsAuthenticated:Z

    .line 38
    .line 39
    const-string v1, "BSS_UdfpsKeyguardClient"

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOffDoze(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->removeCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 61
    .line 62
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mBlackMaskWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->shouldMaintainWindow()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    const-string v0, "stop: should maintain window"

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->stop()V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 98
    .line 99
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->releaseWakeLock()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final stopImmediate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->stop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final turnOnTsp()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsUltrasonic:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD_TRANSITION_ANIMATION:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->updateValue()V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodStartTime:I

    .line 30
    .line 31
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodEndTime:I

    .line 32
    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->isInAodScheduleTime()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    :goto_0
    const-string p0, "BSS"

    .line 43
    .line 44
    :goto_1
    move-object v6, p0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    move-object v1, v0

    .line 49
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    const/4 v3, 0x1

    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final updateWallpaperFontColor()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 4
    .line 5
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->isKeyguardBouncerShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-class v2, Landroid/app/WallpaperManager;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/WallpaperManager;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-wide/16 v4, 0x200

    .line 31
    .line 32
    invoke-virtual {v0, v4, v5}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-wide/16 v4, 0x80

    .line 38
    .line 39
    invoke-virtual {v0, v4, v5}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    move v3, v2

    .line 52
    :cond_2
    xor-int/lit8 v0, v3, 0x1

    .line 53
    .line 54
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mWallpaperFontColor:I

    .line 55
    .line 56
    return-void
.end method
