.class public final Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;

.field public static final sBlockChannelSet:Ljava/util/HashSet;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsRegister:Z

.field public final mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "CHANNEL_ID_RECORDING_SCREEN"

    const-string/jumbo v2, "voice_note_notification_channel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->sBlockChannelSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    return-void
.end method

.method public static getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 4

    const-string v0, "CoverLauncher_NotificationListener"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "semBadgeTarget"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final updateBadge(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    iget p1, p1, Landroid/app/Notification;->number:I

    invoke-direct {v2, v1, v0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateBadge item="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoverLauncher_NotificationListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p1

    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-nez v0, :cond_0

    if-nez p0, :cond_3

    new-instance p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->addItem(Ljava/lang/String;Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;)V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    iget v1, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    sub-int/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    const-string v0, "remove item, key : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverLauncher_BadgeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "Dump CoverLauncher_NotificationListener"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mIsRegister="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "BadgeItem : "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 2

    const-string v0, "CoverLauncher_NotificationListener"

    const-string v1, "NotificationListener onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "CoverLauncher_NotificationListener"

    const-string v1, "NotificationListener onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public final onListenerConnected()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    const-string v1, "NotificationListener onListenerConnected mIsRegister="

    const-string v2, "CoverLauncher_NotificationListener"

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setOnNotificationPostedTrim(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->onNotificationFullRefresh()V

    sget-object v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->updateAppWidget(Z)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 2

    const-string v0, "CoverLauncher_NotificationListener"

    const-string v1, "NotificationListener onListenerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    sget-object p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final onNotificationFullRefresh()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    const-string v1, "onNotificationFullRefresh mIsRegister="

    const-string v2, "CoverLauncher_NotificationListener"

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v3

    invoke-static {v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    iget v2, v2, Landroid/app/Notification;->number:I

    invoke-direct {v5, v4, v3, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p0

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    iget-object v4, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    iget-object v5, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->addItem(Ljava/lang/String;Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;)V

    :cond_7
    invoke-virtual {v4, v3}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-nez v3, :cond_a

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v4, :cond_9

    iget v3, v3, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    const/16 v5, 0x3e7

    if-le v3, v5, :cond_c

    move v3, v5

    :cond_c
    iget v4, v4, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    if-le v4, v5, :cond_d

    goto :goto_6

    :cond_d
    move v5, v4

    :goto_6
    if-ne v3, v5, :cond_9

    :cond_e
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->sBlockChannelSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->updateBadge(Landroid/service/notification/StatusBarNotification;)V

    sget-object p1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->updateAppWidget(Z)V

    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const-string p1, "CoverLauncher_NotificationListener"

    const-string v0, "onNotificationRankingUpdate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->onNotificationFullRefresh()V

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->getTargetActivity(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    iget p1, p1, Landroid/app/Notification;->number:I

    invoke-direct {v2, v1, v0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object p1

    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    iget v4, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->info:Ljava/lang/String;

    const-string v1, "remove item, key : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverLauncher_BadgeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->updateAppWidget(Z)V

    return-void
.end method

.method public final shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :cond_5
    :goto_2
    return v1
.end method
