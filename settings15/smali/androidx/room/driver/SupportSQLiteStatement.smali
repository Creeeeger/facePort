.class public abstract Landroidx/room/driver/SupportSQLiteStatement;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# instance fields
.field public final db:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field public isClosed:Z

.field public final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteStatement;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    iput-object p2, p0, Landroidx/room/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final throwIfClosed()V
    .locals 1

    iget-boolean p0, p0, Landroidx/room/driver/SupportSQLiteStatement;->isClosed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x15

    const-string/jumbo v0, "statement is closed"

    invoke-static {p0, v0}, Landroidx/sqlite/SQLiteKt;->throwSQLiteException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
