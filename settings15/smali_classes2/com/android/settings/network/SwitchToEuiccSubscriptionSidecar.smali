.class public final Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActiveSubInfos:Ljava/util/List;

.field public mCallbackIntent:Landroid/app/PendingIntent;

.field public mIsDuringSimSlotMapping:Z

.field public mPort:I

.field public mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

.field public mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
    .locals 2

    const-class v0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const-string v1, "SwitchToEuiccSidecar"

    invoke-static {p0, v1, v0}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-object p0
.end method


# virtual methods
.method public final getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.network.SWITCH_TO_SUBSCRIPTION"

    return-object p0
.end method

.method public final getTargetSlot()I
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    const-string v0, "UiccSlotUtil"

    const/4 v3, -0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v5

    if-le v5, v3, :cond_1

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "getEsimSlotId: This subInfo is a removable esim."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v2, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-interface {p0, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    const-string v1, "firstEsimSlot: "

    invoke-static {p0, v1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p0
.end method

.method public final onActionReceived()V
    .locals 5

    iget v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->getTargetSlot()I

    move-result v1

    iget v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput v1, v3, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p0, v3, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput v2, v3, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-virtual {v0, v3}, Lcom/android/settings/AsyncTaskSidecar;->run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :goto_0
    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    const-string v1, "SwitchToEuiccSidecar"

    if-ne p1, v0, :cond_2

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Failed to set SimSlotMapping"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Successfully SimSlotMapping. Start to enable/disable esim"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    iget v1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const-string p0, "Received state change from a sidecar not expected."

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final run(IILandroid/telephony/SubscriptionInfo;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->createCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    iput p1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->getTargetSlot()I

    move-result p1

    const-string v2, "SwitchToEuiccSidecar"

    if-gez p1, :cond_0

    const-string p2, "There is no esim, the TargetSlot is "

    invoke-static {p1, p2, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mActiveSubInfos:Ljava/util/List;

    if-gez p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "The slotId"

    const-string v3, " is no MEP, port is 0"

    invoke-static {p1, p2, v3, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move p2, v1

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "In SS mode, the UiccSlotMapping: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p2

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mActiveSubInfos:Ljava/util/List;

    if-nez p2, :cond_5

    const-string p2, "mActiveSubInfos is null."

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v3

    if-ne v3, v1, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iput p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iput-object p3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    iget p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v1, v3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Set esim into the SubId%d Physical Slot%d:Port%d"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget p3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, p3, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    goto/16 :goto_6

    :cond_8
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    if-nez p2, :cond_e

    :cond_9
    iget p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object v3, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_3

    :cond_a
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_c

    if-ltz p1, :cond_c

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge p1, v4, :cond_c

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccSlotInfo;

    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v4}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v5

    if-ne v5, p2, :cond_b

    invoke-virtual {v4}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p2

    goto :goto_4

    :cond_c
    move p2, v1

    :goto_4
    if-ne p2, v1, :cond_d

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mActiveSubInfos:Ljava/util/List;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    const-string p1, "Disable the enabled esim before the settings enables the target esim"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, p2, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->command:I

    iput p1, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->slotId:I

    iput-object p3, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->removedSubInfo:Landroid/telephony/SubscriptionInfo;

    iput p0, v1, Lcom/android/settings/network/SwitchSlotSidecar$Param;->port:I

    invoke-virtual {p2, v1}, Lcom/android/settings/AsyncTaskSidecar;->run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V

    :goto_6
    return-void
.end method
