.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final clearErrorMessage()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->clearErrorMessage()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final enterAlertMode(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->enterAlertMode(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final exitAlertMode()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->exitAlertMode()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsPinType:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final isScreenLandscape()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImeAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;->updateUiAsMode()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onKeyboardVisibilityChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->onKeyboardVisibilityChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;->updateUiAsMode()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f0a0093

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const/16 p1, 0x8

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;->showMoreOptionButton()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final reactivatePasswordInputFieldAndShowKeyboard()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->reactivatePasswordInputFieldAndShowKeyboard()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final resizeMainLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDescriptionCustom()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const v0, 0x7f0a009a

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    check-cast v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTextToDescriptionView(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0093

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordCoverView;->updateUiAsMode()V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_0
    return-void
.end method

.method public final setDescriptionMargins()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setEmergencyCallButton()V
    .locals 0

    .line 1
    return-void
.end method

.method public setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 12
    .line 13
    return-void
.end method

.method public final showLockoutMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public final showMoreOptionButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const v0, 0x7f0a0093

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final showRetryMessage()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showRetryMessage()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const v1, 0x7f10015c

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateScrollView()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateScrollViewDivider()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateUiAsMode()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsPinType:Z

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setSubTitleVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
