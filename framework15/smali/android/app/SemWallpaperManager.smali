.class public interface abstract Landroid/app/SemWallpaperManager;
.super Ljava/lang/Object;
.source "SemWallpaperManager.java"


# virtual methods
.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V
    .locals 0

    return-void
.end method

.method public blacklist applyWallpaperColors(Ljava/util/List;III)V
    .locals 0

    return-void
.end method

.method public blacklist canBackup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canBackup(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist clearBackupWallpaperGivenKey(I)V
    .locals 0

    return-void
.end method

.method public blacklist getAnimatedPkgName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppliedScreen(Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmap(ZIZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDex()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDex(Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes([IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultMultipackStyle(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultWallpaperType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-interface {p0, p1}, Landroid/app/SemWallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLidState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Landroid/app/SemWallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLockWallpaperType()I
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/app/SemWallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getMotionWallpaperPkgName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(I)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(IZ)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;Z)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoFileName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoFilePath(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoPackage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperAssetFile(IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperAssets(II)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperExtras(II)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperOrientation(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasVideoWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDefaultWallpaperState(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isExternalLiveWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExternalLiveWallpaper(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStockLiveWallpaper(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportCMFFeature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportDefaultMultipleWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemAndLockPaired(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupAllowed(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperDataExists(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V
    .locals 0

    return-void
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V
    .locals 0

    return-void
.end method

.method public blacklist resetMultipleWallpaperSettingIfNeeded()V
    .locals 0

    return-void
.end method

.method public blacklist semClearBackupWallpapers()V
    .locals 0

    return-void
.end method

.method public blacklist semClearBackupWallpapers(I)V
    .locals 0

    return-void
.end method

.method public blacklist semGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetSmartCropRect(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperComponent(II)Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperCropHint(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperType(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper(II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semRestoreBackupWallpaper(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0
.end method

.method public blacklist semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    .locals 0

    return-void
.end method

.method public blacklist semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZILandroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public blacklist setResourceAll(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZIIZLandroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setStream(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public blacklist setWallpaperUri(Ljava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public blacklist wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
