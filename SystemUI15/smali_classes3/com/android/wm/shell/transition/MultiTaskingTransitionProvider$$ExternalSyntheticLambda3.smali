.class public final synthetic Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/view/SurfaceControl;

.field public final synthetic f$4:Landroid/view/animation/Animation;

.field public final synthetic f$5:Landroid/view/animation/Transformation;

.field public final synthetic f$6:[F

.field public final synthetic f$7:Landroid/graphics/Point;

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$3:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$4:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$5:Landroid/view/animation/Transformation;

    iput-object p7, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$6:[F

    iput-object p8, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$7:Landroid/graphics/Point;

    iput p9, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$8:F

    iput-object p10, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$9:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$10:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$11:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object v12, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$3:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$4:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$5:Landroid/view/animation/Transformation;

    iget-object v8, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$6:[F

    iget-object v9, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$7:Landroid/graphics/Point;

    iget v10, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$8:F

    iget-object v11, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$9:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$10:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;->f$11:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    move-object v4, v12

    invoke-static/range {v2 .. v11}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v12}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda5;

    invoke-direct {v2, v13, v1, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
