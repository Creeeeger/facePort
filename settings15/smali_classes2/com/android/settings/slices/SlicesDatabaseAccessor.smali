.class public final Lcom/android/settings/slices/SlicesDatabaseAccessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SELECT_COLUMNS_ALL:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "highlight_menu"

    const-string v11, "user_restriction"

    const-string v0, "key"

    const-string v1, "title"

    const-string v2, "summary"

    const-string v3, "screentitle"

    const-string v4, "keywords"

    const-string v5, "icon"

    const-string v6, "fragment"

    const-string v7, "controller"

    const-string v8, "slice_type"

    const-string v9, "unavailable_slice_subtitle"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    return-void
.end method

.method public static buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;
    .locals 12

    const-string v0, "key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screentitle"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "keywords"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

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

    const-string v8, "slice_type"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "unavailable_slice_subtitle"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "highlight_menu"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "user_restriction"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    :cond_0
    new-instance p2, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    iput-object v2, p2, Lcom/android/settings/slices/SliceData$Builder;->mSummary:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v4, p2, Lcom/android/settings/slices/SliceData$Builder;->mKeywords:Ljava/lang/String;

    iput v5, p2, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    iput-object v6, p2, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v7, p2, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    iput v8, p2, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    iput-object v9, p2, Lcom/android/settings/slices/SliceData$Builder;->mUnavailableSliceSubtitle:Ljava/lang/String;

    iput v10, p2, Lcom/android/settings/slices/SliceData$Builder;->mHighlightMenuRes:I

    iput-object p0, p2, Lcom/android/settings/slices/SliceData$Builder;->mUserRestriction:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/android/settings/slices/SlicesDatabaseAccessor;->SELECT_COLUMNS_ALL:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "slices_index"

    const-string v3, "key = ?"

    const/4 v5, 0x0

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

    const-string v0, "Should not match more than 1 slice with path: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Slices key from path: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;
    .locals 2

    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getIndexedSliceData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->buildSliceData(Landroid/database/Cursor;Landroid/net/Uri;Z)Lcom/android/settings/slices/SliceData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Slices uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSliceUris(Ljava/lang/String;Z)Ljava/util/List;
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->verifyIndexing()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "=1"

    goto :goto_0

    :cond_0
    const-string p2, "=0"

    :goto_0
    const-string v1, "public_slice"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "slice_uri"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "slices_index"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_2
    if-eqz p0, :cond_4

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method

.method public final verifyIndexing()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings/slices/SlicesIndexer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iput-object v3, v2, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    :cond_0
    iget-object p0, v2, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mSlicesIndexer:Lcom/android/settings/slices/SlicesIndexer;

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No feature factory configured"

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
