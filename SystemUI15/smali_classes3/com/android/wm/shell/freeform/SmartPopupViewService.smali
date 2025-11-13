.class public Lcom/android/wm/shell/freeform/SmartPopupViewService;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mEnabledList:Ljava/util/List;

.field public mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

.field public mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

.field public mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/freeform/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "FreeformContainer"

    const-string v1, "[SmartPopupViewService] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/wm/shell/freeform/SmartPopupViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;-><init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    new-instance v0, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/SmartPopupViewService$1;-><init>(Lcom/android/wm/shell/freeform/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/service/notification/NotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SmartPopupViewService] onNotificationPosted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FreeformContainer"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SmartPopupViewService] SuppressedVisibleEffects now. mZenMode="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mZenMode:I

    invoke-static {p0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string/jumbo p2, "progress"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo p2, "service"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: group summary notification is not target"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/app/Notification;->isForegroundService()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: forgroundservice notification is not target"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: Freeform notification is not target"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/wm/shell/freeform/SmartPopupViewItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 p2, 0x17

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_9
    :goto_1
    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: there is empty parameter"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SmartPopupViewService] onNotificationRemoved: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v0, 0x18

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[SmartPopupViewService] onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/android/wm/shell/freeform/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewService;->mPackageRemovedReceiver:Lcom/android/wm/shell/freeform/SmartPopupViewService$1;

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
