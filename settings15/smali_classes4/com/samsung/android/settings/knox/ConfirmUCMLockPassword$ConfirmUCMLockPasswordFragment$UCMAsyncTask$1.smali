.class public final Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

.field public final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p2, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$InternalActivity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p2, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-boolean p2, p2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p2, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    iget v0, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-virtual {p2, v0, p0, p1}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onPasswordChecked$1(ILandroid/content/Intent;Z)V

    return-void
.end method
