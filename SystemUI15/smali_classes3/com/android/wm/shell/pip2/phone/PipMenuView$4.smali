.class public final Lcom/android/wm/shell/pip2/phone/PipMenuView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

.field public final synthetic val$animationFinishedRunnable:Ljava/lang/Runnable;

.field public final synthetic val$notifyMenuVisibility:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->val$notifyMenuVisibility:Z

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->val$notifyMenuVisibility:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->this$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iget v1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iput v0, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
