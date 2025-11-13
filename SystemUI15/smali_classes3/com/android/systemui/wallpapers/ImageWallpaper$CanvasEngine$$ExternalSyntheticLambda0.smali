.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;IJLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v8, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    move-object v5, p1

    check-cast v5, Landroid/graphics/Bitmap;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameOnCanvas(IJLandroid/graphics/Rect;Landroid/graphics/Bitmap;FI)Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    move-result-object p0

    iput-object p0, v8, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->mLastDrawnState:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$DrawState;

    return-void
.end method
