.class public Lcom/android/settings/sim/DsdsDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# instance fields
.field public mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfirm(IIZ)V
    .locals 6

    const/4 p2, 0x1

    const-string v0, "DsdsDialogActivity"

    if-nez p3, :cond_0

    const-string p1, "User cancel the dialog to enable DSDS."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "has_psim"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_0
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    if-eq p1, p2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string p0, "Unrecognized confirmation dialog tag: "

    invoke-static {p1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "User confirmed reboot to enable DSDS."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2}, Lcom/android/settings/sim/SimActivationNotifier;->setShowSimSettingsNotification(Landroid/content/Context;Z)V

    invoke-virtual {p3, v1}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Device does not support reboot free DSDS."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f142bef

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f142be3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f142beb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f1408bf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "Enabling DSDS without rebooting."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f142be9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/sim/DsdsDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->run$1()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/network/EnableMultiSimSidecar;->$r8$clinit:I

    const-class v1, Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v2, "EnableMultiSimSidecar"

    invoke-static {v0, v2, v1}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/EnableMultiSimSidecar;

    iput-object v0, p0, Lcom/android/settings/sim/DsdsDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-nez p1, :cond_0

    const p1, 0x7f142be4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f142be3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f142bfc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f142bea

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DsdsDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/DsdsDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sim/DsdsDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v0, :cond_2

    iget p1, p1, Lcom/android/settings/SidecarFragment;->mState:I

    const/4 v1, 0x2

    const-string v2, "DsdsDialogActivity"

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to enable DSDS"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const p1, 0x7f140d82

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140d81

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Enabled DSDS successfully"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
