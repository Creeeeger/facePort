.class public final Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mCropRects:Ljava/util/ArrayList;

.field public final mScale:F


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;FLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Bitmap;",
            "F",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mScale:F

    iput-object p4, p0, Lcom/android/systemui/wallpaper/engines/image/DownScaledSourceBitmapManager$Item;->mCropRects:Ljava/util/ArrayList;

    return-void
.end method
