.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mIconColor:Ljava/lang/String;

.field public final mIconContainerColor:Ljava/lang/String;

.field public final mIsRequireTouchBlock:Z

.field public mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

.field public final mUseKeyguardIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;)V

    .line 2
    iput-boolean p11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIsRequireTouchBlock:Z

    .line 3
    const-string p1, "sem_privileged_attr"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUseKeyguardIcon:Z

    .line 4
    const-string p2, "EXTRA_KEY_ICON_COLOR"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIconColor:Ljava/lang/String;

    .line 5
    const-string p3, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIconContainerColor:Ljava/lang/String;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "custom: "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BSS_UdfpsPrivilegedAuthClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final handleClientError()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, -0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendErrorEventToBioService(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleTspBlock(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public prepareWindows()V
    .locals 10

    .line 1
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

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
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIconColor:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIconContainerColor:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUseKeyguardIcon:Z

    .line 14
    .line 15
    new-instance v8, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v8, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v9

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    iput-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 28
    .line 29
    invoke-virtual {v9, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initFromBaseWindow(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mIsRequireTouchBlock:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/graphics/Point;

    .line 54
    .line 55
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosX:I

    .line 56
    .line 57
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosY:I

    .line 58
    .line 59
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 67
    .line 68
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 69
    .line 70
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 71
    .line 72
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;II)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method
