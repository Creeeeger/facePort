.class public Lcom/android/settings/deviceinfo/StorageCategoryFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks;"
    }
.end annotation


# instance fields
.field public mAppsResult:Landroid/util/SparseArray;

.field public mNonCurrentUsers:Ljava/util/List;

.field public mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field public mProfileType:I

.field public mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field public mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field public mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    new-instance v3, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mProfileType:I

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;I)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mProfileType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->getNonCurrentUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "pref_non_current_users"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StorageCategoryFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mProfileType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x7c4

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/16 p0, 0x7fb

    return p0

    :cond_1
    const/16 p0, 0x2e9

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17026d

    return p0
.end method

.method public getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p0
.end method

.method public getStorageResult()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    return-object p0
.end method

.method public maybeSetLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_2
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mProfileType:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getCurrentUserIdOfType(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;->setUserId(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "StorageCategoryFrag"

    const-string v0, "RUN_STORAGE_ANALYSIS : Activity Not Found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    throw p1
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->onReceivedSizes()V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public final onReceivedSizes()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iput-wide v2, v1, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iput-wide v4, v1, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "total_size_key"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "total_used_size_key"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v3, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iput-wide v3, v2, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mTotalSizeBytes:J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v4, v3, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->handleResult(Landroid/util/SparseArray;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mIsVisible:Z

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selected_storage_entry_key"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    iput-boolean v0, p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mIsVisible:Z

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->hasCachedSizeInfo()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v3, v3, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-wide v3, p1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalUsedSize:J

    iput-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    iget-wide v3, p1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalSize:J

    iput-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->hasCachedSizeInfo()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->maybeSetLoading(Z)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment;I)V

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1, v0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment;I)V

    invoke-virtual {p1, v2, v1, v0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    :goto_2
    return-void
.end method

.method public setPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method

.method public setStorageResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    return-void
.end method
