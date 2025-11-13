.class public final Lcom/android/systemui/dump/LogBufferFreezer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final freezeDuration:J

.field public pendingToken:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/dump/LogBufferFreezer;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-wide p3, p0, Lcom/android/systemui/dump/LogBufferFreezer;->freezeDuration:J

    return-void
.end method
