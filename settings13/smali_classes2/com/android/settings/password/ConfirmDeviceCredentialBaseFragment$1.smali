.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmDeviceCredentialBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnGatekeeperPassword:Z

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
