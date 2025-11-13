.class public final Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $background:Landroid/view/SurfaceControl;

.field public final synthetic $icon:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->$background:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->$icon:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->$background:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;->$icon:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
