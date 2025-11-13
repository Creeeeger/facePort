.class public final synthetic Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/animation/Animation;

.field public final synthetic f$4:Landroid/view/animation/Transformation;

.field public final synthetic f$5:[F

.field public final synthetic f$6:[F

.field public final synthetic f$7:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$3:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$5:[F

    iput-object p7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$6:[F

    iput-object p8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$7:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$3:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Transformation;

    iget-object v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$5:[F

    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$6:[F

    iget-object v8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$7:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    return-void
.end method
