.class public final Lcom/android/wm/shell/pip/phone/PipMenuView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final synthetic val$allowMenuTimeout:Z

.field public final synthetic val$menuState:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$menuState:I

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$menuState:I

    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->-$$Nest$mnotifyMenuStateChangeFinish(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_0
    return-void
.end method
