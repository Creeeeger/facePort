.class public final Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final client:Lcom/google/common/util/concurrent/SettableFuture;

.field public final mCallForwardingNumber:[Ljava/lang/String;

.field public final mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

.field public final sm:Landroid/telephony/SubscriptionManager;

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->result:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->slotUTData:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    new-instance v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->client:Lcom/google/common/util/concurrent/SettableFuture;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->sm:Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mCallForwardingNumber:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    const-string v4, "SmartForwarding"

    iget-object v5, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->client:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v6, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    if-eqz v3, :cond_d

    iget-object v7, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->sm:Landroid/telephony/SubscriptionManager;

    if-nez v7, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v7, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mCallForwardingNumber:[Ljava/lang/String;

    array-length v8, v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-eq v8, v3, :cond_1

    const-string v0, "The length of PhoneNum array should same as phone count."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1
    iget-object v3, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    new-array v8, v3, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_3

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    iput-object v0, v6, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->reason:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    goto/16 :goto_9

    :cond_2
    new-instance v12, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    iget-object v13, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-direct {v12, v13, v2, v11}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;I)V

    new-instance v13, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v13, v12, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v13, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iget-object v14, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-direct {v13, v14, v2, v11}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;I)V

    new-instance v14, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v13, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v14, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;

    iget-object v15, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    invoke-direct {v14, v15, v2, v11}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;I)V

    new-instance v15, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v14, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v12, v14, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;->queryResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    new-instance v15, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;

    iget-object v9, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    aget-object v0, v7, v10

    invoke-direct {v15, v9, v2, v11}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;I)V

    new-instance v9, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v15, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v0, v15, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->phoneNum:Ljava/lang/String;

    iput-object v13, v15, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->queryResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;

    aget-object v9, v7, v10

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v11, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->subId:I

    iput-object v12, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallWaiting:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    iput-object v13, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallForwarding:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iput-object v14, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mUpdateCallWaiting:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;

    iput-object v15, v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mUpdateCallForwarding:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;

    aput-object v0, v8, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v2, v8, v0

    iget-object v2, v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallWaiting:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v2, v8, v0

    iget-object v2, v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallForwarding:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_6

    aget-object v2, v8, v0

    iget-object v2, v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mUpdateCallWaiting:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    aget-object v2, v8, v0

    iget-object v2, v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mUpdateCallForwarding:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const-string v2, "Failed on : "

    const/4 v3, 0x1

    move v0, v3

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "processing : "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v9}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;->process()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    iput-boolean v3, v6, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->result:Z

    iput-object v8, v6, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->slotUTData:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;

    const-string v0, "Smart forwarding successful"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restoreStep: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;

    invoke-virtual {v1}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;->onRestore()V

    goto :goto_7

    :cond_c
    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    :goto_8
    const-string v0, "TelephonyManager or SubscriptionManager is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :goto_a
    const-wide/16 v0, 0x14

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    return-object v0
.end method
