.class public final Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v4, :cond_1

    iget-object p0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    if-eqz v0, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/BroadcastReceiver;

    iget-object v1, v0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    iget-object p0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    iget-object v2, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/broadcast/ReceiverData;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_1
    if-lt v0, v3, :cond_f

    iget-object v3, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->createUBRForUser(I)Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v1, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    iget-object v1, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->wrongThreadErrorMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    check-cast v4, Ljava/util/Collection;

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_2

    :cond_8
    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    :goto_2
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    invoke-direct {v5, v1, p1, v6}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-virtual {v3, v1, v6, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->createActionReceiver$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/broadcast/ActionReceiver;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    check-cast v7, Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    iget-object v4, v7, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v4}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v4

    goto :goto_4

    :cond_b
    sget-object v4, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    :goto_4
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    move-result v1

    iget-object v4, v7, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v7, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ne v4, v2, :cond_c

    iget-object v1, v7, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Lcom/android/systemui/broadcast/ActionReceiver;->createFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v7, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7}, Lcom/android/systemui/broadcast/ActionReceiver;->createFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, v7, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to attach to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " without correct action,receiver: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v0, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget v1, v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverRegistered(ILandroid/content/BroadcastReceiver;I)V

    :goto_5
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to register receiver for invalid user {"

    const-string/jumbo v1, "}"

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
