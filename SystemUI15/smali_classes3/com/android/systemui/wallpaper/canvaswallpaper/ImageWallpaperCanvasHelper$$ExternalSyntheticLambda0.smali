.class public final synthetic Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iput p2, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;

    iget p0, p0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reload texture failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mBitmapUpdateConsumer:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mColorDecorFilterData:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/effect/ColorDecorFilterHelper;->createFilteredBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mHighlightFilterAmount:I

    if-ltz v1, :cond_3

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/effect/HighlightFilterHelper;->createFilteredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mDisplayId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v4, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mIsVirtualDisplay:Z

    if-eqz v4, :cond_5

    :goto_3
    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    iget-object v5, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v5, :cond_7

    if-nez v4, :cond_7

    iget v4, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mCurrentUserId:I

    invoke-virtual {v5, p1, p0, v4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;II)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v3, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v5, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v3, :cond_6

    iget-object v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v2, p0, p0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/wallpaper/canvaswallpaper/ImageWallpaperCanvasHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v2, p0, v3}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-void
.end method
