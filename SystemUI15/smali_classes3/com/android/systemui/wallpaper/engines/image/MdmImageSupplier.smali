.class public final Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/image/ImageSource$ImageSupplier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public final getFilterData()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getWallpaperImage()Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getWallpaperImage: e="

    const-string v2, "MdmImageSupplier"

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/MdmImageSupplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result p0

    :goto_1
    new-instance v1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-direct {v1, v0, v3, p0}, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;-><init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V

    return-object v1
.end method
