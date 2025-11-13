.class public final Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createFilteredBitmap : filterAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighlightFilterHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;-><init>()V

    new-instance v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    new-instance v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p0, p1, v3}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;Landroid/graphics/Bitmap;II)V

    const-string p1, "highlight"

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->applyFilterOnMultiThread(Ljava/lang/String;Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;Ljava/util/function/Consumer;)V

    return-object p0
.end method
