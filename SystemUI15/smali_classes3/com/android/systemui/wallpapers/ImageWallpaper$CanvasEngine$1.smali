.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$WallpaperLocalColorExtractorCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivated()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    return-void
.end method

.method public final onColorsProcessed(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onDeactivated()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    return-void
.end method

.method public final onMiniBitmapUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->onMiniBitmapUpdated()V

    return-void
.end method
