.class public Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# static fields
.field public static final ARG_enable:Ljava/lang/String; = "enable"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public isRtlMode:Z

.field public mActiveSubInfos:Ljava/util/List;

.field public mEnable:Z

.field public mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

.field public mIsEsimOperation:Z

.field public mSubInfo:Landroid/telephony/SubscriptionInfo;

.field public mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field public mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

.field public mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sub_id"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "enable"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final handleTogglePsimAction()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "The device does not support toggling pSIM. It is enough to just enable the removable slot."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final isMultipleEnabledProfilesSupported$1()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "UICC cards info list is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final onConfirm(IIZ)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p3, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "ToggleSubscriptionDialogActivity"

    if-eq p1, v2, :cond_a

    const/4 v7, 0x2

    if-eq p1, v7, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    const-string p0, "Unrecognized confirmation dialog tag: "

    invoke-static {p1, p0, v6}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-eq p2, v5, :cond_7

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const-string p1, "User cancel the dialog to reboot to enable DSDS."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    :cond_3
    const-string p1, "User confirmed reboot to enable DSDS."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/android/settings/sim/SimActivationNotifier;->setShowSimSettingsNotification(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    goto/16 :goto_2

    :cond_4
    if-nez p3, :cond_5

    const-string p1, "User cancel the dialog to enable DSDS."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Device does not support reboot free DSDS."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f142bef

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f142be3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f142beb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f142be2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "Enabling DSDS without rebooting."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f142be9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {p0}, Lcom/android/settings/network/EnableMultiSimSidecar;->run$1()V

    goto :goto_2

    :cond_7
    :goto_0
    const-string p1, "User confirmed to enable the subscription."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f142bf6

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    move v2, v4

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0, v5, v3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v3}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_2

    :cond_a
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_c

    const-string p1, "Disabling the eSIM profile."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f141d86

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v4

    :cond_b
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    return-void

    :cond_c
    const-string p1, "Disabling the pSIM profile."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    const-string v4, "ToggleSubscriptionDialogActivity"

    if-nez v3, :cond_0

    const-string p1, "It is not the admin user. Unable to toggle subscription."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_0
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "The subscription id is not usable."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v3, v2}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget v5, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->$r8$clinit:I

    const-class v5, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const-string v6, "SwitchRemovableSidecar"

    invoke-static {v2, v6, v5}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget v5, Lcom/android/settings/network/EnableMultiSimSidecar;->$r8$clinit:I

    const-class v5, Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v6, "EnableMultiSimSidecar"

    invoke-static {v2, v6, v5}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/EnableMultiSimSidecar;

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v2, "enable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMultipleEnabledProfilesSupported():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported$1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz p1, :cond_f

    const-string p1, "Handle subscription enabling."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "DSDS is already enabled. Condition not satisfied."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Hardware does not support DSDS."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    move p1, v0

    goto :goto_2

    :cond_6
    move p1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported$1()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    const-string p1, "Device supports MEP and eSIM operation and eSIM profile is enabled. DSDS condition satisfied."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_8

    move p1, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lcom/android/settings/network/UiccSlotUtil;->isRemovableSimEnabled(Ljava/util/List;)Z

    move-result p1

    :goto_4
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    const-string p1, "eSIM operation and removable SIM is enabled. DSDS condition satisfied."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    const-string p1, "Removable SIM operation and eSIM profile is enabled. DSDS condition satisfied."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
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

    const/4 v1, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_b
    const-string p1, "DSDS condition not satisfied."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_7

    :cond_d
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_7
    invoke-static {p1}, Lcom/android/settings/network/UiccSlotUtil;->isRemovableSimEnabled(Ljava/util/List;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_e

    const-string p1, "Toggle on pSIM, no dialog displayed."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    goto :goto_c

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    const v0, 0x7f141d87

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    move-object v2, p1

    goto :goto_b

    :cond_11
    :goto_a
    const p1, 0x7f141d88

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :goto_b
    const p1, 0x7f142bfb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f142be2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_c
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const/4 v1, 0x3

    const-string v2, "ToggleSubscriptionDialogActivity"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v0, :cond_4

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    const-string v0, " the eSIM profile."

    const-string v5, "disable"

    const-string v6, "enable"

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz p1, :cond_1

    move-object v5, v6

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const p1, 0x7f141d85

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f141d84

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz p1, :cond_3

    move-object v5, v6

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Successfully "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-ne p1, v0, :cond_7

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v4, :cond_6

    if-eq p1, v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string p1, "Failed switching to removable slot."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const p1, 0x7f142be6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f142be5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "Successfully switched to removable slot."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v0, :cond_b

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to switch to DSDS without rebooting."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const p1, 0x7f140d82

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140d81

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Successfully switched to DSDS without reboot."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DSDS enabled, start to enable profile: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_a
    const-string p1, "DSDS enabled, start to enable pSIM profile."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->finish()V

    :cond_b
    :goto_0
    return-void
.end method

.method public final showEnableSimConfirmDialog()V
    .locals 14

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    const-string v1, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mActiveSubInfos:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported$1()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    :cond_2
    const v5, 0x7f142be2

    const-string v6, "\u200f"

    const/4 v7, 0x2

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isMultipleEnabledProfilesSupported$1()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "showMepSwitchSimConfirmDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f142bf5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f142bf4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {v2, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/network/telephony/ConfirmDialogFragment;

    invoke-direct {v3}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "title"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "pos_button_string"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "neg_button_string"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1, v4}, Lcom/android/settings/network/telephony/BaseDialogFragment;->setListener(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "ConfirmDialogFragment"

    invoke-virtual {v3, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v4}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7f142bfa

    invoke-virtual {p0, v8, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v10, v4

    goto :goto_4

    :cond_7
    const v4, 0x7f142bf0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :goto_4
    iget-object v4, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v4}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_8

    const v0, 0x7f142bf8

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_9

    const v0, 0x7f142bf7

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    const v0, 0x7f142bf9

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isRtlMode:Z

    if-eqz v0, :cond_a

    invoke-virtual {v8, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f142bf2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v12, v0

    goto :goto_7

    :cond_b
    const v0, 0x7f142c6b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x2

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_8
    const-string v0, "No active subscriptions available."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void
.end method

.method public final showNonSwitchSimConfirmDialog()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x7f142be7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const v0, 0x7f142be8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    const v0, 0x7f1409ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f142be2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
