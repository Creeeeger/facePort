.class public final Landroidx/room/ObservedTableStates;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public needsSync:Z

.field public final tableObservedState:[Z

.field public final tableObserversCount:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    return-void
.end method
