.class public final Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mFeedbackTextView:Landroid/widget/TextView;

.field public mIsCameraBlocked:Z

.field public mIsSupportNegativeButton:Z

.field public mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public mTimePreviousHelpMessage:J

.field public mViViewLocation:Landroid/graphics/Rect;


# virtual methods
.method public final cleanUpPrompt()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->cleanUpPrompt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final getBottomMarginForPortrait()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIsSupportDualDisplay:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayType:I

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getBottomMarginForPortrait()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const v0, 0x7f07007e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    float-to-int p0, p0

    .line 36
    return p0
.end method

.method public final getDefaultDescriptionMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f100098

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getToastMessageInDex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f100064

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final handleAuthenticationError(II)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v0, v1

    .line 13
    :goto_1
    const v2, 0x186a3

    .line 14
    .line 15
    .line 16
    if-ne p2, v2, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const p2, 0x7f100050

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const v2, 0x7f10004f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getLockoutErrorMessage(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 65
    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 70
    .line 71
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public final handleAuthenticationFailed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "mBaseView is null"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const v2, 0x7f100061

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 33
    .line 34
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x320

    .line 10
    .line 11
    cmp-long p1, v2, v4

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-static {p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final handleAuthenticationSucceeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const v3, 0x7f100038

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 63
    .line 64
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const v1, 0x7f100039

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    .line 104
    .line 105
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public final initPrompt()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->initPrompt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "sensor_privacy"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-virtual {v0, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsCameraBlocked:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 43
    .line 44
    const v3, 0x7f0a0102

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setUpPunchHoleVI()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setUpPunchHoleFeedBackText()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    const v1, 0x7f0a0109

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;

    .line 110
    .line 111
    invoke-direct {v2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;Landroid/widget/RelativeLayout;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 118
    .line 119
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 129
    .line 130
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    const/4 v2, 0x1

    .line 133
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 140
    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 v2, 0x2

    .line 146
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0102

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setUpPunchHoleVI()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setUpPunchHoleFeedBackText()V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onRotationInfoChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onRotationInfoChanged(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final pausePunchHoleAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final playPunchHoleAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "any_screen_running"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "BSS_Utils"

    .line 29
    .line 30
    const-string v2, "isOneHandedModeActive : context = null"

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getAnimationName(Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final setPunchHoleRotation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 36
    .line 37
    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x3

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v0, v1

    .line 59
    int-to-float v0, v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    int-to-float v0, v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 74
    .line 75
    const/high16 p1, 0x42b40000    # 90.0f

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public final setTextOnDescriptionTextView(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final setUpPunchHoleFeedBackText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0103

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/16 p0, 0x8

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final setUpPunchHoleVI()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->initialize()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 17
    .line 18
    const v1, 0x7f0a010c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    .line 41
    sget-object v1, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 55
    .line 56
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    .line 108
    .line 109
    .line 110
    :cond_0
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
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 46
    .line 47
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getLeftMargin(IZ)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpLeftMarginViewWidth(I)V

    .line 52
    .line 53
    .line 54
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->customizeSwitch(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    .line 68
    .line 69
    return-void
.end method

.method public final updateIcon(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const v3, 0x7f080065

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0700e9

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const v2, 0x7f0700e7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    float-to-int p0, p0

    .line 51
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    if-ne p1, p0, :cond_0

    .line 66
    .line 67
    const-string p0, "face_error_nomatch.json"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final updateLayoutAsConfigurationChanged(I)V
    .locals 3

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
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getPromptWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "onConfigurationChanged:  LAND MODE"

    .line 21
    .line 22
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenLandWidth:I

    .line 26
    .line 27
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 28
    .line 29
    sub-int/2addr p1, v2

    .line 30
    div-int/2addr p1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidthInPortraitMode(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    .line 39
    .line 40
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    .line 42
    sub-int/2addr p1, v2

    .line 43
    div-int/2addr p1, v1

    .line 44
    :goto_0
    const/4 v1, 0x1

    .line 45
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 46
    .line 47
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpLeftMarginViewWidth(I)V

    .line 53
    .line 54
    .line 55
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->customizeSwitch(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpKnoxBrandLogoImage()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
