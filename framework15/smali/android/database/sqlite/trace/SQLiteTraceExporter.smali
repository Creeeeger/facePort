.class public abstract Landroid/database/sqlite/trace/SQLiteTraceExporter;
.super Ljava/lang/Object;
.source "SQLiteTraceExporter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mConfiguration:Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/trace/SQLiteTraceExporter;->mConfiguration:Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/trace/SQLiteTraceExporter;->open(Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;)V

    return-void
.end method


# virtual methods
.method public blacklist getConfiguration()Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/trace/SQLiteTraceExporter;->mConfiguration:Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;

    return-object v0
.end method

.method abstract blacklist open(Landroid/database/sqlite/trace/SQLiteTrace$TraceConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeOperation(Landroid/database/sqlite/trace/SQLiteTrace$TraceOperation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method blacklist writeOperations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/database/sqlite/trace/SQLiteTrace$TraceOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/trace/SQLiteTrace$TraceOperation;

    invoke-virtual {p0, v1}, Landroid/database/sqlite/trace/SQLiteTraceExporter;->writeOperation(Landroid/database/sqlite/trace/SQLiteTrace$TraceOperation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
