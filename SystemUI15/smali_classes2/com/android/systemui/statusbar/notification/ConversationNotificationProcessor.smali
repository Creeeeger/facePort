.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field public final launcherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    return-void
.end method


# virtual methods
.method public final processNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 3

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Notification$MessagingStyle;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Notification$MessagingStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationType(I)Landroid/app/Notification$MessagingStyle;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "getting shortcut icon"

    invoke-virtual {p3, p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p3, v1}, Landroid/content/pm/LauncherApps;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/Notification$MessagingStyle;->setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p3, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    invoke-virtual {v0, p0}, Landroid/app/Notification$MessagingStyle;->setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;

    return-void
.end method
