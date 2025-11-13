.class public Lcom/android/settings/password/SaveAndFinishWorker;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mFinished:Z

.field public mListener:Lcom/android/settings/password/SaveAndFinishWorker$Listener;

.field public mRequestGatekeeperPassword:Z

.field public mRequestWriteRepairModePassword:Z

.field public mResultData:Landroid/content/Intent;

.field public mSetPrevious:Z

.field public mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mWasSecureBefore:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUnificationProfileId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mSetPrevious:Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public prepare(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput p4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUserId:I

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mWasSecureBefore:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mFinished:Z

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mResultData:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "previous_credential"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mSetPrevious:Z

    return-void
.end method

.method public saveAndVerifyInBackground()Landroid/util/Pair;
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

    const-string v0, "SaveAndFinishWorker"

    iget v1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUserId:I

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->getUCMUri(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/knox/UCMUtils;->changeUCMLockPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mSetPrevious:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v5, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    const/16 v6, -0x26ab

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v5, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    iget v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUnificationProfileId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    :cond_3
    iget v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "Reset password of secure folder has requested."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    iget-object v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestGatekeeperPassword:Z

    iget-boolean v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestWriteRepairModePassword:Z

    if-eqz v4, :cond_6

    or-int/lit8 v3, v3, 0x2

    :cond_6
    if-nez v3, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mChosenCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestGatekeeperPassword:Z

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->containsGatekeeperPasswordHandle()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, "gk_pw_handle"

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestGatekeeperPassword:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "critical: missing GK PW handle for known good credential: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "critical: bad response for known good credential: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestWriteRepairModePassword:Z

    if-eqz p0, :cond_b

    const-string p0, "wrote_repair_mode_credential"

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :goto_1
    const-string v1, "Failed to set lockscreen credential"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final setListener(Lcom/android/settings/password/SaveAndFinishWorker$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mListener:Lcom/android/settings/password/SaveAndFinishWorker$Listener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mListener:Lcom/android/settings/password/SaveAndFinishWorker$Listener;

    iget-boolean v0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mFinished:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mWasSecureBefore:Z

    iget-object p0, p0, Lcom/android/settings/password/SaveAndFinishWorker;->mResultData:Landroid/content/Intent;

    invoke-interface {p1, p0, v0}, Lcom/android/settings/password/SaveAndFinishWorker$Listener;->onChosenLockSaveFinished(Landroid/content/Intent;Z)V

    :cond_1
    return-void
.end method

.method public final start(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/settings/password/SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    new-instance p1, Lcom/android/settings/password/SaveAndFinishWorker$Task;

    invoke-direct {p1, p0}, Lcom/android/settings/password/SaveAndFinishWorker$Task;-><init>(Lcom/android/settings/password/SaveAndFinishWorker;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
