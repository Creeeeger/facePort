.class public Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;
.super Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;
.implements Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;


# instance fields
.field protected mCurrentModality:I

.field public mDismissedReason:I

.field protected final mEligibleModalities:Ljava/util/List;

.field public mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

.field public mRemoveUdfpsClient:Ljava/util/function/IntConsumer;

.field public mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 5
    .line 6
    iput-object p0, p7, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 7
    .line 8
    invoke-virtual {p7}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getPrimaryBiometricAuthenticator()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mEligibleModalities:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p7}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->canUseFingerprint()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget p0, p7, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mAvailableBiometric:I

    .line 36
    .line 37
    const/16 p2, 0x8

    .line 38
    .line 39
    and-int/2addr p0, p2

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public createAuthCredentialWindow()Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    move-result-object p0

    return-object p0
.end method

.method public createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxWindow;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-direct {p1, v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->init()V

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    return-object p1
.end method

.method public createBiometricPromptWindow()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final handleOnTaskStackListener(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->isOwnerInBackground()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onUserCancel(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final handleTspBlock(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->canUseFingerprint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_3

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    const/16 v1, 0x3ec

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationHelp(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    return-void
.end method

.method public final isOwnerInBackground()Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getClassNameIfItIsConfirmDeviceCredentialActivity()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 12
    .line 13
    const-string v1, "android"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Landroid/util/Pair;

    .line 29
    .line 30
    invoke-direct {v5, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->isForegroundTask(Ljava/util/List;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v4, v3

    .line 42
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "Checking if the authenticating is in background, clientPackage: "

    .line 45
    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v6, ", clientClassName: "

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, ", isTop: "

    .line 61
    .line 62
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v5, "BSS_Utils"

    .line 73
    .line 74
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    if-nez v4, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move v2, v3

    .line 83
    :goto_1
    if-eqz v2, :cond_2

    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Evicting client due to top activity is not : "

    .line 88
    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v0, "BSS_BiometricPromptClient"

    .line 100
    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    return v2
.end method

.method public onAuthenticationError(IILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 p3, 0x7

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, p3, :cond_1

    .line 5
    .line 6
    const/16 p3, 0x9

    .line 7
    .line 8
    if-ne p1, p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p3, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move p3, v0

    .line 14
    :goto_1
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 15
    .line 16
    const/16 v3, 0x64

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    if-eq p1, v3, :cond_3

    .line 20
    .line 21
    if-ne p1, v4, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v3, v1

    .line 25
    goto :goto_3

    .line 26
    :cond_3
    :goto_2
    move v3, v0

    .line 27
    :goto_3
    const/16 v5, 0x8

    .line 28
    .line 29
    if-ne v2, v5, :cond_4

    .line 30
    .line 31
    const/16 v6, 0x3ee

    .line 32
    .line 33
    if-ne p2, v6, :cond_4

    .line 34
    .line 35
    move v6, v0

    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move v6, v1

    .line 38
    :goto_4
    if-nez v3, :cond_10

    .line 39
    .line 40
    if-eqz v6, :cond_5

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mEligibleModalities:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mEligibleModalities:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x2

    .line 60
    if-eqz v2, :cond_c

    .line 61
    .line 62
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_a

    .line 69
    .line 70
    if-eqz p3, :cond_9

    .line 71
    .line 72
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const v2, 0x7f100044

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 82
    .line 83
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 84
    .line 85
    if-eq v2, v0, :cond_8

    .line 86
    .line 87
    if-eq v2, v3, :cond_7

    .line 88
    .line 89
    if-eq v2, v4, :cond_6

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const v0, 0x7f100045

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    goto :goto_5

    .line 102
    :cond_7
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    const v0, 0x7f100046

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    goto :goto_5

    .line 112
    :cond_8
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const v0, 0x7f100047

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 124
    .line 125
    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDeviceCredentialPressed()V

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_9
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 133
    .line 134
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 135
    .line 136
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationError(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_a
    iget p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 141
    .line 142
    if-ne p3, v3, :cond_d

    .line 143
    .line 144
    if-ne p1, v5, :cond_d

    .line 145
    .line 146
    const/16 p3, 0x3ea

    .line 147
    .line 148
    if-eq p2, p3, :cond_b

    .line 149
    .line 150
    const/16 p3, 0x3eb

    .line 151
    .line 152
    if-eq p2, p3, :cond_b

    .line 153
    .line 154
    const/16 p3, 0x3ec

    .line 155
    .line 156
    if-ne p2, p3, :cond_d

    .line 157
    .line 158
    :cond_b
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 159
    .line 160
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 161
    .line 162
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationError(II)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_c
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 167
    .line 168
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 169
    .line 170
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationError(II)V

    .line 171
    .line 172
    .line 173
    :goto_6
    move v0, v1

    .line 174
    :cond_d
    iget p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 175
    .line 176
    if-ne p3, v3, :cond_f

    .line 177
    .line 178
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 179
    .line 180
    if-eqz p3, :cond_e

    .line 181
    .line 182
    invoke-virtual {p3, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 183
    .line 184
    .line 185
    :cond_e
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mRemoveUdfpsClient:Ljava/util/function/IntConsumer;

    .line 186
    .line 187
    if-eqz p3, :cond_f

    .line 188
    .line 189
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 190
    .line 191
    invoke-interface {p3, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 192
    .line 193
    .line 194
    :cond_f
    move v1, v0

    .line 195
    goto :goto_8

    .line 196
    :cond_10
    :goto_7
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 197
    .line 198
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 199
    .line 200
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationError(II)V

    .line 201
    .line 202
    .line 203
    :goto_8
    if-eqz v1, :cond_11

    .line 204
    .line 205
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 206
    .line 207
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 208
    .line 209
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationError(II)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V

    .line 217
    .line 218
    .line 219
    const-wide/16 v0, 0x7d0

    .line 220
    .line 221
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    .line 223
    .line 224
    :cond_11
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationFailed()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationHelp(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mCurrentModality:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 30
    .line 31
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->hideSwitch()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationSucceeded()V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void

    .line 48
    :cond_2
    const/4 p1, 0x4

    .line 49
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 3

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mRemoveUdfpsClient:Ljava/util/function/IntConsumer;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 44
    .line 45
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->isUCMKeyguardEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 54
    .line 55
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialWindow;->addView()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createAuthCredentialWindow()Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final onDismissed(I[B)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onNegativeButtonPressed()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onUserCancel(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onUserCancel: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "BSS_BiometricPromptClient"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final prepareWindows()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPrimaryBiometric:I

    .line 4
    .line 5
    const v1, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createBiometricPromptWindow()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->init()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    const/16 v0, 0x3ec

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->isOwnerInBackground()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onUserCancel(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
