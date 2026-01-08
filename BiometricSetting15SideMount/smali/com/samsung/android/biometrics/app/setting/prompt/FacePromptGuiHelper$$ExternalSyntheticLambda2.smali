.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

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
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onNegativeButtonPressed()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 50
    .line 51
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mDismissedReason:I

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->stop()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsCameraBlocked:Z

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-virtual {p1, v1, v1, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const v2, 0x7f10003f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->mIsCameraBlocked:Z

    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->updateIcon(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;->playPunchHoleAnimation()V

    .line 134
    .line 135
    .line 136
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 137
    .line 138
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 139
    .line 140
    const/16 p1, 0x3e9

    .line 141
    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
