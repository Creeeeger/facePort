.class public Landroid/database/DummyDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "DummyDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDump;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    iput-object p1, p0, Landroid/database/DummyDatabaseErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method


# virtual methods
.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
