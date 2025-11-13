.class public final Lcom/android/wm/shell/pip2/phone/PipMenuView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

.field public final synthetic val$allowMenuTimeout:Z

.field public final synthetic val$menuState:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->val$menuState:I

    iput-boolean p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->val$menuState:I

    iput v0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iget v1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iput v0, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->val$allowMenuTimeout:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/16 p1, 0xdac

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_2
    return-void
.end method
