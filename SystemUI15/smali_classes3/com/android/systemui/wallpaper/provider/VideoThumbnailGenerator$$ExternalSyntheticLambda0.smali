.class public final synthetic Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;

.field public final synthetic f$1:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:[Landroid/graphics/Bitmap;

.field public final synthetic f$4:Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;Lcom/android/systemui/wallpaper/engines/video/VideoSource;Landroid/content/Context;[Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator$$ExternalSyntheticLambda0;->f$4:Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mVideoLocation:Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoLocation;

    instance-of v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;

    const-string/jumbo v4, "us"

    const-string v5, ", "

    const-string v6, "generateThumbnail: frameNo="

    const-string v7, "ImageWallpaper[VideoThumbnailGenerator]"

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;->mPackageName:Ljava/lang/String;

    const-string v9, "com.samsung.android.wallpaper.res"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/SemWallpaperResourcesInfo;

    invoke-direct {v1, v2}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$VideoResource;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;->getVideoFrameTime(Landroid/media/MediaMetadataRetriever;I)J

    move-result-wide v1

    new-instance v9, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v2, v0, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v3, v8

    :cond_0
    aget-object v0, v3, v8

    if-nez v0, :cond_1

    const-string/jumbo v0, "thumbnailFrameNo"

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;->getVideoFrameTime(Landroid/media/MediaMetadataRetriever;I)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, v3, v8

    :cond_1
    return-void
.end method
