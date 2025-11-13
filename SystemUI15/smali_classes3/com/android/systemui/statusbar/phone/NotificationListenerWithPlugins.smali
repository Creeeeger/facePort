.class public Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public mConnected:Z

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPlugins:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    return-void
.end method

.method public static synthetic access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;
    .locals 0

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getActiveNotifications([Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V

    :cond_0
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-class p2, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method public final unregisterAsSystemService()V
    .locals 1

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method
