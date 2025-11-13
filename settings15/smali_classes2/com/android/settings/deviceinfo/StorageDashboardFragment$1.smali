.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    :cond_1
    return-void
.end method

.method public final onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 0

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isDiskUnsupported(Landroid/os/storage/DiskInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    :cond_1
    return-void
.end method

.method public final onVolumeForgotten(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    new-instance v1, Landroid/os/storage/VolumeRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    :cond_1
    return-void
.end method

.method public final onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    sget-object v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isVolumeRecordMissed(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    throw v0
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p2

    const/4 p3, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, p3, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p3, 0x7

    if-eq p1, p3, :cond_1

    const/16 p3, 0x8

    if-eq p1, p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p3, p3, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p3, p3, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    new-instance v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iput-object p2, p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    :goto_2
    return-void
.end method
