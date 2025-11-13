.class public final Lcom/android/systemui/wallpaper/PluginWallpaperController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/PluginWallpaper;
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mWallpaperConsumers:Landroid/util/SparseArray;

.field public final mWallpaperId:[I

.field public final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, -0x1

    filled-new-array {p7, p7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperId:[I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperConsumers:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p4, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->setLockWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    iput-object p5, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 p0, 0x6

    invoke-virtual {p2, p0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p3

    const/4 p4, 0x0

    aput p3, v0, p4

    sget-boolean p3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p3, :cond_0

    sget-boolean p4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p4, :cond_0

    const/16 p4, 0x12

    invoke-virtual {p2, p4}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p4

    const/4 p5, 0x1

    aput p4, v0, p5

    :cond_0
    invoke-virtual {p2, p0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p4

    if-eqz p3, :cond_1

    sget-boolean p3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p3, :cond_1

    invoke-virtual {p2, p0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p7

    :cond_1
    const/4 p0, 0x3

    if-eq p4, p0, :cond_2

    const/16 p2, 0x3e8

    if-eq p4, p2, :cond_2

    if-eq p7, p0, :cond_2

    if-ne p7, p2, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "PluginWallpaperController"

    const-string p1, "Failed to enable DLS."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static getScreen(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final containsVideo(I)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/data/overlays/homewallpaper/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-lez p1, :cond_2

    array-length p1, p0

    move v1, v3

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    :try_start_0
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    const-string/jumbo v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final getFbeWallpaper(IZZ)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result v2

    const-string v3, "PluginWallpaperController"

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getFbeWallpaper: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v1, v0, p3}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaper(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getFbeWallpaper: bitmap = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 11

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isCloneDisplayRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->hasIntelligentCrops(IZ)Z

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->hasIntelligentCrops(IZ)Z

    move-result v5

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getFbeWallpaper(IZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isWallpaperSrcBitmap(I)Z

    move-result v8

    const-string v9, ", hasICrops = "

    const-string v10, "PluginWallpaperController"

    if-nez v7, :cond_4

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v8, :cond_1

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v6, p0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getWallpaperBitmap: copiedBitmap = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isWallpaperSrcPath(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getWallpaperBitmap: path = "

    invoke-static {v3, v0, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getBitmapFromPath(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isWallpaperSrcUri(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperUri(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "getWallpaperBitmap: uri = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getBitmapFromUri(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v0, "getWallpaperBitmap: source is not identified."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_6

    :cond_5
    const-string v0, "getWallpaperBitmap: bitmap is null. Trying to get fbe wallpaper."

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getFbeWallpaper(IZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getWallpaperBitmap: bitmap = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public final getWallpaperType(I)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperType(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperType(I)I

    move-result p0

    return p0
.end method

.method public final hasIntelligentCrops(IZ)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "hasIntelligentCrops: screen = "

    const-string v2, ", isFbe = "

    const-string v3, ", iCrops = "

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "PluginWallpaperController"

    invoke-static {p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final isPluginWallpaperRequired(I)Z
    .locals 9

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    const-string v3, "PluginWallpaperController"

    if-lez v1, :cond_0

    const-string p0, "isPluginWallpaperRequired: currentUser = "

    invoke-static {v1, p0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled(I)Z

    move-result v4

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-string v6, "isPluginWallpaperRequired: which = "

    const-string v7, ", isRequired = "

    const-string v8, ", isPluginWallpaper = "

    invoke-static {v6, p1, v7, v2, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isFbeCondition = "

    invoke-static {v6, v4, v7, v5, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_4

    :cond_3
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeWallpaperAvailable(I)Z

    move-result p0

    const-string p1, "isPluginWallpaperRequired: PluginWallpaper is not ready yet. isFbeAvailable = "

    invoke-static {p1, v3, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :cond_4
    return v2
.end method

.method public final onDataCleared()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/16 v3, 0x12

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->startMultiPack(I)V

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->startMultiPack(I)V

    :cond_2
    return-void
.end method

.method public final onReady()V
    .locals 2

    const-string v0, "PluginWallpaperController"

    const-string v1, "onReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->sendUpdate(Z)V

    return-void
.end method

.method public final onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onWallpaperHintUpdate: invalid which. which = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginWallpaperController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    :goto_0
    and-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public final onWallpaperUpdate(Z)V
    .locals 7

    const-string v0, "onWallpaperUpdate: isFirst = "

    const-string v1, "PluginWallpaperController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    sget v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v2

    const-string v3, "onWallpaperUpdate: mWallpaperId["

    const-string v4, "] = "

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperId:[I

    aget v5, v4, v0

    const-string v6, ", wallpaperId = "

    invoke-static {v3, v5, v6, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    aput v2, v4, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->sendUpdate(Z)V

    return-void
.end method

.method public final sendUpdate(Z)V
    .locals 3

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperConsumers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendUpdate: which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const-string v2, "PluginWallpaperController"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setWallpaperUpdateConsumer(ILjava/util/function/Consumer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWallpaperUpdateConsumer: which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", consumer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginWallpaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperConsumers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final startMultiPack(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    new-instance v1, Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/PluginWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/PluginWallpaperController;)V

    iput-object v1, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    :cond_1
    return-void
.end method
