.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideDetail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "   end extension - "

    const-string v1, "SubscreenQuickReplyCoordinator"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->getMQuickReplyExtender()Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->endLifetimeExtension(Ljava/lang/String;)V

    return-void
.end method

.method public onReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "   subscreen quick reply - "

    const-string v3, "SubscreenQuickReplyCoordinator"

    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, v2, Landroid/app/Notification;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/app/Notification;->flags:I

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->access$getMNotifUpdater$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    :cond_6
    const-string p1, "Extending lifetime of notification with subscreen quick reply"

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;->onInternalNotificationUpdate(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
