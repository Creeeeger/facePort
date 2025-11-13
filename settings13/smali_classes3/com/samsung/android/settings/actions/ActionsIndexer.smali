.class Lcom/samsung/android/settings/actions/ActionsIndexer;
.super Ljava/lang/Object;
.source "ActionsIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

.field private mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    .line 49
    new-instance p1, Lcom/samsung/android/settings/actions/ActionDataConverter;

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/actions/ActionDataConverter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

    return-void
.end method


# virtual methods
.method getActionData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getActionData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected indexActionData()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->isActionDataIndexed()Z

    move-result v0

    const-string v1, "ActionsIndexer"

    if-eqz v0, :cond_0

    const-string p0, "Actions already indexed - returning."

    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->getActionData()Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/actions/ActionsIndexer;->insertActionData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->setIndexedState()V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing actions database took: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    throw p0
.end method

.method insertActionData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/actions/ActionData;

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "screentitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keywords"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getIconResource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getPreferenceController()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getActionType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "action_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_2

    :cond_1
    const-string v1, "0"

    :goto_2
    const-string v2, "recoverable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getRestoreKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restore_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getTargetFragment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getPayload()[B

    move-result-object p2

    const-string v1, "payload"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    const-string v1, "actions_index"

    .line 119
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public isActionDataIndexed()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->isActionDataIndexed()Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V

    return-void
.end method
