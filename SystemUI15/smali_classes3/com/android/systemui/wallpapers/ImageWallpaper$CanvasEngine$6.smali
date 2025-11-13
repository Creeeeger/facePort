.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v2, "onRotationChanged: newRotation="

    const-string v3, ", mRotation="

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    if-eq v1, p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v2, "onRotationChanged rotation is changed "

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iput p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$6;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    :cond_0
    return-void
.end method
