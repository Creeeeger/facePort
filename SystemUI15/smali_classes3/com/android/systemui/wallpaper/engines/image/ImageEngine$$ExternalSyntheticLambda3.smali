.class public final synthetic Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Canvas;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;ILandroid/graphics/Canvas;JLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Canvas;

    iput-wide p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$3:J

    iput-object p6, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v9, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$1:I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/Canvas;

    iget-wide v3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$3:J

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, v9, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mDownScaledSourceBitmapManager:Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;

    if-nez v6, :cond_0

    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v9, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager;->mSourceBitmapSet:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v2, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->putDownScaledSourceBitmap(ILcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;)V

    :goto_0
    iget-object v7, p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mCropRects:Ljava/util/ArrayList;

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    move-object v1, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->drawFrameOnCanvas(Landroid/graphics/Canvas;IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/ArrayList;F)Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    move-result-object p0

    if-nez v10, :cond_2

    iput-object p0, v9, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mLastDrawnState:Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v9, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->mIsFullQualityFrameDrawn:Z

    :goto_1
    return-void
.end method
