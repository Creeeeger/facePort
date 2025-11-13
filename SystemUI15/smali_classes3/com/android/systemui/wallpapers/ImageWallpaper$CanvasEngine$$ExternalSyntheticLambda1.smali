.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    check-cast p1, Landroid/graphics/Bitmap;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateMiniBitmapAndNotify(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->updateMiniBitmapAndNotify(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mWallpaperLocalColorExtractor:Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;

    iget-object v0, p0, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/WallpaperLocalColorExtractor;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
