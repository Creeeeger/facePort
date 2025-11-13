.class public final Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onLoaderReset$com$android$settings$deviceinfo$StorageCategoryFragment$IconLoaderCallbacks(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method

.method private final onLoaderReset$com$android$settings$deviceinfo$StorageCategoryFragment$VolumeSizeCallbacks(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2

    iget p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    new-instance v1, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V

    return-object v1

    :pswitch_0
    new-instance p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;)V

    invoke-direct {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    check-cast p2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->onReceivedSizes()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->mNonCurrentUsers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$IconLoaderCallbacks;->$r8$classId:I

    return-void
.end method
