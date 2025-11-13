.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$10:Lcom/android/wm/shell/common/ShellExecutor;

.field public final synthetic f$11:Ljava/util/ArrayList;

.field public final synthetic f$12:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/animation/Animation;

.field public final synthetic f$4:Landroid/view/animation/Transformation;

.field public final synthetic f$5:[F

.field public final synthetic f$6:Landroid/graphics/Point;

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/graphics/Rect;

.field public final synthetic f$9:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$0:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$3:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$4:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$5:[F

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$6:Landroid/graphics/Point;

    iput p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$7:F

    iput-object p9, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$8:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$9:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p11, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$10:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p12, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$11:Ljava/util/ArrayList;

    iput-object p13, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$12:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$0:Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$2:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$3:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$4:Landroid/view/animation/Transformation;

    iget-object v7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$5:[F

    iget-object v8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$6:Landroid/graphics/Point;

    iget v9, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$7:F

    iget-object v10, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$8:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$9:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v13, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$10:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v14, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$11:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;->f$12:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    move-object v3, v11

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    invoke-virtual {v12, v11}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, v14, v0, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda11;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    check-cast v13, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v13, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
