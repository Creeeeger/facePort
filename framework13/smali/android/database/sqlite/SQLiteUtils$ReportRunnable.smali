.class Landroid/database/sqlite/SQLiteUtils$ReportRunnable;
.super Ljava/lang/Object;
.source "SQLiteUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportRunnable"
.end annotation


# instance fields
.field blacklist context:Landroid/content/Context;

.field blacklist size:J


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;->context:Landroid/content/Context;

    .line 92
    iput-wide p2, p0, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;->size:J

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.salab.issuetracker.intent.ACTION_STORAGE_ISSUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "issueTrackerIntent":Landroid/content/Intent;
    const/16 v1, -0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERRCODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    const-string v1, "ERRNAME"

    const-string v2, "DBSIZE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "ERRPKG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal database file size has been detected from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;->size:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ERRMSG"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Landroid/database/sqlite/SQLiteUtils$ReportRunnable;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
