.class public final Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsHandleMenuShowing:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->setHandleViewVisibilityIfNeeded(Z)V

    return-void
.end method
