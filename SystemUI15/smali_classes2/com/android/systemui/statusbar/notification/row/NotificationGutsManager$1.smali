.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic val$guts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final synthetic val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$x:I

    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$y:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "NotificationGutsManager"

    const-string v0, "Trying to show notification guts in post(), but not attached to window"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$x:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$y:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;

    const/4 v8, 0x2

    invoke-direct {v7, v6, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/Dumpable;I)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v8, v6

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v8, 0x0

    invoke-static {v3, v4, v5, v8, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v5, 0x168

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;

    invoke-direct {v5, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    const-string v4, "NotificationGuts"

    const-string v5, "Failed to animate guts open"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsListener:Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewListener;->onGutsOpen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    sget v7, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_4
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    sget v6, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_5
    add-int/2addr v4, v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setGutsShown(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    const-string p0, "QPN001"

    const-string v0, "QPNE0013"

    const-string/jumbo v1, "type"

    const-string v2, "long press"

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
