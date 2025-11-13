.class public final synthetic Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$10:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/view/SurfaceControl;

.field public final synthetic f$4:Landroid/view/animation/Animation;

.field public final synthetic f$5:Landroid/view/animation/Transformation;

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F

.field public final synthetic f$8:Landroid/graphics/Rect;

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    iput-object p7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    iput-object p8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$7:[F

    iput-object p9, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$8:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$9:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object v11, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    iget-object v8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    iget-object v9, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$7:[F

    iget-object v10, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$8:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$9:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    move-object v4, v11

    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v11}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v2, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2, v12, v1, p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
