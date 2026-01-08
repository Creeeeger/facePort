.class public abstract Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;
.super Landroid/widget/LinearLayout;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mDescriptionView:Landroid/widget/TextView;

.field public mErrorView:Landroid/widget/TextView;

.field public mIconView:Landroid/widget/ImageView;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mSubtitleView:Landroid/widget/TextView;

.field public mTitleView:Landroid/widget/TextView;

.field public mUCMtitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;

    .line 10
    .line 11
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mTitleView:Landroid/widget/TextView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mSubtitleView:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mUCMtitleView:Landroid/widget/TextView;

    .line 87
    .line 88
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 89
    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getUCMKeyguardVendorName(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const v2, 0x7f080052

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mIconView:Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a01e6

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mTitleView:Landroid/widget/TextView;

    .line 14
    .line 15
    const v0, 0x7f0a01c2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mSubtitleView:Landroid/widget/TextView;

    .line 25
    .line 26
    const v0, 0x7f0a01f1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mUCMtitleView:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a009a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    .line 47
    .line 48
    const v0, 0x7f0a00ec

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mIconView:Landroid/widget/ImageView;

    .line 58
    .line 59
    const v0, 0x7f0a00c1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 69
    .line 70
    return-void
.end method

.method public setKnoxClientHelper(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    return-void
.end method
