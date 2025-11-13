.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1371
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmWaitingForTwoFactorConfirmation(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ConfirmLockPasswordFragment"

    const-string v0, "Throttle timer on finish called but waiting two factor confirmation currently."

    .line 1373
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$mupdatePasswordEntry(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 1379
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$mgetDefaultDetails(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->updateState()V

    .line 1385
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmGlifLayout(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/SecGlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v3, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    .line 1387
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 1388
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    .line 1387
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordShowButton(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordShowButton(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->updateAttemptLockoutDesc(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 1360
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method
