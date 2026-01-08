.class public Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;
.super Landroid/app/Service;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "onBind: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BSS_BiometricsUIService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 45
    .line 46
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 57
    .line 58
    invoke-direct {v4}, Landroid/app/TaskStackListener;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 62
    .line 63
    invoke-direct {v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 67
    .line 68
    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 72
    .line 73
    invoke-direct {v7, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    new-instance v8, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 77
    .line 78
    invoke-direct {v8, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    move-object v0, v9

    .line 82
    move-object v1, p0

    .line 83
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;)V

    .line 84
    .line 85
    .line 86
    iput-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 90
    .line 91
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;

    .line 97
    .line 98
    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 102
    .line 103
    invoke-direct {v4}, Landroid/app/TaskStackListener;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 107
    .line 108
    invoke-direct {v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;-><init>()V

    .line 109
    .line 110
    .line 111
    move-object v0, v6

    .line 112
    move-object v1, p0

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;)V

    .line 114
    .line 115
    .line 116
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 117
    .line 118
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getMainThreadHandler()Landroid/os/Handler;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    .line 133
    .line 134
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onConfigurationChanged : "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BSS_BiometricsUIService"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "onConfigurationChanged : SysUiManager is null"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "BSS_BiometricsUIService"

    .line 2
    .line 3
    const-string v1, "onDestroy() called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->destroy()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
