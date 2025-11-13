.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1572
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    .line 1650
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1654
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1595
    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 1602
    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v1

    goto :goto_0

    .line 1606
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v1

    :goto_0
    const-string v3, "ChooseLockPattern"

    if-eqz v1, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->unifyProfileCredentialIfRequested()V

    .line 1614
    iget v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 1615
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1616
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "Reset password of secure folder has requested."

    .line 1617
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 1619
    iget-object v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1624
    iget-boolean v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mRequestGatekeeperPassword:Z

    if-eqz v5, :cond_5

    .line 1628
    iget-object v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4, v5, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->containsGatekeeperPasswordHandle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1632
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "critical: bad response or missing GK PW handle for known good pattern: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1638
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v2

    const-string v0, "gk_pw_handle"

    .line 1637
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1640
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_5

    .line 1641
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string/jumbo v0, "password"

    invoke-virtual {v4, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1645
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public bridge synthetic setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 1572
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 1581
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZI)V

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1584
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1585
    iput-object p4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 1586
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 1588
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 1590
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->start()V

    return-void
.end method
