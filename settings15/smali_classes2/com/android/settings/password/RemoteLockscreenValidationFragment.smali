.class public Lcom/android/settings/password/RemoteLockscreenValidationFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mErrorMessage:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mIsInProgress:Z

.field public mListener:Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;

.field public mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mResult:Landroid/app/RemoteLockscreenValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearLockscreenCredential()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->clearLockscreenCredential()V

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "RemoteLockscreenValidationFragment"

    const-string v1, "Unprocessed remote lockscreen validation result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final setListener(Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mListener:Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mListener:Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;

    iput-object p2, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
