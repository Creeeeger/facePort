.class public Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmDeviceCredentialBaseFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V
    .locals 8

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KKG::KnoxConfirmDeviceCredentialBaseFragmentHelper"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->TAG:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;-><init>(Landroid/content/Context;IIZZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;-><init>(Landroid/content/Context;IIZZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkPasswordPolicy(Landroid/app/Activity;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->checkPasswordPolicy(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultDetails()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getDefaultDetails()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultHeader(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getDefaultHeader(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getErrorMessage(I)I
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getErrorMessage(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V

    :cond_0
    return-void
.end method

.method public interceptAuthenticationSucceededIfNeeded(ZZ)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptAuthenticationSucceededIfNeeded(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnResumeIfNeeded(Landroid/app/Activity;)Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptOnResumeIfNeeded(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptUpdateErrorMessageIfNeeded(I)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptUpdateErrorMessageIfNeeded(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needToUpdateErrorMessage(Landroid/widget/TextView;I)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreateView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onPause()V

    :cond_0
    return-void
.end method

.method public onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onSavedInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public removeGlobalLayoutListenerIfRequired()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->removeGlobalLayoutListenerIfRequired()V

    :cond_0
    return-void
.end method

.method public reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroid/app/Activity;)Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reportSuccessfulAttempt()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->reportSuccessfulAttempt()V

    :cond_0
    return-void
.end method

.method public resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public setBiometricLockoutDeadline(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setBiometricLockoutDeadline(I)V

    :cond_0
    return-void
.end method

.method public setCredentialCheckResultTrackerIfNeeded(Z)Z
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setCredentialCheckResultTrackerIfNeeded(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPasswordEntry(Landroid/widget/ImeAwareEditText;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setPasswordEntry(Landroid/widget/ImeAwareEditText;)V

    :cond_0
    return-void
.end method

.method public setPatternColor(Lcom/android/internal/widget/LockPatternView;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setPatternColor(Lcom/android/internal/widget/LockPatternView;)V

    :cond_0
    return-void
.end method

.method public setShowPwdImgColor(Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setShowPwdImgColor(Landroid/widget/ImageButton;Z)V

    :cond_0
    return-void
.end method

.method public setWorkChallengeBackgroundIfNeeded(Landroid/view/View;ILandroid/app/Activity;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setWorkChallengeBackgroundIfNeeded(Landroid/view/View;ILandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V

    :cond_0
    return-void
.end method

.method public switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public updateStageNeedToUnlock(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->updateStageNeedToUnlock(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public updateStageNeedToUnlockWrong(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->updateStageNeedToUnlockWrong(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->updateState()V

    :cond_0
    return-void
.end method
