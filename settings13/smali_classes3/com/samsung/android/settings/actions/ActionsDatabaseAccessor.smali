.class public Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;
.super Ljava/lang/Object;
.source "ActionsDatabaseAccessor.java"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ActionsDatabaseAccessor"


# instance fields
.field private final mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "action_type"

    const-string v9, "recoverable"

    const-string v10, "restore_key"

    const-string v11, "target_fragment"

    const-string v12, "payload"

    .line 37
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    .line 60
    new-instance v0, Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/actions/ActionsIndexer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    return-void
.end method

.method private buildActionData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/samsung/android/settings/actions/ActionData;
    .locals 12

    const-string p0, "key"

    .line 138
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "title"

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary"

    .line 140
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screentitle"

    .line 142
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "keywords"

    .line 143
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "icon"

    .line 144
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "fragment"

    .line 146
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 145
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "controller"

    .line 148
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 147
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action_type"

    .line 150
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 149
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "recoverable"

    .line 152
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 151
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "restore_key"

    .line 154
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 153
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "target_fragment"

    .line 156
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 155
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "payload"

    .line 158
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 157
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v11, Lcom/samsung/android/settings/actions/LaunchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v11}, Lcom/samsung/android/settings/actions/ParcelableUtil;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/actions/LaunchPayload;

    :goto_0
    const/4 v11, 0x0

    if-eqz p3, :cond_1

    move v7, v11

    .line 166
    :cond_1
    new-instance p3, Lcom/samsung/android/settings/actions/ActionData$Builder;

    invoke-direct {p3}, Lcom/samsung/android/settings/actions/ActionData$Builder;-><init>()V

    .line 167
    invoke-virtual {p3, p0}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 169
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setIcon(I)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setActionType(I)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    const/4 p2, 0x1

    if-ne v8, p2, :cond_2

    move v11, p2

    .line 177
    :cond_2
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setRecoverable(Z)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 178
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setRestoreKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setTargetFragment(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setPayload(Lcom/samsung/android/settings/actions/LaunchPayload;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionData$Builder;->build()Lcom/samsung/android/settings/actions/ActionData;

    move-result-object p0

    return-object p0
.end method

.method private buildKeyMatchWhereClause()Ljava/lang/String;
    .locals 1

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "key"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " = ?"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexedActionData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->verifyIndexing()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->buildKeyMatchWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 111
    sget-object v2, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const-string v1, "actions_index"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    if-gt v1, p0, :cond_0

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    return-object v0

    .line 122
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should not match more than 1 action with path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Actions key from path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyIndexing()V
    .locals 2

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method


# virtual methods
.method public getActionDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData;
    .locals 2

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->getIndexedActionData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 69
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->buildActionData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 70
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 68
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getIndexedActionDataForActionProvider()Landroid/database/Cursor;
    .locals 14

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->verifyIndexing()V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "title"

    const-string v3, "summary"

    const-string v4, "fragment"

    const-string v5, "icon"

    const-string v6, "action_type"

    const-string v7, "recoverable"

    const-string v8, "restore_key"

    const-string v9, "target_fragment"

    const-string v10, "payload"

    const-string v11, "screentitle"

    const-string v12, "keywords"

    const-string v13, "controller"

    .line 85
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "actions_index"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 101
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public needToIndex()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->isActionDataIndexed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
