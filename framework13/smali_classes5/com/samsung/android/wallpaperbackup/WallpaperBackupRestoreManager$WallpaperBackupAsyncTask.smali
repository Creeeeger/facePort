.class Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;
.super Landroid/os/AsyncTask;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperBackupAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/ArrayList;",
        "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1336
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private blacklist backupWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 3
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1386
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1419
    return v1

    .line 1397
    :sswitch_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_sub_display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_video_thumb.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1399
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    .line 1407
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1408
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1407
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1411
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1412
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1411
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1415
    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1415
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1389
    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1390
    return v1

    .line 1393
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist backupXml(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1423
    if-nez p1, :cond_0

    .line 1424
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backupXml: Cannot create backup xml file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void

    .line 1428
    :cond_0
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;-><init>()V

    .line 1430
    .local v0, "wallpaperUser":Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v1

    .line 1431
    .local v1, "wallpaperType":I
    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWpType(I)V

    .line 1432
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v2, :cond_1

    .line 1433
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaper_sub_display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 1438
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    .line 1440
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTiltValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    .line 1441
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1442
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTransparency(I)V

    .line 1446
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    .line 1449
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1450
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, "deviceType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1452
    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1453
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setOrientation(I)V

    .line 1458
    .end local v2    # "deviceType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1459
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    .line 1462
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1463
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setUri(Landroid/net/Uri;)V

    .line 1466
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getExternalParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1467
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getExternalParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setExternalParams(Ljava/lang/String;)V

    .line 1470
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCropHint()Landroid/graphics/Rect;

    move-result-object v2

    .line 1471
    .local v2, "cropHint":Landroid/graphics/Rect;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1472
    new-instance v3, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    .line 1473
    .local v3, "wallpaperData":Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    .line 1474
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    .line 1475
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    .line 1476
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    .line 1477
    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWallpaperData(Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;)V

    .line 1480
    .end local v3    # "wallpaperData":Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    :cond_8
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->-$$Nest$mgetXmlFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .local v3, "xmlFile":Ljava/io/File;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/samsung/android/wallpaperbackup/GenerateXML;->generateXML(Ljava/io/File;ILcom/samsung/android/wallpaperbackup/WallpaperUser;)V

    .line 1482
    return-void
.end method

.method private blacklist cleanupFiles(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 5
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->-$$Nest$mgetXmlFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "xmlPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->deleteFile(Ljava/lang/String;)V

    .line 1489
    invoke-static {v1}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->deleteFile(Ljava/lang/String;)V

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->-$$Nest$mgetOriginalFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1494
    .local v2, "originalFilePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBasePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->-$$Nest$mgetOriginalXmlFilePath(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, "originalXmlPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->deleteFile(Ljava/lang/String;)V

    .line 1497
    invoke-static {v3}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->deleteFile(Ljava/lang/String;)V

    .line 1498
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1336
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "helpers"    # [Ljava/util/ArrayList;

    .line 1339
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1341
    .local v1, "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1342
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1343
    .local v3, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->cleanupFiles(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    .line 1345
    const/4 v4, 0x0

    .line 1346
    .local v4, "backupSuccess":Z
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->canBackup()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1347
    nop

    .line 1348
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1350
    const/4 v4, 0x1

    goto :goto_1

    .line 1352
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->backupWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v4

    .line 1356
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 1357
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->backupXml(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    .line 1358
    sget-object v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v3, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    goto :goto_2

    .line 1360
    :cond_2
    sget-object v5, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v3, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 1363
    :goto_2
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    aput-object v3, v5, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 1341
    .end local v3    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    .end local v4    # "backupSuccess":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1336
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;",
            ">;)V"
        }
    .end annotation

    .line 1382
    .local p1, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$smresponse(Ljava/util/ArrayList;)V

    .line 1383
    return-void
.end method

.method protected varargs blacklist onProgressUpdate([Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 4
    .param p1, "helpers"    # [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1372
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 1373
    .local v0, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    .end local v0    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    goto :goto_0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected bridge synthetic whitelist onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1336
    check-cast p1, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBackupAsyncTask;->onProgressUpdate([Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    return-void
.end method
