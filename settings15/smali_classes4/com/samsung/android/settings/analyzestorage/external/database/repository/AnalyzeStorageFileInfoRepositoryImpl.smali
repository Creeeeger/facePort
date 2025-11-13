.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;
.super Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AS_LOCAL_DOMAIN_TYPE:[I

.field public static final MEDIA_ITEMS:Ljava/util/List;

.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDatabaseChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;

.field public final mQueryHelperMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->AS_LOCAL_DOMAIN_TYPE:[I

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array/range {v1 .. v6}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->MEDIA_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mQueryHelperMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mDatabaseChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->AS_LOCAL_DOMAIN_TYPE:[I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    aget v1, p1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mQueryHelperMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalSecureFolderStorageQueryHelper;

    invoke-direct {v4, v3, p2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "QueryHelperFactory createLocalStorageQueryHelper ] domainType("

    const-string p2, ") is not supported."

    invoke-static {v1, p1, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalKnoxStorageQueryHelper;

    invoke-direct {v4, v3, p2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalAppCloneStorageQueryHelper;

    invoke-direct {v4, v3, p2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/SdCardQueryHelper;

    invoke-direct {v4, v3, p2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalStorageQueryHelper;

    invoke-direct {v4, v3, p2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    :goto_1
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;

    return-object p0
.end method


# virtual methods
.method public final query(Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, 0x1

    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v6, "strCommand"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "detailedSize"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v6, "domainType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mQueryHelperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    new-instance v7, Landroid/database/MatrixCursor;

    const-string v12, "item"

    const-string/jumbo v13, "size"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_1b

    iget-object v13, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mDatabaseChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;

    iget-object v14, v13, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;->mMediaProviderChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;

    iget-object v13, v13, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getUserIdFromDomainType(Landroid/content/Context;I)I

    move-result v13

    const-string v15, "isChanged ] userId : "

    const-string v8, "isChanged ] retail mode - "

    const-string v9, "isChanged ] interval ("

    iget-object v10, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mArgsList:Landroid/util/SparseArray;

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;

    if-nez v10, :cond_0

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;

    invoke-direct {v10}, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;-><init>()V

    iget-object v1, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mArgsList:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v17, v12

    iget-wide v11, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastCheckTime:J

    sub-long v11, v3, v11

    const-wide/16 v18, 0x3e8

    cmp-long v11, v11, v18

    if-gez v11, :cond_1

    const-string v8, "MediaProviderChangeDetector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastCheckTime:J

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") - "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    sget-boolean v3, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isRetailMode:Z

    if-eqz v3, :cond_2

    iget-object v3, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "ratail_mode_mp_change_check"

    const/4 v9, 0x0

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "ratail_mode_mp_change_check"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v2, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastCheckTime:J

    const-string v3, "MediaProviderChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    monitor-exit v1

    goto/16 :goto_2

    :cond_2
    iget-object v3, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prev_mp_generation"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, -0x1

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v11, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v11, v13}, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->getGenerationFromMp(Landroid/content/Context;I)J

    move-result-wide v11

    cmp-long v16, v11, v3

    if-nez v16, :cond_4

    cmp-long v18, v3, v8

    if-nez v18, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v8, v2

    :goto_1
    if-eqz v8, :cond_5

    iget-object v9, v14, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prev_mp_generation"

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v2, "MediaProviderChangeDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " , isChanged : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " [ "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastChangeResult:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector$ArgsByUser;->mLastCheckTime:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v8

    :goto_2
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->MEDIA_ITEMS:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;

    move-object/from16 v4, v17

    invoke-direct {v2, v0, v4, v6, v3}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda2;-><init>(Landroid/database/MatrixCursor;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isLocalStorage(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSize(Landroid/content/Context;I)J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getTrashCapacity()[J

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    new-array v8, v6, [J

    fill-array-data v8, :array_0

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper;->isSupportCapacityOfSubUsers(I)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getUserInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_7

    const-string v4, "StorageManageHelper"

    const-string v6, "getSubUsersCapacity() ] sub user is not enabled."

    invoke-static {v4, v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-class v9, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/StorageStatsManager;

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, v9, v4}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper$$ExternalSyntheticLambda0;-><init>([JLandroid/app/usage/StorageStatsManager;Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_3
    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v4, 0x1

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;->TOTAL:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->getAppsSize(Landroid/content/Context;)J

    move-result-wide v9

    const/4 v4, 0x1

    :goto_4
    aget-wide v11, v3, v4

    sub-long/2addr v9, v11

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->moveToFirst()Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_a

    :goto_5
    invoke-virtual {v7, v4}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    sub-long v11, v1, v11

    const/4 v4, 0x0

    aget-wide v13, v3, v4

    sub-long/2addr v11, v13

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v6

    const/4 v13, 0x2

    if-eqz v6, :cond_c

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper;->getSystemPartitionSize(I)J

    move-result-wide v0

    aget-wide v5, v8, v4

    const/4 v2, 0x1

    aget-wide v14, v8, v2

    add-long/2addr v5, v14

    aget-wide v14, v8, v13

    add-long/2addr v5, v14

    add-long v14, v9, v0

    move-object v4, v3

    const-wide/16 v2, 0x0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-long/2addr v5, v14

    sub-long/2addr v11, v5

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SYSTEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_b
    :goto_7
    const-wide/16 v2, 0x0

    goto/16 :goto_e

    :cond_c
    move-object v4, v3

    const/4 v3, 0x4

    if-ne v13, v5, :cond_d

    goto :goto_8

    :cond_d
    const/4 v6, 0x3

    if-ne v6, v5, :cond_e

    goto :goto_8

    :cond_e
    if-ne v3, v5, :cond_b

    :goto_8
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    const-string v6, "getTotalSizeOfAllFilesIncludingTrashFromMediaProvider ] Cursor : "

    if-eqz v5, :cond_13

    const/4 v9, 0x1

    if-eq v5, v9, :cond_12

    if-eq v5, v13, :cond_11

    const/4 v9, 0x3

    if-eq v5, v9, :cond_10

    if-ne v5, v3, :cond_f

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getInternalSecureFolderStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_f
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalStorageRoot:Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StoragePathUtils getLocalStoragePathByDomainType ] domainType("

    const-string v2, ") is not supported."

    invoke-static {v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getInternalKnoxStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_11
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalAppCloneStorageRoot:Ljava/lang/String;

    goto :goto_9

    :cond_12
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sExtSdCardPath:Ljava/lang/String;

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v0, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getUserIdFromDomainType(Landroid/content/Context;I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v3, ""

    goto :goto_a

    :cond_14
    const-string v14, "_data LIKE \'"

    const-string v15, "%\'AND "

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    const-string/jumbo v14, "mime_type IS NOT NULL"

    invoke-static {v10, v3, v14}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->MEDIA_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v10, v9}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileUriConverter;->addUserIdToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "SUM(_size)"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-static {v0, v9, v10, v3, v14}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_15

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_15
    :try_start_2
    const-string v0, "StorageUsageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", domainType : "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_16

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_16
    const-wide/16 v5, 0x0

    :goto_b
    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    sub-long/2addr v11, v9

    goto/16 :goto_7

    :goto_c
    if-eqz v3, :cond_17

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_d
    throw v1

    :goto_e
    cmp-long v0, v11, v2

    if-gez v0, :cond_18

    const-string v0, "addRowsCorrectedNonMediaCategory() ] Other has a negative value. appSize = "

    const-string v1, " other = "

    invoke-static {v9, v10, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " subUsersSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyzeStorageFileInfoRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v2

    goto :goto_f

    :cond_18
    move-wide v9, v11

    :goto_f
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v4, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_19
    const/4 v11, 0x0

    :goto_10
    if-gt v11, v13, :cond_1b

    aget-wide v0, v8, v11

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-wide v4, v8, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1a
    const/4 v0, 0x1

    add-int/2addr v11, v0

    goto :goto_10

    :goto_11
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1b
    return-object v7

    :cond_1c
    const-wide/16 v2, 0x0

    const-string v1, "detailedSizeWithCount"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v4, "size"

    const-string v6, "count"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v4, "domainType"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mQueryHelperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;

    if-eqz v5, :cond_21

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->MEDIA_ITEMS:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5, v1}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;Landroid/database/MatrixCursor;)V

    invoke-interface {v6, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSize(Landroid/content/Context;I)J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getTrashCapacity()[J

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1e

    move-wide v10, v2

    :cond_1d
    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_1d

    goto :goto_12

    :cond_1e
    move-wide v10, v2

    :goto_12
    sub-long/2addr v6, v10

    aget-wide v10, v5, v8

    sub-long/2addr v6, v10

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v8

    if-nez v8, :cond_1f

    :goto_13
    const/4 v0, 0x1

    goto :goto_14

    :cond_1f
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;->TOTAL:Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataInterface$AppData;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->getAppsSize(Landroid/content/Context;)J

    move-result-wide v2

    goto :goto_13

    :goto_14
    aget-wide v10, v5, v0

    sub-long/2addr v2, v10

    sget v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->lastCalculatedAppCount:I

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper;->getSystemPartitionSize(I)J

    move-result-wide v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-long/2addr v2, v10

    sub-long/2addr v6, v2

    :cond_20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    aget-wide v2, v5, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_21
    return-object v1

    :cond_22
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
