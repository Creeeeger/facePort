.class public final synthetic Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iput-boolean p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object v2, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;->f$1:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object p0, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method
