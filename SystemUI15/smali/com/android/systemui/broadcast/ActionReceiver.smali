.class public final Lcom/android/systemui/broadcast/ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final index:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final action:Ljava/lang/String;

.field public final activeCategories:Landroid/util/ArraySet;

.field public final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field public final receiverDatas:Landroid/util/ArraySet;

.field public final registerAction:Lkotlin/jvm/functions/Function2;

.field public registered:Z

.field public final testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

.field public final unregisterAction:Lkotlin/jvm/functions/Function1;

.field public final userId:I

.field public final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/broadcast/ActionReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/broadcast/ActionReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/systemui/broadcast/ActionReceiver;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/broadcast/ActionReceiver;->workerExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/broadcast/ActionReceiver;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iput-object p7, p0, Lcom/android/systemui/broadcast/ActionReceiver;->testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final createFilter()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.PACKAGE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "package"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Receivers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v1, v1, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ", "

    const/4 v3, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Categories: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/broadcast/ActionReceiver;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    iget v2, p0, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logBroadcastReceived(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;-><init>(Lcom/android/systemui/broadcast/ActionReceiver;Landroid/content/Intent;Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    const-string v0, "Received intent for "

    const-string v1, " in receiver for "

    const-string/jumbo v2, "}"

    invoke-static {v0, p2, v1, p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
