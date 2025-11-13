.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setAlpha(F)V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
