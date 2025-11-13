.class public final Lcom/android/systemui/wallpaper/engines/video/VideoSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperSource;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mType:I

.field public final mUserId:I

.field public mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

.field public final mVideoSize:Landroid/graphics/Point;

.field public final mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/PluginWallpaper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$1;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWallpaper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[VideoSource]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mType:I

    iput p4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mUserId:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mWhich:I

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_3

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p6, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result p1

    iget-object p3, p6, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p3, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result p4

    if-eqz p4, :cond_1

    :try_start_0
    iget-object p4, p6, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-interface {p3, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p5

    invoke-virtual {p4, p5, p2}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "getWallpaperPath: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "PluginWallpaperController"

    invoke-static {p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p3, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-interface {p3, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    check-cast p5, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {p5}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    const/4 p5, 0x0

    if-nez p3, :cond_4

    new-instance p2, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoFile;

    invoke-direct {p2, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoFile;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;

    iget-object p6, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-direct {p2, p6, p3, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "VideoSource: failed to determine video location"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, p5

    :goto_3
    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/graphics/Point;

    const/4 p3, 0x0

    aput-object p5, p1, p3

    new-instance p5, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;[Landroid/graphics/Point;)V

    invoke-interface {p2, p5}, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;->useMediaRetriever(Ljava/util/function/Consumer;)V

    aget-object p5, p1, p3

    :goto_4
    iput-object p5, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init: source="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", videoSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoSize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final isFixedOrientation(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz p1, :cond_2

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mWhich:I

    if-eqz v3, :cond_4

    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v2

    iget v5, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mUserId:I

    invoke-direct {v1, v4, v2, v5}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isFixedOrientation()Z

    move-result v1

    :cond_5
    :goto_3
    const-string v2, "isFixedOrientation: , isTablet="

    const-string v4, ", isFold="

    const-string v5, ", isPreview="

    invoke-static {v2, v4, v5, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isFixedOrientation="

    invoke-static {v0, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
