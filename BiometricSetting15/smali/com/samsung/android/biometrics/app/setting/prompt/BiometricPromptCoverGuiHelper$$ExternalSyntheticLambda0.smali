.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->handleOnClickSwitchButton(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->handleOnClickSwitchButton(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 22
    .line 23
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 35
    .line 36
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPurposeOfRetryButton:I

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    const/4 v1, 0x2

    .line 49
    if-ne p1, v1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v2, "sensor_privacy"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, v1, v1, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const v2, 0x7f10003f

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPurposeOfRetryButton:I

    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->showDefaultIcon()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 87
    .line 88
    const/4 v1, 0x4

    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mPositiveButtonGuide:Landroid/widget/Button;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mMarginOfSingleNegativeButton:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->setNegativeButtonMargin(I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 117
    .line 118
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 119
    .line 120
    const/16 p1, 0x3e9

    .line 121
    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v1, 0x3

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverGuiHelper;->mIsAuthenticated:Z

    .line 136
    .line 137
    if-eqz p0, :cond_2

    .line 138
    .line 139
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 140
    .line 141
    invoke-interface {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 146
    .line 147
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    xor-int/lit8 p0, p0, 0x1

    .line 162
    .line 163
    if-eqz p0, :cond_4

    .line 164
    .line 165
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 166
    .line 167
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onNegativeButtonPressed()V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 172
    .line 173
    invoke-interface {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
