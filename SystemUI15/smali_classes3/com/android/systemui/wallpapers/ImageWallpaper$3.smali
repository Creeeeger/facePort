.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$3;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "display_night_theme_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ImageWallpaper"

    const-string v0, " Apply Dark mode option changed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$3;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getEngines()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    instance-of v2, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onChangeApplyDark : notify change to BaseEngine. semGetWallpaperFlags() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->semGetWallpaperFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->onApplyDarkModeDimSettingChanged()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCanvasEngineList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "onChangeApplyDark : notify the change to CanvasEngine. Engine displayId = "

    invoke-static {v0, v2, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mHelper:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->getCurrentWhich()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    return-void
.end method
