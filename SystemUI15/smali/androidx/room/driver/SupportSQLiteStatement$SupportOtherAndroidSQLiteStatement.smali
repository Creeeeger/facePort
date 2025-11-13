.class public final Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;
.super Landroidx/room/driver/SupportSQLiteStatement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final delegate:Landroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/room/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    return-void
.end method


# virtual methods
.method public final bindLong(IJ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public final bindNull()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public final bindText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/driver/SupportSQLiteStatement;->isClosed:Z

    return-void
.end method

.method public final getColumnCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLiteKt;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLong(I)J
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLiteKt;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getText(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLiteKt;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isNull(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLiteKt;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method

.method public final step()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/room/driver/SupportSQLiteStatement;->throwIfClosed()V

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    const/4 p0, 0x0

    return p0
.end method
