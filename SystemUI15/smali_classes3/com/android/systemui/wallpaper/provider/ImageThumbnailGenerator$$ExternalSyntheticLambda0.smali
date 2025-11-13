.class public final synthetic Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

.field public final synthetic f$3:[Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/image/ImageSource;[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/wallpaper/engines/image/ImageSource;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/provider/ImageThumbnailGenerator$$ExternalSyntheticLambda0;->f$3:[Landroid/graphics/Bitmap;

    check-cast p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    iget v4, v0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->which:I

    iget v0, v0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->rotation:I

    invoke-static {v1, v4, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->getDisplaySize(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/wallpaper/engines/image/ImageSource;->isFixedOrientation(ZLcom/android/systemui/util/SettingsHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-le v3, v5, :cond_0

    iput v5, v1, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    const-string v11, "ImageWallpaper[ImageThumbnailGenerator]"

    if-nez v5, :cond_1

    const-string p0, "generateThumbnail: failed to get wallpaper bitmap"

    invoke-static {v11, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mCropRects:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/utils/IntelligentCropHelper;->getNearestCropHint(Landroid/graphics/Point;Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object p1

    move-object v6, p1

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/DisplayUtils;->convertDisplayRotationToAngle(I)I

    move-result p1

    neg-int p1, p1

    move v9, p1

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils;->getSizeLimitedCenterCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, p0, v4

    if-eqz v2, :cond_4

    const-string p0, "generateThumbnail: isFixedOrientation="

    invoke-static {p0, v11, v2}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    return-void
.end method
