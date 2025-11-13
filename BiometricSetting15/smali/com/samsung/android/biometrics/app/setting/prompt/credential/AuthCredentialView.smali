.class public abstract Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;
.super Landroid/widget/LinearLayout;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAlertMode:I

.field public mBtnCancel:Landroid/widget/Button;

.field public mBtnContinue:Landroid/widget/Button;

.field public final mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

.field public mDefaultUnlockGuide:Ljava/lang/CharSequence;

.field public mDescription:Ljava/lang/CharSequence;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mErrorView:Landroid/widget/TextView;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBiometricInfoModeOnCover:Z

.field public mIsDetachedFromWindow:Z

.field public mIsPasswordShown:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mSubTitle:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTxtViewDescription:Landroid/widget/TextView;

.field public mTxtViewSubTitle:Landroid/widget/TextView;

.field public mTxtViewTitle:Landroid/widget/TextView;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mSubTitle:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTitle:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDescription:Ljava/lang/CharSequence;

    .line 16
    .line 17
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const-string p1, "BSS_AuthCredentialView"

    .line 26
    .line 27
    const-string p2, "AuthCredentialView"

    .line 28
    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-class p2, Landroid/os/UserManager;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/os/UserManager;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    .line 66
    .line 67
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 78
    .line 79
    return-void
.end method

.method public static getLastAttemptBeforeWipeDeviceMessageRes(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const p0, 0x7f100024

    .line 8
    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const p0, 0x7f100027

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const p0, 0x7f10002a

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method private getUserTypeForWipe()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x3

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    :cond_1
    return-void
.end method


# virtual methods
.method public clearErrorMessage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getErrorTextView()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public disableButton(Landroid/widget/Button;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x4

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public enableButton(Landroid/widget/Button;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public enterAlertMode(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enterAlertMode: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_AuthCredentialView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v0, "Unrecognized user type:"

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne p1, v3, :cond_8

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getUserTypeForWipe()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 43
    .line 44
    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 45
    .line 46
    if-eq p1, v3, :cond_7

    .line 47
    .line 48
    if-eq p1, v2, :cond_4

    .line 49
    .line 50
    if-ne p1, v1, :cond_3

    .line 51
    .line 52
    if-eq v4, v3, :cond_2

    .line 53
    .line 54
    if-eq v4, v2, :cond_1

    .line 55
    .line 56
    const p1, 0x7f100026

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const p1, 0x7f100029

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const p1, 0x7f10002c

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_4
    if-eq v4, v3, :cond_6

    .line 79
    .line 80
    if-eq v4, v2, :cond_5

    .line 81
    .line 82
    const p1, 0x7f100025

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const p1, 0x7f100028

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    const p1, 0x7f10002b

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getLastAttemptBeforeWipeDeviceMessageRes(I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enableButton(Landroid/widget/Button;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enableButton(Landroid/widget/Button;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    if-ne p1, v2, :cond_c

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getUserTypeForWipe()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eq p1, v3, :cond_b

    .line 116
    .line 117
    if-eq p1, v2, :cond_a

    .line 118
    .line 119
    if-ne p1, v1, :cond_9

    .line 120
    .line 121
    const p1, 0x7f100022

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_a
    const p1, 0x7f100021

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_b
    const p1, 0x7f100020

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->disableButton(Landroid/widget/Button;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->disableButton(Landroid/widget/Button;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_c
    const/4 p1, 0x0

    .line 154
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewTitle:Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const v2, 0x7f100023

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    if-eqz p1, :cond_d

    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 186
    .line 187
    const-string v0, ""

    .line 188
    .line 189
    invoke-static {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public exitAlertMode()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleAndDescription()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 4
    .line 5
    return-object p0
.end method

.method public getDefaultUnlockGuide()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const v0, 0x7f100042

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v0, 0x7f100041

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const v0, 0x7f100040

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public getEffectiveUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 4
    .line 5
    return p0
.end method

.method public getErrorTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLengthFromPercent(II)D
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/graphics/Point;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 28
    .line 29
    .line 30
    const/high16 p0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {v0, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-ne p2, v2, :cond_0

    .line 37
    .line 38
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 39
    .line 40
    :goto_0
    int-to-float p1, p1

    .line 41
    mul-float/2addr p1, p0

    .line 42
    float-to-double p0, p1

    .line 43
    return-wide p0

    .line 44
    :cond_0
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 45
    .line 46
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x7f0a012e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 1
    const v0, 0x7f0a00ee

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/ScrollView;

    .line 9
    .line 10
    return-object p0
.end method

.method public getSelection()I
    .locals 1

    .line 1
    const v0, 0x7f0a012e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public isScreenLandscape()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isTwoPaneLandScape()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordTabletView;

    .line 2
    .line 3
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_AuthCredentialView"

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a01e6

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewTitle:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a01c2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const v0, 0x7f0a0092

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const v0, 0x7f0a009a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 65
    .line 66
    :goto_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionVisibility(I)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a00c1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 80
    .line 81
    const v1, 0x7f0a006a

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/Button;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    const v1, 0x7f0a0069

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/Button;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mSavedInstanceState:Landroid/os/Bundle;

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    const-string v2, "alertMode"

    .line 120
    .line 121
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    :cond_3
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 141
    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setTitleAndDescription()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 148
    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 160
    .line 161
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    const v0, 0x7f0a00ec

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 178
    .line 179
    iget-boolean v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z

    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const v3, 0x7f080051

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 201
    .line 202
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOrganizationColor:I

    .line 203
    .line 204
    if-eqz v2, :cond_7

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const v3, 0x7f080050

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setEmergencyCallButton()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->resizeMainLayout()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionCustom()V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 242
    .line 243
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 244
    .line 245
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v0

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->startLockoutTimer(J)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0069

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/16 v1, 0x3eb

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onCancelButtonClicked()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const v1, 0x7f0a006a

    .line 39
    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->exitAlertMode()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onContinueButtonClicked()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const v0, 0x7f0a00bc

    .line 60
    .line 61
    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-class v0, Landroid/telecom/TelecomManager;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/telecom/TelecomManager;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/high16 v0, 0x14000000

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onCancelButtonClicked()V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isTwoPaneLandScape()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->resizeMainLayout()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onContinueButtonClicked()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onCredentialVerified: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_AuthCredentialView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->run()V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 34
    .line 35
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 43
    .line 44
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 56
    .line 57
    iget-wide v4, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOperationId:J

    .line 58
    .line 59
    iget v6, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 60
    .line 61
    move-wide v2, p1

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    if-lez p2, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 98
    .line 99
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 100
    .line 101
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 108
    .line 109
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->updateErrorMessage()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->startLockoutTimer(J)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 127
    .line 128
    iget p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->updateErrorMessage()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showRetryMessage()V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_AuthCredentialView"

    .line 5
    .line 6
    const-string v1, "onDetachedFromWindow"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsDetachedFromWindow:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mCountDownTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mCountDownTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

    .line 27
    .line 28
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "alertMode"

    .line 38
    .line 39
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mSavedInstanceState:Landroid/os/Bundle;

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 20
    .line 21
    const/16 p3, 0x3eb

    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return p2
.end method

.method public onLockoutTimeoutFinish()V
    .locals 2

    .line 1
    const-string v0, "BSS_AuthCredentialView"

    .line 2
    .line 3
    const-string v1, "onLockoutTimeoutFinish"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 11
    .line 12
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->run()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onLockoutTimeoutStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public resizeMainLayout()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isTwoPaneLandScape()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0133

    .line 6
    .line 7
    .line 8
    const-string v2, "BSS_AuthCredentialView"

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    const-string v0, "resizeMainLayoutTwoPane"

    .line 13
    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isScreenLandscape()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    :goto_0
    if-eqz v1, :cond_1

    .line 59
    .line 60
    sub-int v6, v5, v3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidthInPortraitMode(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    :goto_1
    if-eqz v1, :cond_2

    .line 70
    .line 71
    const-wide v7, 0x3fc70a3d70a3d70aL    # 0.18

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    .line 78
    .line 79
    :goto_2
    if-eqz v1, :cond_3

    .line 80
    .line 81
    move v1, v6

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v1, v5

    .line 84
    :goto_3
    int-to-double v9, v1

    .line 85
    mul-double/2addr v9, v7

    .line 86
    double-to-int v1, v9

    .line 87
    add-int/2addr v3, v4

    .line 88
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const v7, 0x7f07005a

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    add-int/2addr v4, v3

    .line 102
    sub-int/2addr v1, v4

    .line 103
    int-to-double v3, v6

    .line 104
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    mul-double/2addr v3, v6

    .line 110
    double-to-int v3, v3

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .line 117
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 118
    .line 119
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 120
    .line 121
    const/16 v3, 0x10

    .line 122
    .line 123
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 124
    .line 125
    int-to-double v6, v5

    .line 126
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    const-wide v8, 0x3fd6666666666666L    # 0.35

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    const-wide v8, 0x3fe199999999999aL    # 0.55

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :goto_4
    mul-double/2addr v6, v8

    .line 146
    double-to-int p0, v6

    .line 147
    iput p0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "displayHeight = "

    .line 155
    .line 156
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v0, "Top Margin = "

    .line 172
    .line 173
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_5
    const-string v0, "resizeMainLayoutOnePane"

    .line 189
    .line 190
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    const v1, 0x7f0a01e9

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    const v2, 0x7f0a00b8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/widget/LinearLayout;

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    if-eqz v1, :cond_9

    .line 220
    .line 221
    if-eqz v2, :cond_9

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 228
    .line 229
    const/4 v4, -0x1

    .line 230
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isScreenLandscape()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_7

    .line 237
    .line 238
    sget-boolean v5, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 239
    .line 240
    if-eqz v5, :cond_6

    .line 241
    .line 242
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    iget v5, v5, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 253
    .line 254
    if-nez v5, :cond_6

    .line 255
    .line 256
    const/high16 v5, 0x7f090000

    .line 257
    .line 258
    const/4 v6, 0x2

    .line 259
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getLengthFromPercent(II)D

    .line 260
    .line 261
    .line 262
    move-result-wide v5

    .line 263
    double-to-int v5, v5

    .line 264
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 265
    .line 266
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    sub-int/2addr v5, p0

    .line 271
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 272
    .line 273
    :cond_6
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 274
    .line 275
    const/4 p0, 0x0

    .line 276
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 277
    .line 278
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    .line 280
    .line 281
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    .line 283
    invoke-direct {v5, p0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    const/high16 p0, 0x3f800000    # 1.0f

    .line 287
    .line 288
    iput p0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_7
    sget-boolean v5, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 292
    .line 293
    const/4 v6, 0x1

    .line 294
    if-eqz v5, :cond_8

    .line 295
    .line 296
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 297
    .line 298
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    iget v5, v5, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 307
    .line 308
    if-nez v5, :cond_8

    .line 309
    .line 310
    const v5, 0x7f090001

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getLengthFromPercent(II)D

    .line 314
    .line 315
    .line 316
    move-result-wide v7

    .line 317
    double-to-int v5, v7

    .line 318
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 319
    .line 320
    :cond_8
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    const v5, 0x7f070059

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    float-to-int p0, p0

    .line 334
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 335
    .line 336
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    .line 338
    .line 339
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 340
    .line 341
    const/4 p0, -0x2

    .line 342
    invoke-direct {v5, v4, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .line 344
    .line 345
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    .line 353
    .line 354
    :cond_9
    :goto_6
    return-void
.end method

.method public setDescriptionCustom()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setDescriptionMargins()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    const v0, 0x7f0a00f8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showMoreOptionButton()V

    .line 48
    .line 49
    .line 50
    check-cast v1, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const v0, 0x7f0a0093

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$1;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_1
    if-eqz v0, :cond_7

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    check-cast v1, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getDescription()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-static {v3, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getListItems()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    move v3, v2

    .line 121
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ge v3, v4, :cond_5

    .line 126
    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    instance-of v4, v4, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 140
    .line 141
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    instance-of v4, v4, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 154
    .line 155
    if-eqz v4, :cond_4

    .line 156
    .line 157
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    const v0, 0x7f0a015f

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/ListView;

    .line 181
    .line 182
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 183
    .line 184
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    const v5, 0x7f0d0026

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    move v3, v2

    .line 204
    move v4, v3

    .line 205
    :goto_2
    if-ge v3, v1, :cond_6

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    const/4 v6, 0x0

    .line 212
    invoke-interface {v5, v3, v6, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 225
    .line 226
    const/high16 v7, 0x43fa0000    # 500.0f

    .line 227
    .line 228
    mul-float/2addr v6, v7

    .line 229
    float-to-int v6, v6

    .line 230
    const/high16 v7, -0x80000000

    .line 231
    .line 232
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    add-int/2addr v4, v5

    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    add-int/lit8 v1, v1, -0x1

    .line 256
    .line 257
    mul-int/2addr v1, v2

    .line 258
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    add-int/2addr v3, v2

    .line 267
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    add-int/2addr v4, v1

    .line 272
    add-int/2addr v4, v3

    .line 273
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 279
    .line 280
    .line 281
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->updateScrollViewDivider()V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public setDescriptionMargins()V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    .line 19
    .line 20
    invoke-static {v4, v5, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v5, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    .line 45
    .line 46
    invoke-static {v3, v5, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_0
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setDescriptionVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEmergencyCallButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isShowEmergencyCallButton()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f0a00bc

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/Button;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enableButton(Landroid/widget/Button;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setErrorTextVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLockoutTimer(Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 2
    .line 3
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x7f0a012e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setPasswordShown(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getDefaultUnlockGuide()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTitle:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, ""

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "android"

    .line 65
    .line 66
    const-string v3, "biometric_dialog_default_subtitle"

    .line 67
    .line 68
    const-string v4, "string"

    .line 69
    .line 70
    invoke-virtual {p1, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-lez p1, :cond_1

    .line 75
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-object p1, v2

    .line 84
    :goto_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    move-object v2, v0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDefaultUnlockGuide:Ljava/lang/CharSequence;

    .line 93
    .line 94
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    move-object v0, v2

    .line 102
    :catch_0
    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mSubTitle:Ljava/lang/CharSequence;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_4
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDescription:Ljava/lang/CharSequence;

    .line 120
    .line 121
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    const v0, 0x7f0a012e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTextToDescriptionView(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextToSubTitleView(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTitleAndDescription()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTitle:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isContentViewListBoxUsed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewSubTitle:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mSubTitle:Ljava/lang/CharSequence;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    .line 48
    invoke-static {v0, p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewDescription:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mDescription:Ljava/lang/CharSequence;

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    .line 73
    invoke-static {v0, p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 74
    .line 75
    .line 76
    :goto_3
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mTxtViewTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0xbb8

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getErrorTextView()Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public showLockoutMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getErrorTextView()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public showMoreOptionButton()V
    .locals 1

    .line 1
    const v0, 0x7f0a00f9

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public showRetryMessage()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f10015c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showError(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final startLockoutTimer(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    sub-long/2addr p1, v2

    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-lez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockoutTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mCountDownTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

    .line 49
    .line 50
    invoke-direct {v1, v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;J)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mCountDownTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final updateErrorMessage()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 14
    .line 15
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "updateErrorMessage: "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "BSS_AuthCredentialView"

    .line 44
    .line 45
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    if-gtz v0, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const v4, 0x7f10001e

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->showError(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sub-int/2addr v1, v0

    .line 80
    const/4 v0, 0x1

    .line 81
    if-ne v1, v0, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v3, 0x2

    .line 88
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    if-gtz v1, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/4 v3, 0x3

    .line 102
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return v0

    .line 109
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public updateScrollViewDivider()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getScrollView()Landroid/widget/ScrollView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;Landroid/widget/ScrollView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
