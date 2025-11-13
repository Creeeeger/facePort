.class public final synthetic Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:Landroid/graphics/Point;

.field public final synthetic f$2:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    iget-object v6, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda4;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v6, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    return-void
.end method
