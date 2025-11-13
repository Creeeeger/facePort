.class final Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;
.super Ljava/lang/Thread;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SQLiteExpertModule"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteIndexRecommendation"


# instance fields
.field private blacklist mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private blacklist mPath:Ljava/lang/String;

.field private blacklist mSql:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .line 2332
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2333
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 2334
    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mSql:Ljava/lang/String;

    .line 2335
    iput-object p3, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mPath:Ljava/lang/String;

    .line 2336
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 2339
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mSql:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$manalyzeSql(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2340
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newIndex=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", sql=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mSql:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", window=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2343
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2344
    .local v1, "log":Ljava/lang/String;
    const-string v2, "SQLiteIndexRecommendation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    .end local v1    # "log":Ljava/lang/String;
    :cond_0
    return-void
.end method
