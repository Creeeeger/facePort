.class Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KnoxAuthCredentialPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;


# direct methods
.method public static synthetic $r8$lambda$BY4Oaiuywam06v6xjg6_SDThuiA(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->onPatternVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)V

    return-void
.end method

.method private onPatternVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mCredentialType:I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mErrorView:Landroid/widget/TextView;

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->updateErrorMessage(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->showError(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->showError(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v3

    const/4 v4, 0x1

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;)V

    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
.end method

.method public onPatternStart()V
    .locals 0

    return-void
.end method
