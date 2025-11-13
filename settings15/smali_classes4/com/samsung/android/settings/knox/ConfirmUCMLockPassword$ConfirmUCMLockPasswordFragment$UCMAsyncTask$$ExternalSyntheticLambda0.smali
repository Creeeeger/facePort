.class public final synthetic Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iput p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iput p5, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 8

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iget p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;->f$4:I

    iget-object v3, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v5, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-boolean v5, v5, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_0

    const-string v0, "gk_pw_handle"

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v6

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "hw_auth_token"

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_0
    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget p1, p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p1

    const-string/jumbo v0, "password"

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mUCMCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "is_knox_password_secured"

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    sput-object v4, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mUCMCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget v0, p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-virtual {p1, v0, v1, v5}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onPasswordChecked$1(ILandroid/content/Intent;Z)V

    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_2
    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const v0, 0x7f141fad

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState$1()V

    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    :goto_3
    iget-object p1, p2, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1, p0, v1, v3}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onPasswordChecked$1(ILandroid/content/Intent;Z)V

    return-void
.end method
