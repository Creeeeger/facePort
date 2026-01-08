.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxCoverGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final customizeSwitch(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const p1, 0x7f0a010d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final initPrompt()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->initPrompt()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final showDefaultIcon()V
    .locals 0

    .line 1
    return-void
.end method
