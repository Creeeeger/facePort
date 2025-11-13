.class public final synthetic Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/view/SurfaceHolder;

.field public final synthetic f$3:[Landroid/graphics/Bitmap;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:[Z

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;Landroid/view/SurfaceHolder;[Landroid/graphics/Bitmap;Landroid/graphics/Rect;[ZLjava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$0:Landroid/util/Size;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceHolder;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$5:[Z

    iput-object p7, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$0:Landroid/util/Size;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$5:[Z

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    const-string v7, "copySurfaceToBitmapSync: width = "

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_0
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const-string v8, "DisplayUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", validSurface="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v5, v6}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils$$ExternalSyntheticLambda1;-><init>([Landroid/graphics/Bitmap;[ZLjava/lang/Object;)V

    invoke-static {v2, v4, v0, v1, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    monitor-enter v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v6

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
