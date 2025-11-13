.class public final Lcom/android/wm/shell/pip/PipTransition$3;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$3;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTransition$3;->val$show:Z

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/android/wm/shell/pip/PipTransition$3;->val$show:Z

    if-eqz p4, :cond_0

    iget p0, p3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$3;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
