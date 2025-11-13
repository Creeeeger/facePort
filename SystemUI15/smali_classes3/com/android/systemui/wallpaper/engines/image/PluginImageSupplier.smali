.class public final Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;


# instance fields
.field public final mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/PluginWallpaper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    iput p3, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mWhich:I

    return-void
.end method


# virtual methods
.method public final getFilterData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWallpaperImage()Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mPluginWallpaper:Lcom/android/systemui/wallpaper/PluginWallpaper;

    check-cast v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mWhich:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->getScreen(I)I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/PluginWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isFbeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->getWallpaperIntelligentCrop(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/PluginImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result p0

    :goto_1
    new-instance v1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object v1
.end method
