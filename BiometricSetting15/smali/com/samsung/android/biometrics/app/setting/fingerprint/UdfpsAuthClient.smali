.class public abstract Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;


# virtual methods
.method public createUdfpsAuthSensorWindow()Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getBgHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 9
    .line 10
    return-object p0
.end method

.method public onAuthenticationError(IILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCaptureComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->getVisibleWindowInfoList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "com.samsung.android.service.aircommand"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "Air_Cmd(Launcher)"

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string p1, " window is shown"

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "BSS_Utils"

    .line 61
    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->onUserCancel(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mIsKeyguard:Z

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;->getBgHandler()Landroid/os/Handler;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const p1, 0x7f1000a4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 100
    .line 101
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/Utils$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/biometrics/app/setting/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method
