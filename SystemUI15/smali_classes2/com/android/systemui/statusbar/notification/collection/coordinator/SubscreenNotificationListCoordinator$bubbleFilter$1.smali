.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    const-string p1, "SubscreenNotificationListCoordinator"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->access$getBubblesOptional$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->access$getBubblesOptional$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/Bubbles;

    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->access$getSubscreenController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string p3, "S.S.N."

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p1, "shouldFilterOutBubble parent - mBubbleReplyEntry key :"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldFilterOutBubble parent - remove Bubble Item :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyGroupAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
