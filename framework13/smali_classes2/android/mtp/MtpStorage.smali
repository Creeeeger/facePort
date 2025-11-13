.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final blacklist mIsHostWindows:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMaxFileSize:J

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private final greylist-max-o mRemovable:Z

.field private final greylist-max-o mStorageId:I

.field private final blacklist mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V
    .locals 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "storageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p3, "isHostWindows":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 47
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    .line 50
    const v0, 0x10001

    if-ne p2, v0, :cond_0

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    const v0, 0x10002

    if-ne p2, v0, :cond_1

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public final greylist-max-o getDescription()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getMaxFileSize()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final greylist getPath()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist getStorageId()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public blacklist getVolumeName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHostWindows()Z
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isRemovable()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method
