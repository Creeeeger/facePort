.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final getDefaultDescriptionMessage()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final handleAuthenticationError(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleAuthenticationFailed()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleAuthenticationSucceeded()V
    .locals 0

    .line 1
    return-void
.end method

.method public final initPrompt()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->initPrompt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxGuiHelper$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialListBoxGuiHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getPromptWidth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getLeftMargin(IZ)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpLeftMarginViewWidth(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final updateLayoutAsConfigurationChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "onConfigurationChanged:  LAND MODE"

    .line 16
    .line 17
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v3, 0x7f07007d

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    float-to-int p1, p1

    .line 34
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const v3, 0x7f090006

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    .line 53
    int-to-float v3, v3

    .line 54
    mul-float/2addr p1, v3

    .line 55
    float-to-int p1, p1

    .line 56
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 57
    .line 58
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenLandWidth:I

    .line 59
    .line 60
    sub-int/2addr v3, p1

    .line 61
    div-int/2addr v3, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidthInPortraitMode(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const v3, 0x7f090007

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .line 88
    int-to-float v3, v3

    .line 89
    mul-float/2addr p1, v3

    .line 90
    float-to-int p1, p1

    .line 91
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getBottomMarginForPortrait()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    .line 100
    .line 101
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    .line 103
    sub-int/2addr p1, v3

    .line 104
    div-int/lit8 v3, p1, 0x2

    .line 105
    .line 106
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpLeftMarginViewWidth(I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
