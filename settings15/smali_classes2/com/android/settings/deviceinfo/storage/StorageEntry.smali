.class public final Lcom/android/settings/deviceinfo/storage/StorageEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

.field public final mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

.field public final mVolumeInfo:Landroid/os/storage/VolumeInfo;

.field public final mVolumeInfoDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f142d62

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const-class v0, Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    const-class v0, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/DiskInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/VolumeRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 3

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const-string v2, "private"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0, p1}, Landroid/os/storage/DiskInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeRecord;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDiskId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFsUuid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->hashCode()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isDefaultInternalStorage()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "private"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final isDiskInfoUnsupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMounted()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isPrivate()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final isVolumeInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVolumeRecordMissed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mUnsupportedDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mMissingVolumeRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfoDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
