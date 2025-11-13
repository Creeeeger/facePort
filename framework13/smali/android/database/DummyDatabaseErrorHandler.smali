.class public Landroid/database/DummyDatabaseErrorHandler;
.super Landroid/database/ErrorHandler;
.source "DummyDatabaseErrorHandler.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/database/ErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    const/4 v0, 0x0

    return v0
.end method
