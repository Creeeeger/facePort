.class public final synthetic Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

.field public final synthetic f$1:Landroid/view/SurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wallpaper/engines/image/ImageEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceHolder;

    check-cast p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-interface {p0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSourceWhich()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->putDownScaledSourceBitmap(ILcom/android/systemui/wallpaper/engines/image/ImageSource$WallpaperImage;)V

    return-void
.end method
