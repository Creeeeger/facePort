.class public Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mH:Landroid/os/Handler;

.field public mIsAuthenticated:Z

.field public mMarginOfMultiButton:I

.field public mMarginOfSingleNegativeButton:I

.field public final mModalityType:I

.field public mPositiveButtonGuide:Landroid/widget/Button;

.field public mPurposeOfRetryButton:I

.field public final mRunnableClearGuide:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

.field public mTimePreviousHelpMessage:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V

    .line 3
    .line 4
    .line 5
    const-string p1, "BSS_BiometricCoverGuiHelper"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPurposeOfRetryButton:I

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mH:Landroid/os/Handler;

    .line 18
    .line 19
    iput p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 20
    .line 21
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mRunnableClearGuide:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p2, "BSS_BiometricCoverGuiHelper["

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "]"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final cleanUpPrompt()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->cleanUpPrompt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mH:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mRunnableClearGuide:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final clearGuide(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mRunnableClearGuide:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, p1, v2

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showDefaultIcon()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 18
    .line 19
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public customizeSwitch(I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-le p1, v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const v1, 0x7f0a0074

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/Button;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const v2, 0x7f0a0075

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/Button;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    const v3, 0x7f060042

    .line 58
    .line 59
    .line 60
    const v4, 0x7f080055

    .line 61
    .line 62
    .line 63
    const v5, 0x7f060040

    .line 64
    .line 65
    .line 66
    const v6, 0x7f080062

    .line 67
    .line 68
    .line 69
    if-ne v0, v2, :cond_0

    .line 70
    .line 71
    const v0, 0x7f100032

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    const v0, 0x7f100031

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 158
    .line 159
    const p1, 0x7f0a010d

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const/16 p1, 0x8

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final getDefaultDescriptionMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const v0, 0x7f100113

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v0, 0x7f100098

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public getErrorString(II)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 3
    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/16 v0, 0x8

    .line 14
    .line 15
    if-ne v1, v0, :cond_2

    .line 16
    .line 17
    const v0, 0x186a3

    .line 18
    .line 19
    .line 20
    if-ne p2, v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const p1, 0x7f100050

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p0, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_2
    const-string p0, ""

    .line 40
    .line 41
    return-object p0
.end method

.method public final getNavigationBarHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getOrientation()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getRejectString()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android"

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "sem_fingerprint_result_failed"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v4, "string"

    .line 31
    .line 32
    invoke-virtual {v2, v0, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-object v3

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const v0, 0x7f100061

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final getResourceIdOfPositiveButtonTextSize()I
    .locals 0

    .line 1
    const p0, 0x7f070084

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getScreenLandscapeWidthWithoutNavigationBar()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    .line 5
    return p0
.end method

.method public final getStatusBarHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final handleAuthenticationError(II)V
    .locals 7

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x9

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v0, v1

    .line 14
    :goto_1
    const/4 v3, 0x2

    .line 15
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showDefaultIcon()V

    .line 20
    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_2
    const/16 v5, 0x8

    .line 24
    .line 25
    if-ne v4, v5, :cond_6

    .line 26
    .line 27
    const v6, 0x186a3

    .line 28
    .line 29
    .line 30
    if-ne p2, v6, :cond_3

    .line 31
    .line 32
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPurposeOfRetryButton:I

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const v6, 0x7f10004f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    if-eqz v0, :cond_4

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_4
    :goto_2
    if-ne v4, v5, :cond_5

    .line 53
    .line 54
    const-string v2, "face_error_nomatch.json"

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showIcon(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showPositiveButton(Landroid/widget/Button;)V

    .line 64
    .line 65
    .line 66
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getLockoutErrorMessage(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_4

    .line 73
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->getErrorString(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showMessage(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final handleAuthenticationFailed()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const-string v3, "fingerprint_error_nomatch.json"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ne v1, v0, :cond_1

    .line 12
    .line 13
    const-string v3, "face_error_nomatch.json"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v3, ""

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showIcon(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->getRejectString()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showMessage(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    const-wide/16 v0, 0xbb8

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->clearGuide(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-ne v1, v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showPositiveButton(Landroid/widget/Button;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public final handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x8

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 11
    .line 12
    if-ne v1, v0, :cond_2

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mTimePreviousHelpMessage:J

    .line 19
    .line 20
    sub-long v4, v2, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x320

    .line 23
    .line 24
    cmp-long v0, v4, v6

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iput-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mTimePreviousHelpMessage:J

    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x2

    .line 32
    if-ne v1, v0, :cond_7

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq p1, v1, :cond_6

    .line 36
    .line 37
    if-eq p1, v0, :cond_6

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    if-eq p1, v0, :cond_5

    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    if-eq p1, v0, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x3eb

    .line 46
    .line 47
    if-eq p1, v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string p1, "fingerprint_error_presslong.json"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-string p1, "fingerprint_error_timeout.json"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_5
    const-string p1, "fingerprint_error_wipe.json"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    const-string p1, "fingerprint_error_move.json"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_7
    :goto_0
    const-string p1, ""

    .line 63
    .line 64
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showIcon(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showMessage(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 p1, 0xbb8

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->clearGuide(J)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final handleAuthenticationSucceeded()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mIsAuthenticated:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-ne v1, v2, :cond_4

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const v2, 0x7f100038

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const v1, 0x7f100039

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showPositiveButton(Landroid/widget/Button;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public final handleOnClickSwitchButton(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleCnClickSwitchButton: modality = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", OnModalityChangeListener = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->onModalitySwitched(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final hideSwitch()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a010d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public initPrompt()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->initPrompt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 45
    .line 46
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenLandWidth:I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const v4, 0x7f090008

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float/2addr v3, v0

    .line 66
    float-to-int v0, v3

    .line 67
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->customizeSwitch(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showDefaultIcon()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    const v2, 0x7f0a0073

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/Button;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPositiveButtonGuide:Landroid/widget/Button;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 97
    .line 98
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const v1, 0x7f070067

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    float-to-int v0, v0

    .line 121
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mMarginOfSingleNegativeButton:I

    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const v1, 0x7f07005e

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    float-to-int v0, v0

    .line 137
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mMarginOfMultiButton:I

    .line 138
    .line 139
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mMarginOfSingleNegativeButton:I

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->setNegativeButtonMargin(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 145
    .line 146
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 156
    .line 157
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 158
    .line 159
    const/4 v2, 0x2

    .line 160
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final isScreenLandscape()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setNegativeButtonMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final setUpCustomView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v1, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->getDefaultDescriptionMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 38
    .line 39
    const v1, 0x7f0a0093

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    check-cast v1, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getDescription()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 78
    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->getDefaultDescriptionMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 90
    .line 91
    :cond_2
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getListItems()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Landroid/hardware/biometrics/PromptContentItem;

    .line 123
    .line 124
    instance-of v3, v2, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 125
    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v4, "\n\u2022 "

    .line 131
    .line 132
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast v2, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    instance-of v3, v2, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 153
    .line 154
    if-eqz v3, :cond_3

    .line 155
    .line 156
    check-cast v2, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Ljava/lang/String;

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v3, "\n"

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 202
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_6
    :goto_2
    return-void
.end method

.method public final setUpScrollView()V
    .locals 0

    .line 1
    return-void
.end method

.method public final show()V
    .locals 0

    .line 1
    return-void
.end method

.method public showDefaultIcon()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v1

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v4, 0x7f07007a

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    float-to-int v2, v2

    .line 37
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v2, 0x2

    .line 49
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mModalityType:I

    .line 50
    .line 51
    if-ne v4, v2, :cond_2

    .line 52
    .line 53
    const v2, 0x7f0800b1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const v2, 0x7f060079

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-ne v4, v3, :cond_3

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const v2, 0x7f080065

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    return-void
.end method

.method public final showIcon(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v2, 0x7f07007b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    float-to-int p0, p0

    .line 30
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mRunnableClearGuide:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final showPositiveButton(Landroid/widget/Button;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPositiveButtonGuide:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mMarginOfMultiButton:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->setNegativeButtonMargin(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
