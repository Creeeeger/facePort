.class Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;
.super Landroid/os/AsyncTask;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperRestoreAsyncTask"
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

    .line 1501
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private blacklist isPackageInstalled(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 3
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1985
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1987
    return v2

    .line 1991
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1992
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    const/4 v2, 0x1

    return v2

    .line 1994
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1995
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1998
    .end local v1    # "e":Ljava/lang/Exception;
    return v2
.end method

.method private blacklist isSourceFileValid(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 3
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1970
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1971
    const-string v0, "isSourceFileValid: Source file path is empty."

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1972
    return v1

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSourceFileValid: Source file not exist. path = <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1977
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1976
    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1978
    return v1

    .line 1981
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist requestResetEditInfo(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 1956
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1957
    .local v0, "param":Landroid/os/Bundle;
    const-string/jumbo v1, "which"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1958
    const-string/jumbo v1, "reset_edit_info"

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1959
    return-void
.end method

.method private blacklist restoreWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 3
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1601
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1602
    return v0

    .line 1605
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->isPackageInstalled(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1608
    const-string/jumbo v1, "restoreWallpaper: Package is not installed"

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1609
    return v0

    .line 1612
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->isSourceFileValid(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1613
    return v0

    .line 1617
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1649
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreWallpaper: Unhandled wallpaper type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1652
    return v0

    .line 1631
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setVideoWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1634
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setGifWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1646
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setAnimatedWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1637
    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 1638
    return v0

    .line 1640
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setMultipackWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1643
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setMotionWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1625
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setImageWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "param"    # Landroid/os/Bundle;

    .line 1962
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1963
    const-string v1, "content://com.samsung.android.app.dressroom.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1962
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setAnimatedWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 6
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1936
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1937
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1939
    return v1

    .line 1943
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1944
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    return v5

    .line 1946
    :catch_0
    move-exception v2

    .line 1947
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAnimatedWallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1952
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method private blacklist setCoverVideoWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 5
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1821
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1822
    .local v1, "param":Landroid/os/Bundle;
    const-string/jumbo v2, "which"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1823
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1824
    const-string/jumbo v2, "source_path"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v2, "crop_rect"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCropHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1826
    const-string v2, "key"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "custom_pack"

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1829
    .local v2, "resultBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1830
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1831
    const/4 v0, 0x1

    return v0

    .line 1836
    .end local v1    # "param":Landroid/os/Bundle;
    .end local v2    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 1834
    :catch_0
    move-exception v1

    .line 1835
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreWallpaper: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private blacklist setGifWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 5
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1842
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1843
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1844
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    .line 1846
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1848
    .local v0, "param":Landroid/os/Bundle;
    const-string/jumbo v3, "which"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1849
    const-string/jumbo v3, "type"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1850
    const-string/jumbo v3, "source_path"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v3, "key"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v3, "is_single_gif"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1854
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "custom_pack"

    invoke-direct {p0, v3, v4, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1855
    .local v3, "resultBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1856
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 1857
    return v2

    .line 1862
    .end local v0    # "param":Landroid/os/Bundle;
    .end local v3    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGifWallpaper: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1
.end method

.method private blacklist setImageWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 14
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1685
    .local v0, "startTime":J
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1686
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSecurityLevel()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v4

    .line 1685
    invoke-static {v2, v3, v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->getBitmapFromPath(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1687
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1689
    .local v3, "rotatedBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1690
    return v4

    .line 1694
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getRotationValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 1695
    move-object v3, v2

    goto :goto_0

    .line 1697
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v5

    .line 1698
    .local v12, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getRotationValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1700
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    move-object v5, v2

    move-object v10, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    .line 1701
    if-nez v3, :cond_2

    .line 1702
    const-string/jumbo v5, "setImageWallpaper: rotatedBitmap is null."

    invoke-virtual {p1, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1703
    return v4

    .line 1707
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCropHint()Landroid/graphics/Rect;

    move-result-object v5

    .line 1708
    .local v5, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1709
    const/4 v5, 0x0

    .line 1712
    :cond_3
    const/4 v6, 0x0

    .line 1713
    .local v6, "extrasBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getExternalParams()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .line 1714
    .local v12, "extrasStr":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1715
    invoke-static {v12}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v6, v7

    .line 1718
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 1719
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 1720
    .local v7, "deviceType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1721
    const-string v8, "folder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "tablet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1722
    :cond_5
    if-nez v6, :cond_6

    .line 1723
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v6, v8

    .line 1725
    :cond_6
    const-string/jumbo v8, "orientation"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getOrientation()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v6

    goto :goto_1

    .line 1730
    .end local v7    # "deviceType":Ljava/lang/String;
    :cond_7
    move-object v13, v6

    .end local v6    # "extrasBundle":Landroid/os/Bundle;
    .local v13, "extrasBundle":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    const/4 v9, 0x1

    .line 1731
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v10

    move-object v7, v3

    move-object v8, v5

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZILandroid/os/Bundle;)I

    move-result v6

    .line 1733
    .local v6, "result":I
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1734
    invoke-static {}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setImageWallpaper: Elapsed Time\t\t ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_8
    if-lez v6, :cond_a

    .line 1738
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_9

    .line 1739
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1740
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_9

    .line 1741
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v10

    invoke-virtual {v9, v7, v8, v10}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_9
    return v8

    .line 1749
    .end local v5    # "visibleRect":Landroid/graphics/Rect;
    .end local v6    # "result":I
    .end local v12    # "extrasStr":Ljava/lang/String;
    .end local v13    # "extrasBundle":Landroid/os/Bundle;
    :cond_a
    goto :goto_2

    .line 1746
    :catch_0
    move-exception v5

    .line 1747
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setImageWallpaper: Exception <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1751
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return v4
.end method

.method private blacklist setImageWallpaperDroom(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 6
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1657
    .local v0, "param":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v1

    const-string/jumbo v2, "which"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1659
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1660
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getRotationValue()I

    move-result v1

    const-string/jumbo v2, "rotation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1661
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCropHint()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "crop_rect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1663
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1665
    const/4 v1, 0x0

    .line 1666
    .local v1, "extrasBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getExternalParams()Ljava/lang/String;

    move-result-object v2

    .line 1667
    .local v2, "extrasStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1668
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1670
    :cond_0
    const-string v3, "extras"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1672
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "custom_pack"

    invoke-direct {p0, v3, v4, v0}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1673
    .local v3, "resultBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1674
    const-string/jumbo v5, "result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1675
    const/4 v4, 0x1

    return v4

    .line 1679
    :cond_1
    return v4
.end method

.method private blacklist setMotionWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 5
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1920
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1921
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1923
    return v1

    .line 1926
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1927
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;IZ)V

    .line 1929
    return v4

    .line 1932
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private blacklist setMultipackWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 6
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1872
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1873
    return v0

    .line 1876
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1877
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1878
    const-string/jumbo v2, "setMultipackWallpaper: uri is null."

    invoke-virtual {p1, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1879
    return v0

    .line 1882
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1883
    const-string/jumbo v2, "setMultipackWallpaper: uri sheme is not multipack."

    invoke-virtual {p1, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1884
    return v0

    .line 1888
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1889
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1890
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/WallpaperManager;->semSetUri(Landroid/net/Uri;ZII)V

    .line 1891
    return v3

    .line 1893
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1894
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1895
    .local v2, "param":Landroid/os/Bundle;
    const-string/jumbo v4, "uri"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1896
    const-string/jumbo v4, "which"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1897
    const-string/jumbo v4, "type"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1898
    const-string/jumbo v4, "source_path"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v4, "key"

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "custom_pack"

    invoke-direct {p0, v4, v5, v2}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->sendEventToDressRoom(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1902
    .local v4, "resultBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "result"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    .line 1903
    return v3

    .line 1910
    .end local v2    # "param":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_4
    goto :goto_0

    .line 1907
    :catch_0
    move-exception v2

    .line 1908
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMultipackWallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1912
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private blacklist setStream(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 7
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1755
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1756
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSecurityLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v2

    .line 1755
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->getInputStreamFromPath(Ljava/lang/String;ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1757
    .local v0, "inputStream":Ljava/io/InputStream;
    const-string v1, ">"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStream: inputStream is null. path = <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1759
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1758
    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V

    .line 1760
    return v2

    .line 1764
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getCropHint()Landroid/graphics/Rect;

    move-result-object v3

    .line 1765
    .local v3, "visibleRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1766
    const/4 v3, 0x0

    .line 1769
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 1770
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v3, v6, v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    .local v4, "result":I
    if-lez v4, :cond_2

    .line 1773
    nop

    .line 1782
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 1773
    return v6

    .line 1775
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setStream: WallpaperManager.setStream returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    nop

    .line 1782
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 1776
    return v2

    .line 1782
    .end local v3    # "visibleRect":Landroid/graphics/Rect;
    .end local v4    # "result":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v3

    .line 1779
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStream: Exception <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->addErrorDescription(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1782
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 1783
    nop

    .line 1785
    return v2

    .line 1782
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 1783
    throw v1
.end method

.method private blacklist setVideoWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z
    .locals 9
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1790
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1791
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    return v1

    .line 1795
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 1796
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1799
    return v2

    .line 1800
    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_2

    .line 1801
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1802
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    .line 1803
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->setCoverVideoWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v0

    return v0

    .line 1805
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSourceFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1806
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getFileSaveKey()Ljava/lang/String;

    move-result-object v4

    .line 1805
    invoke-static {v0, v3, v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper;->copyEncryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1807
    .local v0, "result":Z
    if-eqz v0, :cond_3

    .line 1808
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 1809
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1812
    return v2

    .line 1816
    .end local v0    # "result":Z
    :cond_3
    return v1
.end method

.method private blacklist writeSettingValue(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1559
    if-nez p1, :cond_0

    .line 1560
    return-void

    .line 1563
    :cond_0
    const/4 v0, 0x0

    .line 1564
    .local v0, "transparency":I
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isDownloadedThemeWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    const/4 v0, 0x3

    .line 1568
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1569
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    .line 1568
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1571
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1572
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1580
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lockscreen_wallpaper_sub"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 1574
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1577
    nop

    .line 1583
    :goto_0
    goto :goto_1

    .line 1587
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 1588
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1589
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v1, :cond_3

    .line 1590
    const v2, 0x1002b

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 1591
    .local v2, "gyroSensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_3

    .line 1592
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1593
    invoke-virtual {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getTiltValue()I

    move-result v4

    .line 1592
    const-string/jumbo v5, "wallpaper_tilt_status"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1598
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1501
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "helpers"    # [Ljava/util/ArrayList;

    .line 1504
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 1506
    .local v1, "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1507
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1508
    .local v3, "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->restoreWallpaper(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)Z

    move-result v4

    .line 1510
    .local v4, "retoreSuccess":Z
    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1511
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWallpaperType()I

    move-result v6

    .line 1514
    .local v6, "wallpaperType":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v7, :cond_0

    .line 1518
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getType()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 1519
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_1

    .line 1520
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->requestResetEditInfo(Landroid/content/Context;I)V

    .line 1523
    :cond_1
    sget-object v7, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v3, v7}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 1524
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getMode()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    .line 1525
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->writeSettingValue(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    .line 1528
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v8, 0x22344

    if-lt v7, v8, :cond_3

    .line 1529
    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getWhich()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/WallpaperManager;->semClearBackupWallpapers(I)V

    .line 1532
    .end local v6    # "wallpaperType":I
    :cond_3
    goto :goto_1

    .line 1533
    :cond_4
    sget-object v6, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v3, v6}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->setResultCode(Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    .line 1536
    :goto_1
    new-array v5, v5, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    aput-object v3, v5, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 1506
    .end local v3    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    .end local v4    # "retoreSuccess":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1539
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1501
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

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

    .line 1555
    .local p1, "helpers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;>;"
    invoke-static {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager;->-$$Nest$smresponse(Ljava/util/ArrayList;)V

    .line 1556
    return-void
.end method

.method protected varargs blacklist onProgressUpdate([Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V
    .locals 4
    .param p1, "helpers"    # [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    .line 1545
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 1546
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    nop

    .end local v0    # "helper":Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
    goto :goto_0

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected bridge synthetic whitelist onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1501
    check-cast p1, [Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperRestoreAsyncTask;->onProgressUpdate([Lcom/samsung/android/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;)V

    return-void
.end method
