.class public final Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# instance fields
.field public final synthetic this$0:Landroidx/room/RoomConnectionManager$SupportPooledConnection;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager$SupportPooledConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;->this$0:Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;->this$0:Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->delegate:Landroidx/room/driver/SupportSQLiteConnection;

    return-object p0
.end method

.method public final usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportPooledConnection$SupportTransactor;->this$0:Landroidx/room/RoomConnectionManager$SupportPooledConnection;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportPooledConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
