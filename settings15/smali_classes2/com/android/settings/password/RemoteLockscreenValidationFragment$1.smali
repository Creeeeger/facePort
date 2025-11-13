.class public final Lcom/android/settings/password/RemoteLockscreenValidationFragment$1;
.super Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$1;->this$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$1;->this$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    iput-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSuccess(Landroid/app/RemoteLockscreenValidationResult;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$1;->this$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    iput-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    iget-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
