.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mBioSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

.field public final mBrightnessFilePath:Ljava/lang/String;

.field public mCurrentBrightness:I

.field public final mFileObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

.field public final mGetFpService:Ljava/util/function/Supplier;

.field public final mH:Landroid/os/Handler;

.field public mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public final mListenerList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Looper;ZLjava/util/function/Supplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mH:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 17
    .line 18
    const-string p1, "qcom"

    .line 19
    .line 20
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "/sys/class/backlight/panel0-backlight/brightness"

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBrightnessFilePath:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "/sys/class/lcd/panel/device/backlight/panel/brightness"

    .line 34
    .line 35
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBrightnessFilePath:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mGetFpService:Ljava/util/function/Supplier;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mFileObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

    .line 43
    .line 44
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBioSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBioSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

    .line 53
    .line 54
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

    .line 55
    .line 56
    new-instance p2, Ljava/io/File;

    .line 57
    .line 58
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBrightnessFilePath:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mFileObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

    .line 67
    .line 68
    :goto_1
    return-void
.end method


# virtual methods
.method public getBioSysUiDisplayBrightnessCallback()Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBioSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBrightnessFromFile()I
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBrightnessFilePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->readFile(Ljava/io/File;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const-string v0, "4"

    .line 30
    .line 31
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_CONFIG_CONTROL_AUTO_BRIGHTNESS:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    div-int/lit8 p0, p0, 0x64
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    return p0

    .line 45
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "getBrightnessFromFile: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v0, "BSS_DisplayBrightnessMonitor"

    .line 64
    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    const/4 p0, -0x1

    .line 69
    return p0
.end method

.method public getFileObserver()Landroid/os/FileObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mFileObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleDisplayBrightnessChanged(F)V
    .locals 2

    .line 1
    float-to-int p1, p1

    .line 2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "handleDisplayBrightnessChanged: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " -> "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BSS_DisplayBrightnessMonitor"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 36
    .line 37
    if-ne v0, p1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 43
    .line 44
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;

    .line 61
    .line 62
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;->onBrightnessChanged(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public final observe(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mFileObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    const-string v0, "IFingerprintService is NULL"

    .line 6
    .line 7
    const-string v1, "BSS_DisplayBrightnessMonitor"

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mBioSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$1;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mGetFpService:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/hardware/fingerprint/IFingerprintService;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 26
    .line 27
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 28
    .line 29
    const/16 v3, 0x7f

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semRegisterDisplayBrightnessCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;)I

    .line 38
    .line 39
    .line 40
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "registerDisplayBrightnessCallbackForOpt: "

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mGetFpService:Ljava/util/function/Supplier;

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/hardware/fingerprint/IFingerprintService;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 80
    .line 81
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 82
    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintService;->semUnregisterDisplayBrightnessCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "unregisterDisplayBrightnessCallbackForOpt: "

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->getBrightnessFromFile()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 126
    .line 127
    if-eq v0, p1, :cond_7

    .line 128
    .line 129
    const/4 v0, -0x1

    .line 130
    if-eq p1, v0, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->getBrightnessFromFile()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mCurrentBrightness:I

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_1
    return-void
.end method

.method public readFile(Ljava/io/File;)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final registerListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 23
    .line 24
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x1

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->observe(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$OnBrightnessListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 23
    .line 24
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mH:Landroid/os/Handler;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->observe(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method
