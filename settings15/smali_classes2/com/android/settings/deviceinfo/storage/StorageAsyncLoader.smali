.class public final Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mSeenPackages:Landroid/util/ArraySet;

.field public final mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object p0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "sum(_size)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p1, p3, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :catch_0
    const-string p0, "Not able to get Context for user ID "

    const-string p2, "StorageAsyncLoader"

    invoke-static {p1, p0, p2}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const-string v6, "StorageAsyncLoader"

    const-string v0, "Loading apps"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    if-ge v7, v11, :cond_5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v12, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v13, v0, v15, v10}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v13}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v16

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v12, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v12, v0, v15}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v18

    invoke-virtual {v13}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v20

    invoke-virtual {v13}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v22

    add-long v22, v22, v16

    cmp-long v0, v18, v20

    if-gez v0, :cond_0

    sub-long v22, v22, v20

    add-long v22, v22, v18

    :cond_0
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v12, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v15, v10

    move/from16 v16, v11

    iget-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    invoke-virtual {v13}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v12

    add-long/2addr v12, v10

    iput-wide v12, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    goto :goto_2

    :cond_1
    move-object v15, v10

    move/from16 v16, v11

    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v0, :cond_4

    const/4 v10, 0x1

    if-eq v0, v10, :cond_3

    const/4 v10, 0x2

    if-eq v0, v10, :cond_3

    const/4 v10, 0x3

    if-eq v0, v10, :cond_3

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x2000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_2

    iget-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    add-long v10, v10, v22

    iput-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    goto :goto_3

    :cond_2
    iget-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long v10, v10, v22

    iput-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    goto :goto_3

    :cond_3
    iget-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long v10, v10, v22

    iput-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    goto :goto_3

    :cond_4
    iget-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    add-long v10, v10, v22

    iput-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v15, v10

    move/from16 v16, v11

    const-string v10, "App unexpectedly not found"

    invoke-static {v6, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v10, v15

    move/from16 v11, v16

    goto/16 :goto_1

    :cond_5
    const-string v7, "Loading external stats"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    new-instance v7, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-object v8, v12, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v8, v0, v5}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    invoke-virtual {v0}, Landroid/app/usage/ExternalStorageStats;->getAppBytes()J

    iput-object v7, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-string v0, "Obtaining result completed"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android:query-arg-sql-selection"

    const-string v7, "volume_name= \'external_primary\'"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v7

    iput-wide v7, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    :try_start_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    iget-object v7, v12, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v7, v0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/util/UUID;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    sub-long/2addr v7, v10

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v7, "Exception in calculating System category size"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v7, 0x0

    :goto_5
    iput-wide v7, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->systemSize:J

    const-string v0, "media_type=6"

    invoke-static {v5, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "external_primary"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v6, v8, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsSize:J

    const-string v0, "media_type!=1 AND media_type!=3 AND media_type!=2 AND media_type!=6 AND mime_type IS NOT NULL"

    invoke-static {v5, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v5

    iput-wide v5, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->otherSize:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android:query-arg-match-trashed"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v5

    iput-wide v5, v9, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    return-object v2
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/SparseArray;

    return-void
.end method
