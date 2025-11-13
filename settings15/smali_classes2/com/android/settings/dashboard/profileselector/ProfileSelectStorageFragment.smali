.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFragments:[Landroidx/fragment/app/Fragment;

.field public mIsLoadedFromCache:Z

.field public mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

.field public mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field public mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field public final mStorageEntries:Ljava/util/List;

.field public final mStorageEventListener:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

.field public mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

    return-void
.end method


# virtual methods
.method public final getFragments()[Landroidx/fragment/app/Fragment;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->getFragments(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$FragmentConstructor;)[Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProfileSelStorageFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7c7

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17026f

    return p0
.end method

.method public initializeOptionsMenu(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    const-class p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setOnItemSelectedListener(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;)V

    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v3, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    const-string v4, "private"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    goto :goto_2

    :cond_2
    const-string v1, "selected_storage_entry_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->hasCachedSizeInfo()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mIsLoadedFromCache:Z

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getAllStorageEntries(Landroid/content/Context;Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mIsLoadedFromCache:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mIsLoadedFromCache:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getAllStorageEntries(Landroid/content/Context;Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selected_storage_entry_key"

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final refreshUi$3()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setStorageEntries(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    iget-object v4, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong fragment type to refreshUi"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iput-object v1, v0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->updateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
