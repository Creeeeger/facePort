.class public final Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final asyncObservers:Lcom/android/systemui/util/ListenerSet;

.field public final atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

.field public lastAsyncValue:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final name:Ljava/lang/String;

.field public final syncObservers:Lcom/android/systemui/util/ListenerSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p1}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    new-instance p1, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p1}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->asyncObservers:Lcom/android/systemui/util/ListenerSet;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    const-string/jumbo v0, "syncObservers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncObservers"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->asyncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setValueAndProvideDispatcher(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$2;

    return-object p0
.end method
