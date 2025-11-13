.class public final Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final baseReconnectDelayMsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final dumpsysNameProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final maxReconnectAttemptsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final minConnectionDurationMsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final observerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final serviceConnectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->clockProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->dumpsysNameProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->serviceConnectionProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->maxReconnectAttemptsProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->baseReconnectDelayMsProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->minConnectionDurationMsProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->observerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/service/PersistentConnectionManager_Factory<",
            "TT;>;"
        }
    .end annotation

    new-instance v10, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/util/service/ObservableServiceConnection;IIILcom/android/systemui/util/service/Observer;)Lcom/android/systemui/util/service/PersistentConnectionManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/util/service/ObservableServiceConnection<",
            "TT;>;III",
            "Lcom/android/systemui/util/service/Observer;",
            ")",
            "Lcom/android/systemui/util/service/PersistentConnectionManager<",
            "TT;>;"
        }
    .end annotation

    new-instance v10, Lcom/android/systemui/util/service/PersistentConnectionManager;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/util/service/PersistentConnectionManager;-><init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/util/service/ObservableServiceConnection;IIILcom/android/systemui/util/service/Observer;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/service/PersistentConnectionManager;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/util/service/PersistentConnectionManager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/util/time/SystemClock;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->dumpsysNameProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->serviceConnectionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->maxReconnectAttemptsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->baseReconnectDelayMsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->minConnectionDurationMsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->observerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/util/service/Observer;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->newInstance(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/util/service/ObservableServiceConnection;IIILcom/android/systemui/util/service/Observer;)Lcom/android/systemui/util/service/PersistentConnectionManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/service/PersistentConnectionManager_Factory;->get()Lcom/android/systemui/util/service/PersistentConnectionManager;

    move-result-object p0

    return-object p0
.end method
