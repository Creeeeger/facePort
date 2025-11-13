.class final Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/room/RoomConnectionManager$SupportPooledConnection;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/RoomConnectionManager$SupportConnectionPool;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager$SupportConnectionPool;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;->this$0:Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;->this$0:Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    iget-object v0, v0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    iget-object v0, v0, Landroidx/room/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;->this$0:Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {v0, v1}, Landroidx/room/RoomConnectionManager$SupportPooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    return-object v0
.end method
