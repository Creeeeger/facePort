.class public final Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final apiLogger:Lcom/android/systemui/plank/ApiLogger;

.field public final plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

.field public final protocol:Lcom/android/systemui/plank/protocol/Protocol;

.field public final testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/protocol/Protocol;Lcom/android/systemui/plank/ApiLogger;Lcom/android/systemui/plank/command/PlankDispatcherFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    iput-object p2, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    iput-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    iput-object p4, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

    return-void
.end method
