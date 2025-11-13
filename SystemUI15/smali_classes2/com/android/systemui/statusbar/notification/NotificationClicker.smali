.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

.field public final mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field public final mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mOnDragSuccessListener:Lcom/android/systemui/statusbar/notification/NotificationClicker$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string v1, "NotificationClicker"

    if-nez v0, :cond_0

    const-string p0, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string v2, "NOTIFICATION_CLICK"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logOnClick$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logOnClick$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v6, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logMenuVisible$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logMenuVisible$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logParentMenuVisible$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logParentMenuVisible$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_4
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logChildrenExpanded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logChildrenExpanded$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v1, v3, p1, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mLogger:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logGutsExposed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger$logGutsExposed$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v1, v3, p1, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mJustClicked:Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;I)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->setShowSwipeBouncer(Z)V

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
