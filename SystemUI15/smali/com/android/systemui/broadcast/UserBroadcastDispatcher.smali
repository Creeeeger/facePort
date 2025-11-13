.class public final Lcom/android/systemui/broadcast/UserBroadcastDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actionsToActionsReceivers:Landroid/util/ArrayMap;

.field public final context:Landroid/content/Context;

.field public final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field public final receiverToActions:Landroid/util/ArrayMap;

.field public final removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

.field public final userId:I

.field public final workerExecutor:Ljava/util/concurrent/Executor;

.field public final workerHandler:Landroid/os/Handler;

.field public final workerLooper:Landroid/os/Looper;

.field public final wrongThreadErrorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lcom/android/systemui/broadcast/PendingRemovalStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    iput-object p3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iput-object p6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    const-string p1, "This method should only be called from the worker thread (which is expected to be the BroadcastRunning thread)"

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->wrongThreadErrorMsg:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerHandler:Landroid/os/Handler;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic getActionsToActionsReceivers$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public createActionReceiver$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/broadcast/ActionReceiver;
    .locals 9

    new-instance v8, Lcom/android/systemui/broadcast/ActionReceiver;

    new-instance v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;

    invoke-direct {v3, p1, p0, p2, p3}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;-><init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;I)V

    new-instance v4, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;

    invoke-direct {v4, p1, p0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;-><init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)V

    iget-object v5, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$3;

    iget-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    invoke-direct {v7, p2}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$3;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    iget-object v6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/broadcast/ActionReceiver;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lkotlin/jvm/functions/Function2;)V

    return-object v8
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    instance-of v0, p1, Landroid/util/IndentingPrintWriter;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    iget-object v3, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->action:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->Companion:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->flags:I

    invoke-static {v4}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;->flagToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "):"

    iget-object v2, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->permission:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, ":"

    invoke-static {v6, v2, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v2, "("

    const-string v6, ": "

    invoke-static {v2, v3, v6, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/broadcast/ActionReceiver;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3
    return-void
.end method

.method public final isReceiverReferenceHeld$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/BroadcastReceiver;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    iget-object v1, v1, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v2, v2, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->wrongThreadErrorMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/ActionReceiver;

    iget-object v4, v4, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->action:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    new-instance v5, Lcom/android/systemui/broadcast/ActionReceiver$removeReceiver$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/broadcast/ActionReceiver$removeReceiver$1;-><init>(Landroid/content/BroadcastReceiver;)V

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    iget-object v3, v3, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V

    return-void
.end method
