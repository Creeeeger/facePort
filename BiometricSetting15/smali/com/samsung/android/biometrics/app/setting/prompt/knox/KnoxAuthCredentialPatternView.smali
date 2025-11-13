.class public Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mLockPatternView:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a012f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 28
    .line 29
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    xor-int/2addr v1, v2

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 57
    .line 58
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const v2, 0x7f060031

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const v2, -0xbbbbbc

    .line 68
    .line 69
    .line 70
    const/high16 v3, -0x10000

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 86
    .line 87
    invoke-interface {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final onErrorTimeoutFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 18
    .line 19
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 22
    .line 23
    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;ILandroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
