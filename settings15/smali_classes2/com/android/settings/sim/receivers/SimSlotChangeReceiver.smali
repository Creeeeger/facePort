.class public Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static runOnBackgroundThread(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "SlotChangeReceiver"

    if-nez v0, :cond_0

    const-string p0, "The flag is off. Ignore slot changes."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_0
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->getOtaStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string p0, "Ignore slot changes because eSIM OTA is in progress."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const-string p0, "slotInfos is null. Unable to get slot infos."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_c

    aget-object v6, v3, v5

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v9, v5}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/telephony/UiccCardInfo;

    :goto_1
    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_b
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The SIM state is in an error. Drop the event. SIM info: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    const-string p0, "All UICC card strings are empty. Drop this event."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string p0, "Ignore slot changes because SIM states are not valid."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    const-string v0, "Checking satellite session status"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/SatelliteRepository;

    invoke-direct {v1, p0}, Lcom/android/settings/network/SatelliteRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/network/SatelliteRepository;->requestIsSessionStarted(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/content/Context;)V

    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_7

    :cond_e
    :goto_6
    const-string p0, "Ignore slot changes because EuiccManager is disabled."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "SlotChangeReceiver"

    if-nez p2, :cond_0

    const-string p1, "Ignore slot changes due to unexpected action: "

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "start scheduleSimSlotChange"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/settings/sim/receivers/SimSlotChangeService;->$r8$clinit:I

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ComponentName;

    const-class p2, Lcom/android/settings/sim/receivers/SimSlotChangeService;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class p2, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/job/JobScheduler;

    const p2, 0x7f0b00e9

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "SimSlotChangeService"

    if-eqz v0, :cond_1

    const-string p0, "There is already Pending Job"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "There is not Pending Job"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p2, p0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :goto_0
    return-void
.end method
