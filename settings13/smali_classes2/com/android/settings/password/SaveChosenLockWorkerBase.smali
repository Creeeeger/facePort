.class abstract Lcom/android/settings/password/SaveChosenLockWorkerBase;
.super Landroidx/fragment/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field private mFinished:Z

.field protected mIsFromKnoxTwoStep:Z

.field private mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

.field protected mNumDigitsConfirmPINWithoutTapping:I

.field protected mRequestGatekeeperPassword:Z

.field private mResultData:Landroid/content/Intent;

.field protected mTask:Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

.field protected mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field protected mUnificationProfileId:I

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, -0x2710

    .line 50
    iput v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mNumDigitsConfirmPINWithoutTapping:I

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    .line 136
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    invoke-interface {v0, v1, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->onLockScreenChange(Landroid/content/Context;)V

    return-void
.end method

.method protected isAsyncTaskRunning()Z
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mTask:Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 72
    new-instance p1, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$Task-IA;)V

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mTask:Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZI)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    iput p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 91
    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mRequestGatekeeperPassword:Z

    .line 93
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "is_knox_two_step"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    return-void
.end method

.method protected setDigitsConfirmPINWithoutTapping(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mNumDigitsConfirmPINWithoutTapping:I

    return-void
.end method

.method public setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    .line 152
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method protected start()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mTask:Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method protected unifyProfileCredentialIfRequested()V
    .locals 3

    .line 156
    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    :cond_0
    return-void
.end method
