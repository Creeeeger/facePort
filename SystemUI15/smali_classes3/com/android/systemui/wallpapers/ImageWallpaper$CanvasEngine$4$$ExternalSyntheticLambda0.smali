.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, " mPluginWallpaperConsumer, skip, engine is destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->-$$Nest$mupdatePluginWallpaper(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, "Ignore Waking up when closed in watch face mode. "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_5

    iget v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    iget-object v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v6

    if-eq v5, v6, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onStartedWakingUp lid state different. so update "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    invoke-static {v6}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    iget-object v7, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsFolded:Z

    if-eqz v5, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v0

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSize(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
