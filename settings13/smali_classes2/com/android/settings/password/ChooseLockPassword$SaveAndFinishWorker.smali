.class public Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2916
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 2916
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 2937
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2938
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v1

    .line 2939
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Password is requested. Length of  requested password is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Length of current password is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", for UserId : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2950
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    goto :goto_1

    .line 2953
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    .line 2959
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->unifyProfileCredentialIfRequested()V

    .line 2961
    iget v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 2962
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2963
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "Reset password of secure folder has requested."

    .line 2964
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget-object v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 2966
    iget-object v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 2971
    iget v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mNumDigitsConfirmPINWithoutTapping:I

    if-lez v3, :cond_5

    .line 2972
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mNumDigitsConfirmPINWithoutTapping:I

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    const-string/jumbo v6, "n_digits_pin_enabled"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 2977
    iget-boolean v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mRequestGatekeeperPassword:Z

    if-eqz v4, :cond_8

    .line 2981
    iget-object v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2984
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->containsGatekeeperPasswordHandle()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2985
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "critical: bad response or missing GK PW handle for known good password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2985
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2991
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v1

    const-string v4, "gk_pw_handle"

    .line 2990
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2993
    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_8

    .line 2994
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string/jumbo v1, "password"

    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2998
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 2916
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 2916
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public bridge synthetic setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 2916
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 2924
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZI)V

    .line 2926
    iput-object p4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 2928
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 2929
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 2931
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->start()V

    return-void
.end method
