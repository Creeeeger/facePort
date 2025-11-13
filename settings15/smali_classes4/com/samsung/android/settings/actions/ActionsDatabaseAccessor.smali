.class public final Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;


# instance fields
.field public final mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

.field public final mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string/jumbo v11, "target_fragment"

    const-string/jumbo v12, "payload"

    const-string v0, "key"

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "summary"

    const-string/jumbo v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "action_type"

    const-string/jumbo v9, "recoverable"

    const-string/jumbo v10, "restore_key"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    new-instance v0, Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    new-instance v1, Lcom/samsung/android/settings/actions/ActionDataConverter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    iput-object p1, v1, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    return-void
.end method

.method public static buildActionData(Landroid/database/Cursor;)Lcom/samsung/android/settings/actions/ActionData;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "key"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "summary"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "screentitle"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keywords"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "fragment"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "controller"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "action_type"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v10, "recoverable"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v11, "restore_key"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "target_fragment"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "payload"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object/from16 v16, v12

    goto :goto_0

    :cond_0
    sget-object v14, Lcom/samsung/android/settings/actions/LaunchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    move-object/from16 v16, v12

    array-length v12, v0

    invoke-virtual {v15, v0, v13, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v14, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    check-cast v0, Lcom/samsung/android/settings/actions/LaunchPayload;

    :goto_0
    new-instance v12, Lcom/samsung/android/settings/actions/ActionData$Builder;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v1, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    iput-object v2, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    iput-object v3, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mSummary:Ljava/lang/String;

    iput-object v4, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v5, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKeywords:Ljava/lang/String;

    iput v6, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mIconResource:I

    iput-object v7, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v8, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    iput v9, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mActionType:I

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    move v13, v1

    :cond_1
    iput-boolean v13, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRecoverable:Z

    iput-object v11, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRestoreKey:Ljava/lang/String;

    move-object/from16 v1, v16

    iput-object v1, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTargetFragment:Ljava/lang/String;

    iput-object v0, v12, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    invoke-virtual {v12}, Lcom/samsung/android/settings/actions/ActionData$Builder;->build()Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getIndexedActionData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mActionsIndexer:Lcom/samsung/android/settings/actions/ActionsIndexer;

    invoke-virtual {v2}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const-string v3, "key = ?"

    const/4 v5, 0x0

    const-string v1, "actions_index"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not match more than 1 action with path: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Actions key from path: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
