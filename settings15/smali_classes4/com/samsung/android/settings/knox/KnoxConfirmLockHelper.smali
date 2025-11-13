.class public abstract Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public cancelBiometricIfNeeded()V
    .locals 0

    return-void
.end method

.method public checkPasswordPolicy(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public confirmBiometricIfNeeded(ZLandroidx/fragment/app/FragmentActivity;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDefaultDetails()I
.end method

.method public abstract getDefaultHeader(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getErrorMessage()I
.end method

.method public abstract hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V
.end method

.method public abstract interceptAuthenticationSucceededIfNeeded(ZZ)Z
.end method

.method public interceptOnResumeIfNeeded(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public interceptUpdateEntryOrStateIfNeeded(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract interceptUpdateErrorMessageIfNeeded(I)V
.end method

.method public abstract needToUpdateErrorMessage(ILandroid/widget/TextView;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onCreateView(Landroid/view/View;)V
.end method

.method public abstract onDestroy()V
.end method

.method public onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract removeGlobalLayoutListenerIfRequired()V
.end method

.method public abstract reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;)Z
.end method

.method public abstract reportSuccessfulAttempt()V
.end method

.method public abstract setBiometricLockoutDeadline(I)V
.end method

.method public setCredentialCheckResultTrackerIfNeeded(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setPasswordEntry(Landroid/widget/ImeAwareEditText;)V
.end method

.method public abstract setPatternColor(Lcom/android/internal/widget/LockPatternView;)V
.end method

.method public abstract setShowPwdImgColor(Landroid/widget/ImageButton;Z)V
.end method

.method public abstract setWorkChallengeBackgroundIfNeeded(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public setupForgotButtonIfManagedProfile(Landroid/widget/Button;)V
    .locals 0

    return-void
.end method

.method public abstract switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroid/view/View;
.end method

.method public abstract updateStageNeedToUnlock(Landroid/widget/TextView;)V
.end method

.method public updateState()V
    .locals 0

    return-void
.end method
