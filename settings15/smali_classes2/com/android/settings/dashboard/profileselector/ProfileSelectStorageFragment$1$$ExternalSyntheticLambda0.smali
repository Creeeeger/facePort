.class public final synthetic Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/VolumeRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Landroid/os/storage/VolumeRecord;

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
