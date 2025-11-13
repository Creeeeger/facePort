.class public final Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iget-object v0, p1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    :cond_0
    return-void
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    :cond_0
    return-void
.end method
