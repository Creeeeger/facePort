.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $background:Landroid/view/SurfaceControl;

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic $veilAnimT:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$veilAnimT:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$background:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$veilAnimT:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$background:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$showVeil$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
