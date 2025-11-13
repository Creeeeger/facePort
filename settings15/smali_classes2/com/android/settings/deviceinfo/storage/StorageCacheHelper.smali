.class public final Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StorageCache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final hasCachedSizeInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;
    .locals 5

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "total_size_key"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "total_used_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalUsedSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "images_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "videos_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "audio_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "apps_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "games_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "documents_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "other_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->otherSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "trash_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "system_size_key"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "temporary_files_size_key"

    invoke-interface {p0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->temporaryFilesSize:J

    return-object v0
.end method
