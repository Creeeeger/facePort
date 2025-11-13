.class public final Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public final getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p0

    return-object p0
.end method

.method public final removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final updateRanking()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method
