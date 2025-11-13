.class public Lcom/samsung/android/security/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final blacklist LOCAL_LOGD:Z

.field private static final blacklist LOCAL_LOGE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static blacklist mExternalSDvolFsUuid:Ljava/lang/String;

.field private static blacklist mExternalSDvolId:Ljava/lang/String;

.field private static blacklist mExternalSDvolState:Ljava/lang/String;

.field private static blacklist mExternalSDvolUsedSize:J

.field private static blacklist mSavedUserId:I

.field private static blacklist mUserDiff:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMountService:Landroid/os/storage/IStorageManager;

.field private blacklist mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 36
    sput v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private blacklist getVolumeInfo()Landroid/os/storage/VolumeInfo;
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 52
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 56
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 57
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    return-object v3

    .line 61
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void
.end method

.method private static blacklist logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getActivePasswordQuality()I
    .locals 2

    .line 130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public blacklist getCurrentUserID()I
    .locals 1

    .line 169
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    .line 205
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExternalSDvolId()Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExternalSDvolState()Ljava/lang/String;
    .locals 1

    .line 213
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExternalSDvolUsedSize()J
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExternalSDvolUsedSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 218
    sget-wide v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    return-wide v0
.end method

.method public blacklist getExternalSdPath()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyguardStoredPasswordQuality()I
    .locals 2

    .line 135
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public blacklist getMountService()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1

    .line 73
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    goto :goto_0

    .line 77
    :cond_0
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 80
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    return-object v0
.end method

.method public blacklist getSavedUserID()I
    .locals 1

    .line 185
    sget v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public blacklist getUserDiff()Z
    .locals 1

    .line 177
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public blacklist getVolumeState()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isExternalSDRemovable()Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSecure()Z
    .locals 2

    .line 140
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public blacklist mountVolume()Z
    .locals 2

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    const/4 v0, 0x1

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 160
    if-nez v0, :cond_0

    .line 161
    return v1

    .line 162
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 163
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_1
    return v1
.end method

.method public blacklist setExternalSDvolFsUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volFsUuid"    # Ljava/lang/String;

    .line 197
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public blacklist setExternalSDvolId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;

    .line 189
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public blacklist setExternalSDvolState(Ljava/lang/String;)V
    .locals 0
    .param p1, "volState"    # Ljava/lang/String;

    .line 209
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public blacklist setExternalSDvolUsedSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 201
    sput-wide p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolUsedSize:J

    .line 202
    return-void
.end method

.method public blacklist setSavedUserID(I)V
    .locals 0
    .param p1, "in"    # I

    .line 181
    sput p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 182
    return-void
.end method

.method public blacklist setUserDiff(Z)V
    .locals 0
    .param p1, "in"    # Z

    .line 173
    sput-boolean p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 174
    return-void
.end method

.method public blacklist unmountHiddenVolume()Z
    .locals 2

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    const/4 v0, 0x1

    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unmountVolume()Z
    .locals 2

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    const/4 v0, 0x1

    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    return v1
.end method
