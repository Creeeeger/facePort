.class public final Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field public final autoCloser:Landroidx/room/support/AutoCloser;

.field public final delegate:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroidx/room/support/AutoCloser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->autoCloser:Landroidx/room/support/AutoCloser;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->autoCloser:Landroidx/room/support/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->decrementCountAndScheduleClose()V

    return-void
.end method

.method public final copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final deactivate()V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public final getBlob(I)[B
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getColumnCount()I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public final getDouble(I)D
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getFloat(I)F
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public final getInt(I)I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public final getLong(I)J
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getNotificationUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationUris()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    sget v0, Landroidx/sqlite/db/SupportSQLiteCompat$Api29Impl;->$r8$clinit:I

    invoke-interface {p0}, Landroid/database/Cursor;->getNotificationUris()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result p0

    return p0
.end method

.method public final getShort(I)S
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p0

    return p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p0

    return p0
.end method

.method public final getWantsAllOnMoveCalls()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result p0

    return p0
.end method

.method public final isAfterLast()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    return p0
.end method

.method public final isBeforeFirst()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result p0

    return p0
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    return p0
.end method

.method public final isFirst()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isFirst()Z

    move-result p0

    return p0
.end method

.method public final isLast()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result p0

    return p0
.end method

.method public final isNull(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public final move(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result p0

    return p0
.end method

.method public final moveToFirst()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    return p0
.end method

.method public final moveToLast()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result p0

    return p0
.end method

.method public final moveToNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0
.end method

.method public final moveToPosition(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final moveToPrevious()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result p0

    return p0
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final requery()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->requery()Z

    move-result p0

    return p0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    sget v0, Landroidx/sqlite/db/SupportSQLiteCompat$Api23Impl;->$r8$clinit:I

    invoke-interface {p0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public final setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    sget v0, Landroidx/sqlite/db/SupportSQLiteCompat$Api29Impl;->$r8$clinit:I

    invoke-interface {p0, p1, p2}, Landroid/database/Cursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;->delegate:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
