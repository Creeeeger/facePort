.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$2;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public final synthetic val$doAfterDefocus:Ljava/lang/Runnable;

.field public final synthetic val$grandParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$grandParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$doAfterDefocus:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 3

    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$grandParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$doAfterDefocus:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
