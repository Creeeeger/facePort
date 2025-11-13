.class public final Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;


# instance fields
.field public final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-void
.end method


# virtual methods
.method public final getFilterData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWallpaperImage()Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperIntelligentCrop()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->parseCropHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/CoverImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result p0

    :goto_0
    new-instance v2, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object v2
.end method
