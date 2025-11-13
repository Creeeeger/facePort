.class public final Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# instance fields
.field public final autoCloser:Landroidx/room/support/AutoCloser;

.field public final binds:Ljava/util/ArrayList;

.field public final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/room/support/AutoCloser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->sql:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->autoCloser:Landroidx/room/support/AutoCloser;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->binds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bindBlob(I[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->saveBinds(ILjava/lang/Object;)V

    return-void
.end method

.method public final bindDouble(DI)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->saveBinds(ILjava/lang/Object;)V

    return-void
.end method

.method public final bindLong(IJ)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->saveBinds(ILjava/lang/Object;)V

    return-void
.end method

.method public final bindNull(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->saveBinds(ILjava/lang/Object;)V

    return-void
.end method

.method public final bindString(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->saveBinds(ILjava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final execute()V
    .locals 3

    sget-object v0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1;->INSTANCE:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1;

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->autoCloser:Landroidx/room/support/AutoCloser;

    new-instance v2, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeSqliteStatementWithRefCount$1;

    invoke-direct {v2, p0, v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeSqliteStatementWithRefCount$1;-><init>(Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroidx/room/support/AutoCloser;->executeRefCountingFunction(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final saveBinds(ILjava/lang/Object;)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->binds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->binds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    :goto_0
    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->binds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->binds:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
