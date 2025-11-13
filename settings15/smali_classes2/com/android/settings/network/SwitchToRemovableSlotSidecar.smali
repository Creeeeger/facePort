.class public final Lcom/android/settings/network/SwitchToRemovableSlotSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mPhysicalSlotId:I

.field public mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

.field public mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_subscription_and_switch_slot_sidecar"

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onResume()V

    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "SwitchRemovableSidecar"

    if-ne p1, v0, :cond_2

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to disable the active eSIM profile."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Successfully disabled eSIM profile. Start to switch to Removable slot."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput v0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput v2, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-virtual {p1, v1}, Lcom/android/settings/AsyncTaskSidecar;->run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    if-ne p1, v0, :cond_5

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to switch to removable slot."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Successfully switched to removable slot."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_5
    const-string p0, "Received state change from a sidecar not expected."

    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final run(Landroid/telephony/SubscriptionInfo;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    iput-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "SwitchRemovableSidecar"

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "There is an active eSIM profile. Disable the profile first."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mSwitchToSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_1
    const-string p1, "Start to switch to removable slot."

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget v0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mPhysicalSlotId:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput v0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput v2, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-virtual {p1, v1}, Lcom/android/settings/AsyncTaskSidecar;->run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V

    :goto_0
    return-void
.end method
