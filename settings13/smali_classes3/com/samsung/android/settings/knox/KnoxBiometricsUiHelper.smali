.class public Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;
.super Ljava/lang/Object;
.source "KnoxBiometricsUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V
    .locals 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KKG::KnoxBiometricsUiHelper"

    .line 23
    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    .line 29
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;-><init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;-><init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public interceptIfNeeded()Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public interceptIsBiometricAllowedIfNeeded()Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptIsBiometricAllowedIfNeeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnAuthenticationFailedIfNeeded(Z)Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationFailedIfNeeded(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptShowConfirmCredentialsIfNeeded()Z
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptShowConfirmCredentialsIfNeeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBiometricAllowed(II)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->isBiometricAllowed(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->onStart(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    :cond_0
    return-void
.end method

.method public setResultIfNeeded(Landroid/app/Activity;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->setResultIfNeeded(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
