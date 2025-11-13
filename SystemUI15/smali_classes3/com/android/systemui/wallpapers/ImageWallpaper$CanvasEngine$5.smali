.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public mFixedRotationStartTime:J

.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayConfigurationChanged displayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newConfig="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v2

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v5, "  getCurrentDisplayRotation failed to get display. displayId="

    invoke-static {v2, v5, v4}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->mFixedRotationStartTime:J

    sub-long/2addr v3, v5

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onFixedRotationFinished mRotation="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    const-string v8, ", displayRotation="

    const-string v9, ", configRotation="

    invoke-static {v6, v7, v8, v2, v9}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p0

    if-eq p1, p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFixedRotationFinished not my display : myId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fixedRotationId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    if-eq p0, v2, :cond_2

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v1, "onFixedRotationFinished Error orientation. So update Again."

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p0

    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateWallpaperOffset(II)V

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsFixedRotationInProgress:Z

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v3, "onFixedRotationStarted displayId="

    const-string v4, ", newRotation="

    const-string v5, ", mRotation="

    invoke-static {p1, p2, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$5;->mFixedRotationStartTime:J

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p0

    if-eq p1, p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object p2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFixedRotationStarted not my display : myId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fixedRotationId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsFixedRotationInProgress:Z

    iget p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    if-eq p0, p2, :cond_1

    iput p2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    :cond_1
    return-void
.end method
