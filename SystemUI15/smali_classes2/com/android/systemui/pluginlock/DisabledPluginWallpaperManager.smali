.class public Lcom/android/systemui/pluginlock/DisabledPluginWallpaperManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginWallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "## DisabledPluginWallpaperManager ##, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisabledPluginWallpaperManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public fillWallpaperData(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapFromUri(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaper(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaper(IZ)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperRect(I)Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHomeCurrentScreen()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHomeWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperRect(I)Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeWallpaperType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSubFbeWallpaperType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getWallpaperIndex(ILandroid/os/Bundle;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getWallpaperIntelligentCrop()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUpdateStyle()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperUri(I)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasBackupWallpaper(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCloneDisplayRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCustomPackApplied()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCustomPackApplied(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDynamicWallpaperEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDynamicWallpaperEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeAvailable(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeWallpaperAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeWallpaperAvailable(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeWallpaperVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFbeWallpaperVideo(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHomeWallpaperRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiPackApplied()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiPackApplied(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isServiceWallpaperApplied()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isServiceWallpaperApplied(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoWallpaperEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoWallpaperEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcBitmap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcBitmap(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcPath()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcPath(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcUri()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperSrcUri(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onColorAreasChanged(I)V
    .locals 0

    return-void
.end method

.method public onHomeWallpaperChanged(I)V
    .locals 0

    return-void
.end method

.method public onLockWallpaperChanged(I)V
    .locals 0

    return-void
.end method

.method public onLockWallpaperChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onWallpaperConsumed(IZ)V
    .locals 0

    return-void
.end method

.method public setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    return-void
.end method

.method public setLockWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    return-void
.end method
