.class public abstract Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetScreenshot(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object p0

    iget p1, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->which:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getEngine(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    move-result-object p0

    const-string p1, "LiveWallpaperProviderCallDispatcher"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onGetScreenshot : engine is null. which="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->which:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v3, Lcom/samsung/android/wallpaper/live/sdk/provider/EngineScreenshotHelper;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/live/sdk/provider/EngineScreenshotHelper;-><init>()V

    new-instance v3, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;

    iget-object v4, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->purpose:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onGetScreenshot(Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/samsung/android/wallpaper/live/sdk/data/ScreenshotResults;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-static {p0, v2, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->copySurfaceToBitmapSync(Landroid/view/SurfaceHolder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "captureSurface : screenshot is null"

    const-string v4, "EngineScreenshotHelper"

    invoke-static {v4, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    const-string p0, "png"

    iget-object p2, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->requiredImageFormat:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    new-instance p2, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p2, v3}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p0, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->encodeBitmapToPipe(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "onGetScreenshot : elapsed="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :cond_5
    return-object v2
.end method

.method public abstract onGetThumbnail(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;
.end method
