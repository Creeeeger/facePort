.class final Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;
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
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/room/BaseRoomConnectionManager;

.field final synthetic this$1:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;


# direct methods
.method public constructor <init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iput-object p2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$1:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    iput-object p3, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->$fileName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iget-boolean v0, v0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$1:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    iget-object v0, v0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->actual:Landroidx/sqlite/SQLiteDriver;

    iget-object v2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->$fileName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    iget-object v2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iget-boolean v3, v2, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v1, v2, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    invoke-static {v2, v0}, Landroidx/room/BaseRoomConnectionManager;->access$configureDatabase(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iput-boolean v3, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$open$1;->this$0:Landroidx/room/BaseRoomConnectionManager;

    iput-boolean v3, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    throw v0

    :cond_0
    invoke-virtual {v2}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
