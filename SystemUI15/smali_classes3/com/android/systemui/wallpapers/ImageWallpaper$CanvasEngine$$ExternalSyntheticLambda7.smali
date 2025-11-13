.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recreateSurfaceControl: releasing older surface control"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->semReleaseSurface(Landroid/service/wallpaper/WallpaperService$Engine$SurfaceData;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-boolean v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    const-string v0, " mPluginHomeWallpaperConsumer, skip, engine is destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mPluginHomeWallpaperConsumer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mSubWallpaperType:I

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$7;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->-$$Nest$mupdatePluginWallpaper(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    iget-boolean v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mIsEngineAlive:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mRotation:I

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget-boolean v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    if-eq v6, v4, :cond_3

    iput-boolean v4, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Dark Mode change "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsNightModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    :cond_3
    iget v4, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    iget v6, p0, Landroid/content/res/Configuration;->densityDpi:I

    const-string v7, " -> "

    if-eq v4, v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " onConfigurationChanged  mCurDensityDpi "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurDensityDpi:I

    move v5, v2

    :cond_4
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " onConfigurationChanged   "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    iget-object v8, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eq v6, v4, :cond_5

    iput v4, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mOrientation:I

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->hasIntelligentCropHints(I)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    move v5, v2

    :cond_5
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " ,  DeviceDisplay type "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    iget v9, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v6, v9, :cond_8

    iget v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    iget-object v9, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v9

    if-eq v6, v9, :cond_6

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v6, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v6}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", Dual dex mode . Update Now. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLidState:I

    invoke-static {v6}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->convertLidStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->setLidState(I)V

    move v5, v2

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    :cond_7
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p0, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDeviceDisplayType:I

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isNeedReDraw "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v3, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_a

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result p0

    if-eqz v4, :cond_9

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-nez v1, :cond_9

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateSurfaceSizeIfNeed(I)Z

    move-result v1

    xor-int/2addr v2, v1

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateRendering(I)V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
