.class public final Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetScreenshot(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;
    .locals 2

    const-string v0, "ImageWallpaper[ProviderCallDispatcher]"

    const-string v1, "onGetScreenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;->onGetScreenshot(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;

    move-result-object p0

    return-object p0
.end method

.method public final onGetThumbnail(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;
    .locals 6

    const-string p0, "ImageWallpaper[ProviderCallDispatcher]"

    const-string v0, "onGetThumbnail: wpId="

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;

    invoke-direct {v4, p1}, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Lcom/android/systemui/wallpaper/provider/ThumbnailGenerator;->generateThumbnail(Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v5, Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1, v4, v5}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->encodeBitmapToPipe(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->wallpaperId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", which="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->which:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", srcWhich="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->rotation:I

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getBitmapSizeString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", elapsed="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    new-instance p1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;

    invoke-direct {p1, v4}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :cond_1
    return-object v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onGetThumbnail: e="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
