.class public final synthetic Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/RemoteLockscreenValidationFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mListener:Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mIsInProgress:Z

    const-string v2, "Remote lockscreen validation failed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onRemoteLockscreenValidationFailure(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mErrorMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mListener:Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mIsInProgress:Z

    invoke-interface {v0, v1}, Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;->onRemoteLockscreenValidationResult(Landroid/app/RemoteLockscreenValidationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mResult:Landroid/app/RemoteLockscreenValidationResult;

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
