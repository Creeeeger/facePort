.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
