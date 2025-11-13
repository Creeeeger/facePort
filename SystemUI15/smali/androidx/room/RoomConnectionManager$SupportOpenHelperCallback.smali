.class public final Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/room/RoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-direct {p0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final onDowngrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    return-void
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-void
.end method

.method public final onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 1

    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->this$0:Landroidx/room/RoomConnectionManager;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/room/BaseRoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    return-void
.end method
