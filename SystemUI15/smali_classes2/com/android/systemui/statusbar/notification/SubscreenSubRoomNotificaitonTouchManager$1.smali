.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getSwipeEscapeVelocity(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public final getSwipeThreshold()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    return p0
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notification onSwiped : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotificaitonTouchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;-><init>()V

    sput-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object v2

    :goto_0
    instance-of v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeItem mSwipeNotificationType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v5, 0x1

    if-nez v3, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    invoke-virtual {p1, v5, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasNotifications(IZ)Z

    move-result v2

    xor-int/2addr v2, v5

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    goto :goto_1

    :cond_3
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v5, :cond_4

    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    :cond_4
    :goto_1
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_5
    const-string p0, "notification removed with onSwiped"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const-string p0, "QPN101"

    goto :goto_2

    :cond_6
    const-string p0, "QPN100"

    :goto_2
    const-string/jumbo p1, "swipe"

    const-string v0, "QPNE0202"

    const-string v1, "from"

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
