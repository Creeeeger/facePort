.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;
.super Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxPromptClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 5
    .line 6
    invoke-direct {p2, p1, p7, p6}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final createAuthCredentialWindow()Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;)V

    return-object v0
.end method

.method public final createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;->createAuthCredentialWindow()Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    move-result-object p0

    return-object p0
.end method

.method public final onAuthenticationFailed(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationFailed(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p1, "onAuthenticationFailed"

    .line 10
    .line 11
    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 19
    .line 20
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 26
    .line 27
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v3, 0x32

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x5

    .line 37
    if-lt p1, v3, :cond_1

    .line 38
    .line 39
    const-string p1, "mFailedBiometricUnlockAttemptsForSecureFolder ( too many failed. )"

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    .line 51
    const/16 v0, 0x1000

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    iget-object p0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 65
    .line 66
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 67
    .line 68
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 73
    .line 74
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    if-eqz p1, :cond_3

    .line 79
    .line 80
    rem-int/2addr p1, v5

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    .line 85
    const/16 v0, 0x7530

    .line 86
    .line 87
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    iget-object p0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 99
    .line 100
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 101
    .line 102
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object p0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 107
    .line 108
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "KKG::SecureFolderClient"

    .line 2
    .line 3
    const-string v1, "onAuthenticationSucceeded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationSucceeded(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string p1, "KKG::SecureFolderSysUiClientHelper"

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/16 v2, 0x3e8

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 41
    .line 42
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 48
    .line 49
    iget p1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
