.class public final Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final activeClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

.field private final maxTimeout:J

.field private final pmWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    iput-wide p3, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->maxTimeout:J

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;->INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$acquire$count$1;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/util/wakelock/WakeLockLogger;->logAcquire(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;I)V

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->maxTimeout:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_0
    return-void
.end method

.method public final activeClients()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;->INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$1;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$2;->INSTANCE:Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock$activeClients$2;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap;->reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I

    move-result p0

    return p0
.end method

.method public release(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_2

    const-string v0, "Releasing WakeLock with invalid reason: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeLock"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->logger:Lcom/android/systemui/util/wakelock/WakeLockLogger;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/util/wakelock/WakeLockLogger;->logRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;I)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->pmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/wakelock/ClientTrackingWakeLock;->activeClients()I

    move-result p0

    const-string v0, "active clients="

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrapImpl(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
