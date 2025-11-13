.class public final Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onShowDefault()V

    :cond_0
    return-void
.end method
