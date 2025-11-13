.class public Lcom/samsung/android/settings/cube/index/ControlsIndexer;
.super Ljava/lang/Object;
.source "ControlsIndexer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControlsIndexer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

.field private mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    .line 29
    new-instance p1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/index/ControlDataConverter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    return-void
.end method


# virtual methods
.method getControlData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/cube/index/ControlData;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->getControlData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public indexControlData()V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->isControlDataIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->TAG:Ljava/lang/String;

    const-string v0, "Control already indexed - returning."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->getControlData()Ljava/util/List;

    move-result-object v3

    .line 45
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->insertControlData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->setIndexedState()V

    .line 50
    sget-object p0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing actions database took: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    throw p0
.end method

.method insertControlData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/cube/index/ControlData;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/cube/index/ControlData;

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "screen_title"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    const-string v3, "keywords"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v1, "icon_uri"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getControllerClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getControlType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "control_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_3

    :cond_2
    const-string v1, "0"

    :goto_3
    const-string v2, "recoverable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/index/ControlData;->getRestoreKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "restore_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "controls_index"

    .line 81
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_3
    return-void
.end method
