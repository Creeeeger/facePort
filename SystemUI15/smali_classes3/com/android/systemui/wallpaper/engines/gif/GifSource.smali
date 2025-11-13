.class public final Lcom/android/systemui/wallpaper/engines/gif/GifSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperSource;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageWallpaper_"

    const-string v1, "[GifSource]"

    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mWhich:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getGifPath()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    move-result v1

    const-string v2, "getGifPath: "

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->TAG:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/gif/GifSource;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string p0, ""

    :goto_0
    invoke-static {v2, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
