.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;
.super Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxPromptClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    invoke-direct {p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 14
    .line 15
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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

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
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->createAuthCredentialWindow()Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->createAuthCredentialWindow(Z)Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    move-result-object p0

    return-object p0
.end method

.method public final onAuthenticationFailed(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "onAuthenticationFailed"

    .line 7
    .line 8
    const-string v2, "KKG::WorkProfileSysUiClientHelper"

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 16
    .line 17
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 23
    .line 24
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v5, 0x32

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x5

    .line 34
    if-lt v1, v5, :cond_2

    .line 35
    .line 36
    const-string v1, "isBiometricDeadlineForWorkProfile ( too many failed. )"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v1, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    new-instance v0, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "android.intent.extra.user_handle"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 70
    .line 71
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 72
    .line 73
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    .line 79
    const/16 v2, 0x1000

    .line 80
    .line 81
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 93
    .line 94
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 95
    .line 96
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 101
    .line 102
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    if-eqz v1, :cond_5

    .line 107
    .line 108
    rem-int/2addr v1, v7

    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    .line 113
    const/16 v2, 0x7530

    .line 114
    .line 115
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v1, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 127
    .line 128
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 129
    .line 130
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 143
    .line 144
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 145
    .line 146
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 151
    .line 152
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationFailed(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "KKG::WorkProfileClient"

    .line 2
    .line 3
    const-string v1, "onAuthenticationSucceeded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v2, "KKG::WorkProfileSysUiClientHelper"

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 21
    .line 22
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 28
    .line 29
    iget v1, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;->mClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v1, "interceptHandleAuthenticationSucceededIfNeeded"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 47
    .line 48
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 49
    .line 50
    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 57
    .line 58
    const-string v3, "MANAGED_PROFILE_KNOX_ONLY_CONFIRM_BIOMETRIC"

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    const-string v0, "Only confirm biometric case when two-factor."

    .line 68
    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 74
    .line 75
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    const-string v0, "Applied password policy with multificator enabled."

    .line 82
    .line 83
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onAuthenticationSucceeded(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method
