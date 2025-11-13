.class Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperBNRHelper"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mAction:Ljava/lang/String;

.field blacklist mBasePath:Ljava/lang/String;

.field blacklist mComponentName:Ljava/lang/String;

.field blacklist mContext:Landroid/content/Context;

.field blacklist mCoverType:Ljava/lang/String;

.field blacklist mCropHint:Landroid/graphics/Rect;

.field blacklist mDescriptor:Landroid/os/ParcelFileDescriptor;

.field blacklist mDeviceType:Ljava/lang/String;

.field blacklist mErrorDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mExternalParams:Ljava/lang/String;

.field blacklist mFilePath:Ljava/lang/String;

.field blacklist mIsBackupAllowed:Z

.field blacklist mIsBackupCase:Z

.field blacklist mIsCustomWallpaper:Z

.field blacklist mIsDownloadedThemeWallpaper:Z

.field blacklist mIsHomeAndLockPaired:Z

.field blacklist mMode:I

.field blacklist mOrientation:I

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

.field blacklist mRotation:I

.field blacklist mSaveKey:Ljava/lang/String;

.field blacklist mSaveType:I

.field blacklist mSecurityLevel:I

.field blacklist mSessionTime:Ljava/lang/String;

.field blacklist mSettingsName:Ljava/lang/String;

.field blacklist mSource:Ljava/lang/String;

.field blacklist mSourceFilePath:Ljava/lang/String;

.field blacklist mTargetFilePath:Ljava/lang/String;

.field blacklist mTiltValue:I

.field blacklist mType:I

.field blacklist mUri:Landroid/net/Uri;

.field blacklist mWallpaperManager:Landroid/app/WallpaperManager;

.field blacklist mWallpaperType:I

.field blacklist mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

.field blacklist mWhich:I

.field blacklist mXmlPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mconvertToImageWallpaperForSCloud(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->convertToImageWallpaperForSCloud()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOriginalFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOriginalXmlFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetXmlFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "BACKUP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperBNRHelper: Set backup case true."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iput-object p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSessionTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSource:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    if-ne v0, v1, :cond_1

    move-object v0, p7

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    :cond_2
    and-int/lit8 v0, p4, 0x3c

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    and-int/lit8 v0, p4, 0x3

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    iput-object p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setSettingsName()V

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createBackupInfo()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createRestoreInfo()V

    :goto_1
    return-void
.end method

.method private blacklist convertToImageWallpaperForSCloud()V
    .locals 5

    const-string v0, "convertImageWallpaperForSCloud: Backup with Samsung cloud, change layered type to image"

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isHomeAndLockPaired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "representativeImageFile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v4, "representative file name is empty, try thumbnail file name and remove crop hints"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "thumbnailFile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager;->getWallpaperAssetFile(IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured getting representative file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", try hard-coding way.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    const-string v2, "thumbnail.jpg"

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v1, v4, v2}, Landroid/app/WallpaperManager;->getWallpaperAssetFile(IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    :goto_1
    return-void
.end method

.method private blacklist createBackupInfo()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->isWallpaperDataExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBackupInfo: WallpaperData for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperData for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v1, 0x10

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v5, 0x20

    if-eq v0, v5, :cond_2

    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v5}, Landroid/app/WallpaperManager;->isWallpaperBackupAllowed(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    const-string v2, "tablet"

    const-string v5, "folder"

    if-eqz v0, :cond_6

    iput-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v0, "phone"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    :goto_3
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_8

    const-string v0, "large_screen"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCoverType:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->canBackup()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v6, "createBackupInfo: Not allowed to backup wallpaper"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createBackupInfoDownloadedTheme()V

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v7, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    :cond_b
    iget v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBackupInfo: Unhandled wallpaper type, mWallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    if-ne v2, v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsHomeAndLockPaired:Z

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mComponentName:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_e

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_e

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/homewallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    goto :goto_5

    :pswitch_5
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_c

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    invoke-virtual {v1, v6}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    or-int/2addr v4, v6

    invoke-virtual {v1, v4, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v4, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsHomeAndLockPaired:Z

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_e

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist createBackupInfoDownloadedTheme()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->extractPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist createRestoreInfo()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlParser()Lcom/samsung/android/wallpaperbackup/XmlParser;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "createRestoreInfo: xmlParser is null."

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wallpaperbackup/XmlParser;->getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "createRestoreInfo: Cannot create WallpaperUser for restoring."

    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWpType()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mRotation:I

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTiltSettingValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getExternalParams()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getIsHomeAndLockPaired()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsHomeAndLockPaired:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getCoverType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCoverType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v2

    const-string v3, "folder"

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "createRestoreInfo: Cannot identify device type."

    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    const v7, 0x3f3d70a4    # 0.74f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createRestoreInfo: Consider backup device is table. ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTransparency()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    :cond_7
    :goto_2
    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createVideoFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v3

    if-ne v3, v4, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    const-string v3, "_6.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "_2.mp4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user_de/0/com.android.systemui/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    nop

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist createVideoFileName()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    const-string v2, "mp4"

    const-string v3, "."

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_wallpaper_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v4, "createVideoFileName: context is null!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_wallpaper_0_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist extractPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "homewallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v2, v1, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v3, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractPackageName: uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath: mWallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getLiveWallpaperPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getGifPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMultipackPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getImagePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getGifPath()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const-string v1, "cover_wallpaper.gif"

    const/4 v2, 0x1

    const-string v3, "getGifPath: Invalid which for gif wallpaper. mWhich = "

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_sub_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_virtual_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "getGifPath: NOT SUPPORTED YET!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getImagePath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "lockscreen_wallpaper.jpg"

    goto :goto_0

    :cond_0
    const-string v0, "wallpaper.png"

    :goto_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_virtual_display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_sub_display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getLiveWallpaperPath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const-string v1, "wallpaper_assets/"

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_virtual_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_sub_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_dex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getMultipackPath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const-string v1, "custompack/"

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_virtual_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_sub_display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper_dex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getOriginalFilePath()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const-string v1, "lockscreen_wallpaper.jpg"

    const-string v2, "wallpaper.png"

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wallpaper_sub_display_original/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wallpaper_original/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getOriginalXmlFilePath()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "virtual_display_wallpaper.xml"

    :goto_0
    return-object v0

    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string v0, "sub_display_lock_wallpaper_original.xml"

    goto :goto_1

    :cond_1
    const-string v0, "sub_display_wallpaper_original.xml"

    :goto_1
    return-object v0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    const-string v0, "lockscreen_original.xml"

    goto :goto_2

    :cond_2
    const-string v0, "wallpaper_original.xml"

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getStringWhich()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "VIRTUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_1
    const-string v1, "SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const-string v1, "DEX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    nop

    :goto_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, " | LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const-string v1, " | HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    nop

    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getVideoFileName()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createVideoFileName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private blacklist getVideoPath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaper_virtual_display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaper_sub_display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaper_dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getXmlFilePath()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "virtual_display_wallpaper.xml"

    :goto_0
    return-object v0

    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string v0, "sub_display_lock_wallpaper.xml"

    goto :goto_1

    :cond_1
    const-string v0, "sub_display_wallpaper.xml"

    :goto_1
    return-object v0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    const-string v0, "dex_lock_wallpaper.xml"

    goto :goto_2

    :cond_2
    const-string v0, "dex_wallpaper.xml"

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v3, v1, :cond_3

    const-string v1, "dex_wallpaper.xml"

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0

    :sswitch_3
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_4

    const-string v0, "lockscreen.xml"

    goto :goto_3

    :cond_4
    const-string v0, "wallpaper.xml"

    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getXmlParser()Lcom/samsung/android/wallpaperbackup/XmlParser;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/wallpaperbackup/XmlParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/wallpaperbackup/XmlParser;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/wallpaperbackup/XmlParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/wallpaperbackup/XmlParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXmlParser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isLiveWallpaper()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist setSettingsName()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    const-string v0, "sub_display_lockscreen_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "sub_display_system_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string v0, "dex_lockscreen_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "dex_system_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    const-string v0, "lockscreen_wallpaper_transparent"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist addErrorDescription(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist canBackup()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x249f0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isHomeAndLockPaired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    or-int/2addr v1, v2

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperManager;->getWallpaperAssets(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperManager;->getWallpaperAssets(II)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    if-nez v1, :cond_3

    const-string v1, "Ignore mIsBackupAllowed = false in case custom live wallpaper."

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "Live wallpaper is applied with NO asset files."

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Live wallpaper is applied."

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    return v3

    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    move v0, v2

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "multipack://com.samsung.custompack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canBackup: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canBackup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method public blacklist getBasePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCoverType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCoverType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCropHint()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getErrorDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExternalParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSaveKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSaveType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveType:I

    return v0
.end method

.method public blacklist getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    return v0
.end method

.method public blacklist getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResponseAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    return-object v0

    :cond_1
    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    return-object v0

    :cond_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_3

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    return-object v0

    :cond_3
    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    return-object v0
.end method

.method public blacklist getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method

.method public blacklist getRotationValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mRotation:I

    return v0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    return v0
.end method

.method public blacklist getSessionTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSessionTime:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWpType()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getTargetFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTiltValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method public blacklist getWallpaperType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    return v0
.end method

.method public blacklist getWallpaperUser()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public blacklist getWhich()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    return v0
.end method

.method public blacklist getXmlPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mXmlPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isBackupCase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    return v0
.end method

.method public blacklist isDownloadedThemeWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    return v0
.end method

.method public blacklist isHomeAndLockPaired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsHomeAndLockPaired:Z

    return v0
.end method

.method public blacklist setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-void
.end method

.method public blacklist setWhich(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    and-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n\tWallpaperBnRHelper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmWhich = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getStringWhich()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmWallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmIsBackupCase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmIsCustomWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmIsBackupAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmIsDownloadedThemeWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmDeviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSaveType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSecurityLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSaveKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSessionTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmTiltValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmCropHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmBasePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmDescriptor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSourceFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmTargetFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmXmlPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mXmlPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmSettingsName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmExternalParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmIsHomeAndLockPaired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsHomeAndLockPaired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmComponentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mComponentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\tmResultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmWallpaperUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-virtual {v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "\n\t\tmErrorDescriptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\t\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
