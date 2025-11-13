.class public final Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInfo:Landroid/content/pm/ApplicationInfo;

.field public final mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p1, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v0, v0, Lcom/android/settingslib/applications/StorageStatsSource;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FetchPackageStorage"

    const-string v1, "Package may have been removed during query, failing gracefully"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    return-void
.end method
