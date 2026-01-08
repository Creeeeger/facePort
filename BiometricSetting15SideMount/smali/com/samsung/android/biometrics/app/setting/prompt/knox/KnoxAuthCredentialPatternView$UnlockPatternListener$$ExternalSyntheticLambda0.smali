.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 6
    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 42
    .line 43
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 54
    .line 55
    move v5, p2

    .line 56
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
