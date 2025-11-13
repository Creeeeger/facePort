.class public final Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mCropRects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mCropRects:Ljava/util/ArrayList;

    return-void
.end method
