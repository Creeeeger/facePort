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

.field blacklist mContext:Landroid/content/Context;

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

    .line 410
    const-class v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "basePath"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I
    .param p6, "saveKey"    # Ljava/lang/String;
    .param p7, "sessionTime"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    .line 463
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    .line 465
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 466
    const-string v0, "BACKUP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    .line 468
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperBNRHelper: Set backup case true."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iput p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    .line 473
    iput-object p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    .line 475
    iput-object p7, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSessionTime:Ljava/lang/String;

    .line 476
    iput-object p8, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSource:Ljava/lang/String;

    .line 477
    iput p5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    .line 478
    if-ne p5, v1, :cond_1

    move-object v0, p6

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    .line 480
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
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

    .line 486
    :cond_2
    and-int/lit8 v0, p3, 0x3c

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    .line 487
    and-int/lit8 v0, p3, 0x3

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    .line 489
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setSettingsName()V

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-eqz v0, :cond_3

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createBackupInfo()V

    goto :goto_1

    .line 496
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createRestoreInfo()V

    .line 499
    :goto_1
    return-void
.end method

.method private blacklist createBackupInfo()V
    .locals 9

    .line 556
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->isWallpaperDataExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
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

    .line 558
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

    .line 559
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    .line 565
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v6, 0x20

    if-eq v0, v6, :cond_2

    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    if-ne v0, v1, :cond_3

    .line 569
    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    goto :goto_1

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    .line 575
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v6}, Landroid/app/WallpaperManager;->isWallpaperBackupAllowed(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    .line 578
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    .line 583
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v0

    const-string/jumbo v3, "tablet"

    const-string v6, "folder"

    if-eqz v0, :cond_6

    .line 584
    iput-object v6, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    goto :goto_3

    .line 585
    :cond_6
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    goto :goto_3

    .line 588
    :cond_7
    const-string/jumbo v0, "phone"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    .line 592
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->canBackup()Z

    move-result v0

    if-nez v0, :cond_8

    .line 593
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v7, "createBackupInfo: Not allowed to backup wallpaper"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    if-eqz v0, :cond_9

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createBackupInfoDownloadedTheme()V

    goto/16 :goto_5

    .line 600
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    .line 604
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v5, :cond_a

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    if-eq v0, v1, :cond_a

    .line 605
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 606
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_a

    .line 607
    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 608
    .local v1, "gyroSensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_a

    .line 609
    iget-object v7, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_tilt_status"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    .line 615
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v1    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    move-result-object v0

    .line 616
    .local v0, "extrasBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_b

    .line 617
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    .line 621
    :cond_b
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    sparse-switch v1, :sswitch_data_0

    .line 665
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

    .line 641
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    .line 642
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    if-ne v1, v2, :cond_e

    .line 643
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 644
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    goto/16 :goto_5

    .line 657
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 658
    .local v1, "gifUri":Landroid/net/Uri;
    if-eqz v1, :cond_e

    .line 659
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    .line 660
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    goto/16 :goto_5

    .line 649
    .end local v1    # "gifUri":Landroid/net/Uri;
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 650
    .local v1, "customPackUri":Landroid/net/Uri;
    if-eqz v1, :cond_e

    .line 651
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    .line 652
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

    .line 623
    .end local v1    # "customPackUri":Landroid/net/Uri;
    :sswitch_3
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->isHomeAndLockPaired(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 624
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    or-int/2addr v2, v5

    invoke-virtual {v1, v2, v5}, Landroid/app/WallpaperManager;->getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_4

    .line 626
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2, v5}, Landroid/app/WallpaperManager;->getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 628
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    .line 631
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 632
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 633
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 634
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iget-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    .line 669
    .end local v0    # "extrasBundle":Landroid/os/Bundle;
    :cond_e
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist createBackupInfoDownloadedTheme()V
    .locals 2

    .line 522
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 540
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    .line 541
    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    .line 537
    goto :goto_0

    .line 544
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    .line 545
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 532
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    .line 533
    goto :goto_0

    .line 524
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    .line 527
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    .line 528
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->extractPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    .line 529
    nop

    .line 552
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
    .locals 7

    .line 672
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlParser()Lcom/samsung/android/wallpaperbackup/XmlParser;

    move-result-object v0

    .line 673
    .local v0, "xmlParser":Lcom/samsung/android/wallpaperbackup/XmlParser;
    if-nez v0, :cond_0

    .line 674
    const-string v1, "createRestoreInfo: xmlParser is null."

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 675
    return-void

    .line 678
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wallpaperbackup/XmlParser;->getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    move-result-object v1

    .line 680
    .local v1, "wallpaperUser":Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    if-nez v1, :cond_1

    .line 681
    const-string v2, "createRestoreInfo: Cannot create WallpaperUser for restoring."

    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 682
    return-void

    .line 685
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 686
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWpType()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    .line 687
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mRotation:I

    .line 688
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTiltSettingValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    .line 689
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    .line 690
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getExternalParams()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    .line 691
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v4

    .line 692
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    .line 695
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    .line 698
    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/4 v3, 0x4

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 699
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 700
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    const-string v4, "folder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v4, "tablet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 701
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    .line 707
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTransparency()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    .line 710
    if-eqz v2, :cond_6

    .line 711
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    .line 713
    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 715
    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 716
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 717
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    .line 719
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_1
    goto :goto_3

    .line 727
    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    .line 730
    iget v4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 732
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createVideoFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 735
    :cond_7
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_8

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 738
    const-string v3, "_6.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 739
    const-string v4, "_2.mp4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 741
    :cond_8
    :goto_2
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

    .line 742
    nop

    .line 748
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_3
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

    .line 1195
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    .line 1196
    .local v0, "which":I
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1198
    const/4 v0, 0x2

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    const-string v2, "mp4"

    const-string v3, "."

    if-eqz v1, :cond_1

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video_wallpaper_"

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

    .line 1205
    :cond_1
    sget-object v1, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v4, "createVideoFileName: context is null!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video_wallpaper_0_"

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
    .param p1, "uri"    # Landroid/net/Uri;

    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    const-string v1, "homewallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "splitStr":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    aget-object v2, v1, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "finals":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 512
    aget-object v3, v2, v3

    return-object v3

    .line 518
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "splitStr":[Ljava/lang/String;
    .end local v2    # "finals":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fullPath"    # Ljava/lang/String;

    .line 1211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    const/4 v0, 0x0

    return-object v0

    .line 1215
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
    .param p1, "wallpaperUser"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 1067
    const-string v0, ""

    .line 1069
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    return-object v0

    .line 1076
    :cond_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    sparse-switch v1, :sswitch_data_0

    .line 1091
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

    .line 1094
    const/4 v1, 0x0

    return-object v1

    .line 1082
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1088
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getGifPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1085
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMultipackPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1079
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getImagePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getGifPath()Ljava/lang/String;
    .locals 5

    .line 1099
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const-string v1, "cover_wallpaper.gif"

    const/4 v2, 0x1

    const-string v3, "getGifPath: Invalid which for gif wallpaper. mWhich = "

    if-eqz v0, :cond_1

    .line 1100
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v2, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_sub_display"

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

    .line 1103
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

    .line 1105
    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_3

    .line 1106
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v2, :cond_2

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_virtual_display"

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

    .line 1109
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

    .line 1112
    :cond_3
    sget-object v0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "getGifPath: NOT SUPPORTED YET!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getImagePath()Ljava/lang/String;
    .locals 3

    .line 1119
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1120
    const-string v0, "lockscreen_wallpaper.jpg"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "wallpaper.png"

    .line 1122
    .local v0, "imageFileName":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1136
    const/4 v1, 0x0

    return-object v1

    .line 1133
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_virtual_display"

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

    .line 1124
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_sub_display"

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

    .line 1130
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_dex"

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

    .line 1127
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper"

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

    .line 1140
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const-string v1, "custompack/"

    sparse-switch v0, :sswitch_data_0

    .line 1155
    const/4 v0, 0x0

    return-object v0

    .line 1151
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_virtual_display"

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

    .line 1142
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_sub_display"

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

    .line 1148
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper_dex"

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

    .line 1145
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpaper"

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

    .line 1002
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const-string v1, "lockscreen_wallpaper.jpg"

    const-string/jumbo v2, "wallpaper.png"

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 1013
    const/4 v0, 0x0

    return-object v0

    .line 1004
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wallpaper_sub_display_original/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
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

    .line 1004
    return-object v0

    .line 1009
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wallpaper_original/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1010
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

    .line 1009
    return-object v0

    nop

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

    .line 1018
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 1030
    const/4 v0, 0x0

    return-object v0

    .line 1027
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "virtual_display_wallpaper.xml"

    :goto_0
    return-object v0

    .line 1020
    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "sub_display_lock_wallpaper_original.xml"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "sub_display_wallpaper_original.xml"

    :goto_1
    return-object v0

    .line 1024
    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    const-string v0, "lockscreen_original.xml"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "wallpaper_original.xml"

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

    .line 1234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1235
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1236
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1250
    :sswitch_0
    const-string v1, "VIRTUAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1242
    :sswitch_1
    const-string v1, "SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1243
    goto :goto_0

    .line 1246
    :sswitch_2
    const-string v1, "DEX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1247
    goto :goto_0

    .line 1238
    :sswitch_3
    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1239
    nop

    .line 1254
    :goto_0
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1259
    :pswitch_0
    const-string v1, " | LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1256
    :pswitch_1
    const-string v1, " | HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1257
    nop

    .line 1263
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1264
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

    .line 1178
    const-string v0, ""

    .line 1181
    .local v0, "returnFileName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "strPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1185
    .end local v1    # "strPath":Ljava/lang/String;
    goto :goto_0

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1187
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->createVideoFileName()Ljava/lang/String;

    move-result-object v0

    .line 1191
    :cond_0
    return-object v0
.end method

.method private blacklist getVideoPath()Ljava/lang/String;
    .locals 2

    .line 1159
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 1174
    const/4 v0, 0x0

    return-object v0

    .line 1170
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper_virtual_display"

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

    .line 1161
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper_sub_display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1167
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper_dex"

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

    .line 1164
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper"

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

    .line 1035
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 1063
    const/4 v0, 0x0

    return-object v0

    .line 1040
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "virtual_display_wallpaper.xml"

    :goto_0
    return-object v0

    .line 1037
    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "sub_display_lock_wallpaper.xml"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "sub_display_wallpaper.xml"

    :goto_1
    return-object v0

    .line 1046
    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    const-string v0, "dex_lock_wallpaper.xml"

    goto :goto_2

    :cond_2
    const-string v0, "dex_wallpaper.xml"

    .line 1047
    .local v0, "path":Ljava/lang/String;
    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-nez v2, :cond_3

    .line 1051
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

    .line 1052
    .local v2, "checkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v3, v1, :cond_3

    .line 1053
    const-string v1, "dex_wallpaper.xml"

    .line 1054
    .local v1, "complimantaryPath":Ljava/lang/String;
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

    .line 1055
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1056
    move-object v0, v1

    .line 1060
    .end local v1    # "complimantaryPath":Ljava/lang/String;
    .end local v2    # "checkFile":Ljava/io/File;
    :cond_3
    return-object v0

    .line 1043
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_3
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_4

    const-string v0, "lockscreen.xml"

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "wallpaper.xml"

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

    .line 1220
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOriginalXmlFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
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

    .line 1224
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

    .line 1226
    .end local v0    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/Exception;
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

    .line 1228
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

    .line 1229
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isLiveWallpaper()Z
    .locals 2

    .line 782
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->isLiveWallpaper(I)Z

    move-result v0

    return v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper(I)Z

    move-result v0

    return v0
.end method

.method private blacklist setSettingsName()V
    .locals 2

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    .line 753
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 762
    :sswitch_0
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_0

    .line 763
    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    .line 765
    :cond_0
    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    .line 767
    goto :goto_0

    .line 769
    :sswitch_1
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    .line 770
    const-string v0, "dex_lockscreen_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    .line 772
    :cond_1
    const-string v0, "dex_system_wallpaper_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    .line 774
    goto :goto_0

    .line 755
    :sswitch_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_2

    .line 756
    const-string v0, "lockscreen_wallpaper_transparent"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    goto :goto_0

    .line 758
    :cond_2
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    .line 760
    nop

    .line 779
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
    .param p1, "error"    # Ljava/lang/String;

    .line 944
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_0
    return-void
.end method

.method public blacklist canBackup()Z
    .locals 4

    .line 790
    invoke-direct {p0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isLiveWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "Live wallpaper is applied."

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 792
    return v1

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsCustomWallpaper:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 797
    .local v3, "canBackup":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupAllowed:Z

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    .line 804
    .end local v3    # "canBackup":Z
    .local v0, "canBackup":Z
    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_4

    .line 805
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 806
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "stringUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 808
    const-string v2, "multipack://com.samsung.custompack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 809
    const/4 v0, 0x1

    .line 815
    .end local v1    # "stringUri":Ljava/lang/String;
    :cond_4
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

    .line 816
    return v0
.end method

.method public blacklist close()V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 1269
    return-void
.end method

.method public blacklist getBasePath()Ljava/lang/String;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCropHint()Landroid/graphics/Rect;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mCropHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getDeviceType()Ljava/lang/String;
    .locals 1

    .line 824
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

    .line 940
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExternalParams()Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mExternalParams:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSaveKey()Ljava/lang/String;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFileSaveType()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveType:I

    return v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 836
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mMode:I

    return v0
.end method

.method public blacklist getOrientation()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mOrientation:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResponseAction()Ljava/lang/String;
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mAction:Ljava/lang/String;

    return-object v0

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 873
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_1

    .line 874
    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    return-object v0

    .line 876
    :cond_1
    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    return-object v0

    .line 879
    :cond_2
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    if-ne v0, v1, :cond_3

    .line 880
    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    return-object v0

    .line 882
    :cond_3
    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    return-object v0
.end method

.method public blacklist getResultCode()Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v0
.end method

.method public blacklist getRotationValue()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mRotation:I

    return v0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    .line 928
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    return v0
.end method

.method public blacklist getSessionTime()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSessionTime:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSettingsName()Ljava/lang/String;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSettingsName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSource()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceFilePath()Ljava/lang/String;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
    .locals 3
    .param p1, "user"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    const/4 v0, 0x0

    .line 959
    .local v0, "needTocheckOriginalFile":Z
    if-nez p1, :cond_0

    .line 960
    const/4 v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWpType()I

    move-result v1

    .line 963
    .local v1, "type":I
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 964
    :cond_1
    const/4 v0, 0x1

    .line 968
    .end local v1    # "type":I
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 969
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

    .line 970
    .local v1, "originalFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 971
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSourceFilePath:Ljava/lang/String;

    .line 972
    return-object v1

    .line 977
    .end local v1    # "originalFilePath":Ljava/lang/String;
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

    .line 985
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTargetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTiltValue()I
    .locals 1

    .line 852
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mTiltValue:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mType:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getWallpaperType()I
    .locals 1

    .line 848
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperType:I

    return v0
.end method

.method public blacklist getWallpaperUser()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public blacklist getWhich()I
    .locals 1

    .line 832
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    return v0
.end method

.method public blacklist getXmlPath()Ljava/lang/String;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mXmlPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isBackupCase()Z
    .locals 1

    .line 820
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    return v0
.end method

.method public blacklist isDownloadedThemeWallpaper()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsDownloadedThemeWallpaper:Z

    return v0
.end method

.method public blacklist setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 0
    .param p1, "code"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 892
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResultCode:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    .line 893
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 1273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1275
    .local v0, "buffer":Ljava/lang/StringBuffer;
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

    .line 1276
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

    .line 1277
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

    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1280
    iget-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mIsBackupCase:Z

    if-eqz v1, :cond_0

    .line 1281
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

    .line 1282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1284
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

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1290
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

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mDeviceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
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

    .line 1300
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

    .line 1301
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

    .line 1302
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

    .line 1303
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

    .line 1304
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

    .line 1305
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

    .line 1306
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

    .line 1307
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

    .line 1308
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

    .line 1309
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

    .line 1310
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

    .line 1311
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

    .line 1312
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

    .line 1313
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

    .line 1314
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

    .line 1315
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

    .line 1316
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

    .line 1317
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

    .line 1318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1320
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWallpaperUser:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    if-eqz v1, :cond_3

    .line 1321
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

    .line 1324
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mErrorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1325
    const-string v1, "\n\t\tmErrorDescriptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
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

    .line 1327
    .local v2, "error":Ljava/lang/String;
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

    .line 1328
    .end local v2    # "error":Ljava/lang/String;
    goto :goto_0

    .line 1331
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
