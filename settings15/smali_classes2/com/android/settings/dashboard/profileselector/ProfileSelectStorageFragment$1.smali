.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

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

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

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

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    :cond_1
    return-void
.end method

.method public final onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object v0, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isVolumeRecordMissed(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object v0, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object v1, v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/storage/VolumeRecord;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 3

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

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x7

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p3, p3, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p3, p3, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    iput-object p2, p1, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :cond_4
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi$3()V

    :goto_0
    return-void
.end method
