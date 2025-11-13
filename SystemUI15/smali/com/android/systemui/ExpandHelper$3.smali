.class public final Lcom/android/systemui/ExpandHelper$3;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/ExpandHelper;

.field public final synthetic val$expand:Z

.field public final synthetic val$scaledView:Landroid/view/View;

.field public final synthetic val$wasClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/ExpandHelper$3;->val$expand:Z

    iput-boolean p4, p0, Lcom/android/systemui/ExpandHelper$3;->val$wasClosed:Z

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroidx/core/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper$3;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/systemui/ExpandHelper$3;->mCancelled:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/ExpandHelper$3;->val$expand:Z

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserExpandedChild(Landroid/view/View;Z)V

    iget-boolean p1, v1, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    :cond_1
    :goto_0
    iget-object p1, v1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;->setUserLockedChild(Landroid/view/View;Z)V

    iget-object p1, v1, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroidx/core/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroidx/core/animation/Animator;->removeListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper$3;->val$wasClosed:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_2
    return-void
.end method
