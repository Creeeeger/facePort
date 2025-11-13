.class final Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;
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

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    new-instance v0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool$supportConnection$2;->this$0:Landroidx/room/RoomConnectionManager$SupportConnectionPool;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportConnectionPool;->supportDriver:Landroidx/room/driver/SupportSQLiteDriver;

    new-instance v1, Landroidx/room/driver/SupportSQLiteConnection;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-direct {v0, v1}, Landroidx/room/RoomConnectionManager$SupportPooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    return-object v0
.end method
