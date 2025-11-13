.class public final Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContext:Landroid/content/Context;

.field public final mDescription:Ljava/lang/String;

.field public final mStorageManager:Landroid/os/storage/StorageManager;

.field public final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    :try_start_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142d9c

    invoke-static {p1, v1, p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to unmount "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageUtils"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142d9b

    invoke-static {p1, v1, p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142d7f

    invoke-static {p1, v1, p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to mount "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageUtils"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;->mDescription:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142d7e

    invoke-static {p1, v1, p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
