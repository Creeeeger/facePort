.class public final Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/video/VideoController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;->this$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceAndPlayerReady()V
    .locals 5

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$1;->this$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceAndPlayerReady: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", validSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoSource:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget v1, v1, Lcom/android/systemui/wallpaper/engines/video/VideoSource;->mType:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->mCallback:Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->semCreateSurface(ZF)Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->getVisibleRectOfSurface()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setVisibleRectOfSurface(Landroid/graphics/Rect;)V

    return-void
.end method
