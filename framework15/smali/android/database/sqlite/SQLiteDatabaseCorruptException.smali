.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# static fields
.field public static final blacklist SQLITE_CORRUPT:I = 0xb

.field public static final blacklist SQLITE_CORRUPT_EXTRA:I = 0x40b

.field public static final blacklist SQLITE_CORRUPT_WAL:I = 0x50b

.field public static final blacklist SQLITE_NOTADB:I = 0x1a


# instance fields
.field private blacklist mCorruptCode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->parseCode(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return-void
.end method

.method public static blacklist isCorruptException(Ljava/lang/Throwable;)Z
    .locals 1

    nop

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getCorruptCode()I
    .locals 1

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return v0
.end method
