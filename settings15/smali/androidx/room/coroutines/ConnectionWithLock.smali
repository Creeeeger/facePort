.class public final Landroidx/room/coroutines/ConnectionWithLock;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/sqlite/SQLiteConnection;
.implements Lkotlinx/coroutines/sync/Mutex;


# instance fields
.field public final delegate:Landroidx/sqlite/SQLiteConnection;

.field public final lock:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object v0

    const-string v1, "delegate"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteConnection;->close()V

    return-void
.end method

.method public final lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 1

    const-string/jumbo v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public final unlock(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-void
.end method
