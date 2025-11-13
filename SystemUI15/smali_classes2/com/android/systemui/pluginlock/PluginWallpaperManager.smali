.class public interface abstract Lcom/android/systemui/pluginlock/PluginWallpaperManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static getScreenId(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract fillWallpaperData(IIILjava/lang/String;)V
.end method

.method public abstract getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end method

.method public abstract getBitmapFromUri(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;
.end method

.method public abstract getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
.end method

.method public abstract getFbeWallpaper(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getFbeWallpaper(IZ)Landroid/graphics/Bitmap;
.end method

.method public abstract getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;
.end method

.method public abstract getFbeWallpaperPath()Ljava/lang/String;
.end method

.method public abstract getFbeWallpaperPath(I)Ljava/lang/String;
.end method

.method public abstract getFbeWallpaperRect()Landroid/graphics/Rect;
.end method

.method public abstract getFbeWallpaperRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getFbeWallpaperType(I)I
.end method

.method public abstract getHomeCurrentScreen()I
.end method

.method public abstract getHomeWallpaperBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getHomeWallpaperIntelligentCrop(I)Ljava/lang/String;
.end method

.method public abstract getHomeWallpaperPath(I)Ljava/lang/String;
.end method

.method public abstract getHomeWallpaperRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getHomeWallpaperType(I)I
.end method

.method public abstract getSubFbeWallpaperType()I
.end method

.method public abstract getWallpaperBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getWallpaperBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getWallpaperIndex()I
.end method

.method public abstract getWallpaperIndex(ILandroid/os/Bundle;)I
.end method

.method public abstract getWallpaperIntelligentCrop()Ljava/lang/String;
.end method

.method public abstract getWallpaperIntelligentCrop(I)Ljava/lang/String;
.end method

.method public abstract getWallpaperPath()Ljava/lang/String;
.end method

.method public abstract getWallpaperPath(I)Ljava/lang/String;
.end method

.method public abstract getWallpaperType()I
.end method

.method public abstract getWallpaperType(I)I
.end method

.method public abstract getWallpaperUpdateStyle()I
.end method

.method public abstract getWallpaperUri()Landroid/net/Uri;
.end method

.method public abstract getWallpaperUri(I)Landroid/net/Uri;
.end method

.method public abstract hasBackupWallpaper(I)Z
.end method

.method public abstract isCloneDisplayRequired()Z
.end method

.method public abstract isCustomPackApplied()Z
.end method

.method public abstract isCustomPackApplied(I)Z
.end method

.method public abstract isDynamicWallpaperEnabled()Z
.end method

.method public abstract isDynamicWallpaperEnabled(I)Z
.end method

.method public abstract isFbeAvailable()Z
.end method

.method public abstract isFbeAvailable(I)Z
.end method

.method public abstract isFbeRequired()Z
.end method

.method public abstract isFbeRequired(I)Z
.end method

.method public abstract isFbeWallpaperAvailable()Z
.end method

.method public abstract isFbeWallpaperAvailable(I)Z
.end method

.method public abstract isFbeWallpaperVideo()Z
.end method

.method public abstract isFbeWallpaperVideo(I)Z
.end method

.method public abstract isHomeWallpaperRequired(I)Z
.end method

.method public abstract isMultiPackApplied()Z
.end method

.method public abstract isMultiPackApplied(I)Z
.end method

.method public abstract isServiceWallpaperApplied()Z
.end method

.method public abstract isServiceWallpaperApplied(I)Z
.end method

.method public abstract isVideoWallpaperEnabled()Z
.end method

.method public abstract isVideoWallpaperEnabled(I)Z
.end method

.method public abstract isWallpaperSrcBitmap()Z
.end method

.method public abstract isWallpaperSrcBitmap(I)Z
.end method

.method public abstract isWallpaperSrcPath()Z
.end method

.method public abstract isWallpaperSrcPath(I)Z
.end method

.method public abstract isWallpaperSrcUri()Z
.end method

.method public abstract isWallpaperSrcUri(I)Z
.end method

.method public abstract onColorAreasChanged(I)V
.end method

.method public abstract onHomeWallpaperChanged(I)V
.end method

.method public abstract onLockWallpaperChanged(I)V
.end method

.method public abstract onLockWallpaperChanged(IZ)V
.end method

.method public abstract onWallpaperConsumed(IZ)V
.end method

.method public abstract setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
.end method

.method public abstract setLockWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
.end method
