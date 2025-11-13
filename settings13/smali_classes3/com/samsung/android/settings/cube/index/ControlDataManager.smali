.class public Lcom/samsung/android/settings/cube/index/ControlDataManager;
.super Ljava/lang/Object;
.source "ControlDataManager.java"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ControlDataManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

.field private final mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screen_title"

    const-string v4, "keywords"

    const-string v5, "icon_uri"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "control_type"

    const-string v9, "recoverable"

    const-string v10, "restore_key"

    .line 21
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    .line 42
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    return-void
.end method

.method private buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 10

    const-string p0, "key"

    .line 133
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "title"

    .line 134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary"

    .line 135
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_title"

    .line 137
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "keywords"

    .line 138
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "icon_uri"

    .line 139
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fragment"

    .line 141
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 140
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "controller"

    .line 143
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 142
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "control_type"

    .line 145
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 144
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "recoverable"

    .line 147
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 146
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "restore_key"

    .line 149
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 148
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v9, Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    invoke-direct {v9}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;-><init>()V

    .line 152
    invoke-virtual {v9, p0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 155
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 156
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 157
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setIconUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setControlType(I)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 161
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setRecoverable(Z)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setRestoreKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object p0

    return-object p0
.end method

.method private buildMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " = ?"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->verifyIndexing()V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    sget-object v2, Lcom/samsung/android/settings/cube/index/ControlDataManager;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const-string v1, "controls_index"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object p0
.end method

.method private verifyIndexing()V
    .locals 2

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->indexControlData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    throw p0
.end method


# virtual methods
.method public getAllIndexedControlData()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/cube/index/ControlData;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 55
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 47
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    if-eqz v1, :cond_2

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 56
    sget-object v1, Lcom/samsung/android/settings/cube/index/ControlDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIndexedControlData() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 4

    :try_start_0
    const-string v0, "key"

    .line 67
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 66
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    if-gt v3, v1, :cond_2

    .line 79
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 80
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p0

    .line 75
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should not match more than 1 action with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Controls key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    .line 66
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 81
    sget-object p1, Lcom/samsung/android/settings/cube/index/ControlDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
