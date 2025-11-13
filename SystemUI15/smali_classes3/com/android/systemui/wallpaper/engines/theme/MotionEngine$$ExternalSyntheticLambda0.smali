.class public final synthetic Lcom/android/systemui/wallpaper/engines/theme/MotionEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mMotionWallpaper:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/MotionEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
