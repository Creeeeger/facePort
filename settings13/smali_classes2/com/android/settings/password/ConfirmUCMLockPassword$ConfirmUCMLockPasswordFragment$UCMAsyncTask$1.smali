.class Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

.field final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Landroid/os/AsyncTask;)V

    if-eqz p1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-boolean v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->val$intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;->this$1:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
