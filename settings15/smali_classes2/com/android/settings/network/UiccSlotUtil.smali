.class public abstract Lcom/android/settings/network/UiccSlotUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/SubscriptionInfo;",
            "Z)I"
        }
    .end annotation

    const-string v0, "UiccSlotUtil"

    if-nez p3, :cond_0

    const-string p0, "In the ss mode."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "The removedSubInfo is not null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0

    :cond_1
    const-string p2, "The removedSubInfo is null"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    return p0
.end method

.method public static getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_3

    aget-object v1, p0, p1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p0

    if-ge p1, v1, :cond_4

    aget-object v1, p0, p1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    if-nez p0, :cond_3

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_1
    const-string p0, "The given slotId is not a removable slot: "

    const-string v1, "UiccSlotUtil"

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "UiccSlotInfo is null"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isMultipleEnabledProfilesSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string v0, "UICC cards info list is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static isRemovableSimEnabled(Ljava/util/List;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    const-string v0, "isRemovableSimEnabled: "

    const-string v1, "UiccSlotUtil"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "euicc_switch_slot_timeout_millis"

    const-wide/16 v2, 0x61a8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set waitingTime as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccSlotUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->isMultipleEnabledProfilesSupported(Landroid/telephony/TelephonyManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/settings/network/UiccSlotUtil$SimCardStateChangeReceiver;

    invoke-direct {v5, v4}, Lcom/android/settings/network/UiccSlotUtil$SimCardStateChangeReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_2
    new-instance v5, Lcom/android/settings/network/CarrierConfigChangedReceiver;

    invoke-direct {v5, v4}, Lcom/android/settings/network/CarrierConfigChangedReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setSimSlotMapping(Ljava/util/Collection;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4

    :goto_3
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "Failed switching to physical slot."

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    throw p0
.end method

.method public static prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;ZIII)",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, "UiccSlotUtil"

    if-ne p4, v0, :cond_0

    const-string p1, "There is no removedLogicalSlotId. Do nothing."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Create new SimSlotMapping. Remove the UiccSlotMapping of logicalSlot%d, and insert PhysicalSlotId%d-Port%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v3, Landroid/telephony/UiccSlotMapping;

    invoke-direct {v3, p3, p2, v2}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v4

    if-ne v4, p4, :cond_3

    if-nez p1, :cond_2

    new-instance v4, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v3

    invoke-direct {v4, p3, p2, v3}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    new-instance v4, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v3

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v5, v3, v2}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    move-object v3, v4

    move v2, v6

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The new SimSlotMapping: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized switchToEuiccSlot(Landroid/content/Context;IILandroid/telephony/SubscriptionInfo;)V
    .locals 6

    const-string v0, "The SimSlotMapping: "

    const-class v1, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "UiccSlotUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda7;

    invoke-direct {v4, p1, p2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string p1, "The slot is active, then the sim can enable directly."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    invoke-static {v3, v0, p3, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {v3, v0, p1, p2, p3}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 6

    const-string v0, "The SimSlotMapping: "

    const-string v1, "The InactiveRemovableSlot: "

    const-class v2, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/android/settings/network/UiccSlotUtil;->getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I

    move-result p0

    const-string v4, "UiccSlotUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v1

    const-string v4, "UiccSlotUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    invoke-static {v1, v0, p2, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p2

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, p0, v4, p2}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v3, p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    throw p0
.end method
