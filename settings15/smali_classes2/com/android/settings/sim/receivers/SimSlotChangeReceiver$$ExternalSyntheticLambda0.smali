.class public final synthetic Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    sget v3, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->$r8$clinit:I

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SlotChangeReceiver"

    const-string v4, "Can\'t get satellite session status"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const-string p0, "SlotChangeReceiver"

    const-string v0, "Device is in a satellite session. Unable to handle SIM slot changes"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_0
    const-string v2, "SlotChangeReceiver"

    const-string v3, "Not in a satellite session. Handle slot changes"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v2, :cond_2

    const-class v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    monitor-enter v2

    :try_start_1
    sget-object v3, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_3
    sget-object v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "telephony_subscription_service"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    iput-object v3, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    iput-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq p0, v3, :cond_1a

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_4

    const-string p0, "SimSlotChangeHandler"

    const-string v4, "slotInfos is null. Unable to get slot infos."

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v3

    goto :goto_5

    :cond_4
    array-length v4, p0

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    add-int/2addr v5, v1

    goto :goto_4

    :goto_5
    if-nez v6, :cond_6

    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Unable to find the removable slot. Do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_6
    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-string v4, "euicc_prefs"

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "removable_slot_state"

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v4

    const-string v5, "SimSlotChangeHandler"

    const-string v7, "lastRemovableSlotState: "

    const-string v8, ",currentRemovableSlotState: "

    invoke-static {v7, v8, p0, v4, v5}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v5, 0x2

    if-ne p0, v1, :cond_7

    if-ne v4, v5, :cond_7

    move v7, v1

    goto :goto_6

    :cond_7
    move v7, v0

    :goto_6
    if-ne p0, v5, :cond_8

    if-ne v4, v1, :cond_8

    move p0, v1

    goto :goto_7

    :cond_8
    move p0, v0

    :goto_7
    iget-object v8, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-string v9, "euicc_prefs"

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "removable_slot_state"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v8, "setRemovableSimSlotState: "

    const-string v9, "SimSlotChangeHandler"

    invoke-static {v4, v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    const/high16 v8, 0x10000000

    if-le v4, v1, :cond_e

    if-nez v7, :cond_9

    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Removable Sim is not inserted in DSDS mode. Do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_9
    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "SimSlotChangeHandler"

    if-eqz v1, :cond_a

    const-string p0, "Unable to find the removable subscriptionInfo. Do nothing."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ForNewUi and getAvailableRemovableSubscription:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    iget-object v0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SimSlotChangeHandler"

    if-nez v0, :cond_b

    const-string p0, "Still in SUW. Do nothing"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p0, "Unable to enable subscription due to invalid subscription ID."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    const-string v0, "Start ToggleSubscriptionDialogActivity with "

    const-string v3, " under DSDS+Mep."

    invoke-static {p0, v0, v3, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_d

    const-string p0, "SubscriptionUtil"

    const-string v0, "Unable to toggle subscription due to invalid subscription ID."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    sget-object v1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sub_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_8
    const-string p0, "SimSlotChangeHandler"

    const-string v0, "the device is already in DSDS mode and have the DDS. Do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_e
    if-eqz v7, :cond_13

    const-string p0, "SimSlotChangeHandler"

    const-string v4, "Handle SIM inserted."

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "SimSlotChangeHandler"

    const-string v3, "Still in SUW. Handle SIM insertion after SUW is finished"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-string v2, "euicc_prefs"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "suw_psim_action"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_b

    :cond_f
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

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

    if-eqz p0, :cond_10

    const-string p0, "SimSlotChangeHandler"

    const-string v0, "The removable slot is already active. Do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_10
    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/EidStatus$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_12

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Enabled profile exists. DSDS condition satisfied."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/sim/DsdsDialogActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_b

    :cond_11
    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Enabled profile exists. DSDS condition not satisfied."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/sim/ChooseSimActivity;->$r8$clinit:I

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "has_psim"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_b

    :cond_12
    const-string p0, "SimSlotChangeHandler"

    const-string v0, "No enabled eSIM profile. Ready to switch to removable slot and show notification."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0
    :try_end_2
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, -0x1

    :try_start_3
    invoke-static {v1, p0, v3}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_4 .. :try_end_4} :catch_1

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/android/settings/sim/SimNotificationService;->scheduleSimNotification(Landroid/content/Context;I)V

    goto/16 :goto_b

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0

    throw p0
    :try_end_5
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Failed to switch to removable slot."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_13
    if-eqz p0, :cond_19

    const-string p0, "Handle SIM removed."

    const-string v3, "SimSlotChangeHandler"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "Still in SUW. Handle SIM removal after SUW is finished"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-string v1, "euicc_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "suw_psim_action"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_b

    :cond_14
    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_15

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_9

    :cond_15
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v4, Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v4}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_a

    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_17

    const-string v1, "Only 1 eSIM profile found. Ask user\'s consent to switch."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "sub_to_enable"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b

    :cond_17
    const-string p0, "Multiple eSIM profiles found. Ask user which subscription to use."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/sim/ChooseSimActivity;->$r8$clinit:I

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "has_psim"

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, v2, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_b

    :cond_18
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eSIM slot is active or no subscriptions exist. Do nothing. The removableSlotInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupedEmbeddedSubscriptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_19
    const-string p0, "SimSlotChangeHandler"

    const-string v0, "Do nothing on slot status changes."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from main thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
