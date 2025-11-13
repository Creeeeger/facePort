.class public final Landroidx/room/RoomConnectionManager$SupportConnectionPool;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final supportConnection$delegate:Lkotlin/Lazy;

.field public final supportDriver:Landroidx/room/driver/SupportSQLiteDriver;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteDriver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;

    invoke-direct {v0, p0}, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;-><init>(Landroidx/room/RoomConnectionManager$SupportConnectionPool;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportConnection$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportConnection$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    invoke-interface {p2, p0, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
