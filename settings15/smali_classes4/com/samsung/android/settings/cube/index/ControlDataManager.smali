.class public final Lcom/samsung/android/settings/cube/index/ControlDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;


# instance fields
.field public final mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

.field public final mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string/jumbo v9, "recoverable"

    const-string/jumbo v10, "restore_key"

    const-string v0, "key"

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "summary"

    const-string/jumbo v3, "screen_title"

    const-string v4, "keywords"

    const-string v5, "icon_uri"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "control_type"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    new-instance v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->mConverter:Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    return-void
.end method

.method public static buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 11

    const-string v0, "key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screen_title"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "keywords"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon_uri"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fragment"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "controller"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "control_type"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v9, "recoverable"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v10, "restore_key"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    iput-object v1, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    iput-object v2, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mSummary:Ljava/lang/String;

    iput-object v3, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v4, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKeywords:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mIconUri:Landroid/net/Uri;

    iput-object v6, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v7, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    iput v8, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControlType:I

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRecoverable:Z

    iput-object p0, v10, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRestoreKey:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getControlDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 4

    const-string v0, "Should not match more than 1 action with key: "

    const-string v1, "Invalid Controls key: "

    :try_start_0
    const-string v2, "key = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    if-gt v2, v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/cube/index/ControlDataManager;->buildControlData(Landroid/database/Cursor;)Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p0, :cond_3

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    const-string p1, "ControlDataManager"

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIndexedControlData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mControlsIndexer:Lcom/samsung/android/settings/cube/index/ControlsIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/index/ControlsIndexer;->indexControlData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlDataManager;->mHelper:Lcom/samsung/android/settings/cube/index/ControlsDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

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

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
