.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final callbacks:Ljava/util/List;

.field public holdingRunnableCanceler:Ljava/lang/Runnable;

.field public final internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

.field public listening:Z

.field public final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

.field public final optionsCallback:Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final privacyItemMonitorCallback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

.field public final privacyItemMonitors:Ljava/util/Set;

.field public privacyList:Ljava/util/List;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/privacy/PrivacyConfig;Ljava/util/Set;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/privacy/PrivacyConfig;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/privacy/PrivacyItemMonitor;",
            ">;",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->optionsCallback:Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitorCallback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    const-string p2, "PrivacyItemController"

    invoke-static {p7, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/privacy/PrivacyConfig;->addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V

    return-void
.end method

.method public static synthetic getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez p1, :cond_1

    iget-object p0, v1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;

    iget-object v0, v1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    const-wide/16 v2, 0x0

    invoke-interface {p0, p1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    iput-object p0, v1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "Listening: "

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    const-string v1, "PrivacyItemController state:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Privacy Items:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Callbacks:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "PrivacyItemMonitors:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    check-cast v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_3
    :try_start_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void

    :catchall_3
    move-exception p0

    goto :goto_6

    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method

.method public final declared-synchronized getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor$updateListeningState$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final update$4$1()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
