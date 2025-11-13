.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p0, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const/16 v0, 0x25d

    if-eq v1, v0, :cond_2

    const/16 v0, 0x25e

    if-eq v1, v0, :cond_2

    const/16 v0, 0x2d4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x2dc

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MSG_DLS_VIEW_MODE_CHANGED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string/jumbo v3, "samsung.android.wallpaper.bouncervisibilitychanged"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    iget-object p0, v2, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    iget v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->drawFrameSynchronized(ILandroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
