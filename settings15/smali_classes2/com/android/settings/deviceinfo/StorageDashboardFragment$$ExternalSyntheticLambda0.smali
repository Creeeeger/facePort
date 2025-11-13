.class public final synthetic Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi$4()V

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/DiskInitFragment;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
