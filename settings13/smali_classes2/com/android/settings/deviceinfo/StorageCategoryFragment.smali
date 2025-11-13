.class public Lcom/android/settings/deviceinfo/StorageCategoryFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageCategoryFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageCategoryFragment$VolumeSizeCallbacks;,
        Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAppsResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadedFromCache:Z

.field private mIsWorkProfile:Z

.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mSecondaryUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field private mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CkniPzAwAWbcTOQ2I9v6wOALGsI(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->lambda$setSecondaryUsersVisible$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D1dlYIobIZ-U_SPkAwS7FpLuIM4(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->lambda$setSecondaryUsersVisible$0(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecondaryUsers(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedStorageEntry(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageManager(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)Landroid/os/storage/StorageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStorageInfo(Lcom/android/settings/deviceinfo/StorageCategoryFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$monReceivedSizes(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->onReceivedSizes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private isQuotaSupported()Z
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setSecondaryUsersVisible$0(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 354
    instance-of p0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    return p0
.end method

.method private static synthetic lambda$setSecondaryUsersVisible$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    .locals 0

    .line 355
    check-cast p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    return-object p0
.end method

.method private onReceivedSizes()V
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v5, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v3, v5

    .line 228
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v5, v5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v5, v5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 233
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->cacheTotalSizeAndTotalUsedSize(JJ)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 235
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 236
    instance-of v4, v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    if-eqz v4, :cond_2

    .line 237
    check-cast v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    .line 238
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setTotalSize(J)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 244
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->setSecondaryUsersVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setSecondaryUsersVisible(Z)V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 354
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 355
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 356
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setPreferenceGroupVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 283
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 284
    instance-of v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    if-eqz v2, :cond_0

    .line 285
    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    .line 287
    invoke-interface {v1, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;->handleResult(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 266
    new-instance v8, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    new-instance v6, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v6, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mIsWorkProfile:Z

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 268
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mIsWorkProfile:Z

    invoke-static {p1, v1, v2}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSecondaryUsers:Ljava/util/List;

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StorageCategoryFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 259
    sget p0, Lcom/android/settings/R$xml;->storage_category_fragment:I

    return p0
.end method

.method public getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0

    .line 315
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

    .line 325
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    return-object p0
.end method

.method public maybeSetLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 340
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

    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 176
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mIsWorkProfile:Z

    .line 179
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getCurrentUserId(Landroid/os/UserManager;Z)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    .line 180
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 184
    const-class p1, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;

    .line 186
    iget p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/ManageStoragePreferenceController;->setUserId(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
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

    .line 150
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 152
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 153
    throw p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 296
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    .line 305
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 306
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->onReceivedSizes()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mIsLoadedFromCache:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mIsLoadedFromCache:Z

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    const-string/jumbo v1, "selected_storage_entry_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 5

    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 98
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->setSecondaryUsersVisible(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->hasCachedSizeInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-wide v3, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalUsedSize:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-wide v3, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->totalSize:J

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 121
    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->hasCachedSizeInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->isQuotaSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->maybeSetLoading(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x2

    new-instance v2, Lcom/android/settings/deviceinfo/StorageCategoryFragment$VolumeSizeCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)V

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v2, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_1

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    :goto_1
    return-void
.end method

.method public setPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    .line 320
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

    .line 330
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mAppsResult:Landroid/util/SparseArray;

    return-void
.end method
