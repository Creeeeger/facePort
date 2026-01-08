.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setErrorTextVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final disableButton(Landroid/widget/Button;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->disableButton(Landroid/widget/Button;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const p1, 0x7f0a006d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final enableButton(Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enableButton(Landroid/widget/Button;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0a006d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final enterAlertMode(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->enterAlertMode(I)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final exitAlertMode()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->exitAlertMode()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final hidePattern()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 4
    .line 5
    .line 6
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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const v2, 0x7f10002f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;->enableButton(Landroid/widget/Button;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;->enableButton(Landroid/widget/Button;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setSubTitleVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setErrorTextVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public final onContinueButtonClicked()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setSubTitleVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0a009a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setErrorTextVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;->disableButton(Landroid/widget/Button;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;->disableButton(Landroid/widget/Button;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const v0, 0x7f0a0093

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public final onLockoutTimeoutFinish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->onLockoutTimeoutFinish()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setErrorTextVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->setPatternViewVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onLockoutTimeoutStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;->hidePattern()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
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
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    check-cast v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTextToDescriptionView(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0093

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternCoverView;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 82
    .line 83
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsBiometricInfoModeOnCover:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    const v0, 0x7f0a009a

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x4

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
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
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

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
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setErrorTextVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showLockoutMessage(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
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
