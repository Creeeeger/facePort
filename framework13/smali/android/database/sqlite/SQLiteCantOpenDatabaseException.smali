.class public Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteCantOpenDatabaseException.java"


# static fields
.field public static final blacklist errCode:I = 0xe


# instance fields
.field private blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->parseCode(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist semIsWrongPasswordException()Z
    .locals 2

    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    const/16 v1, 0xd0e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
