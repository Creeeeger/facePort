.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $background:Landroid/view/SurfaceControl;

.field public final synthetic $icon:Landroid/view/SurfaceControl;

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$background:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$icon:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$background:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$icon:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;->$this_apply:Landroid/animation/ValueAnimator;

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
