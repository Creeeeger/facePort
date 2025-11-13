.class public final synthetic Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$$ExternalSyntheticLambda1;->f$1:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->$r8$clinit:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz p0, :cond_1

    const-string p0, "Forgot lockscreen credential button pressed."

    invoke-virtual {p1, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onRemoteLockscreenValidationFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
