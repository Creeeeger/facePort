.class final Landroidx/room/coroutines/ConnectionPoolImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $driver:Landroidx/sqlite/SQLiteDriver;

.field final synthetic $fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl$1;->$driver:Landroidx/sqlite/SQLiteDriver;

    iput-object p2, p0, Landroidx/room/coroutines/ConnectionPoolImpl$1;->$fileName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$1;->$driver:Landroidx/sqlite/SQLiteDriver;

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl$1;->$fileName:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method
