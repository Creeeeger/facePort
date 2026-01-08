.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPatternCleared()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x4

    .line 16
    if-ge v0, v2, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 23
    .line 24
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->updateErrorMessage(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->getErrorMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->showError(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const v0, 0x7f10015a

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->showError(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 95
    .line 96
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 97
    .line 98
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x1

    .line 104
    invoke-static {v1, p1, v2, p0, v3}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iput-object p0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_0
    throw p0
.end method

.method public final onPatternStart()V
    .locals 0

    .line 1
    return-void
.end method
