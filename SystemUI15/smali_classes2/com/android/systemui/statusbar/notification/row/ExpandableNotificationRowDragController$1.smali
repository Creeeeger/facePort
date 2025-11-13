.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCanceled:Z

.field public final synthetic val$dragSurface:Landroid/view/SurfaceControl;

.field public final synthetic val$tx:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$dragSurface:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->mCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$1;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_1
    return-void
.end method
