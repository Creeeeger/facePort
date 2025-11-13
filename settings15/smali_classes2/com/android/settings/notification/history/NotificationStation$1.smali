.class public final Lcom/android/settings/notification/history/NotificationStation$1;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/history/NotificationStation;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/history/NotificationStation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    iget-object v1, v1, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    sget v1, Lcom/android/settings/notification/history/NotificationStation;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/INotificationManager;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x2

    new-array v6, v5, [[Landroid/service/notification/StatusBarNotification;

    aput-object v2, v6, v1

    aput-object v3, v6, v0

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v7, v6, v3

    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_4

    :cond_1
    if-ne v7, v2, :cond_2

    move v11, v0

    goto :goto_3

    :cond_2
    move v11, v1

    :goto_3
    invoke-virtual {p0, v10, v11}, Lcom/android/settings/notification/history/NotificationStation;->createFromSbn(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v9, v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_5

    :cond_3
    add-int/2addr v3, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationSorter:Lcom/android/settings/notification/history/NotificationStation$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string v3, "NotificationStation"

    const-string v4, "Cannot load Notifications: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_7
    if-ge v1, v2, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    new-instance v4, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/2addr v1, v0

    goto :goto_7

    :cond_6
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    sget v1, Lcom/android/settings/notification/history/NotificationStation;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    iput-object p2, v1, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/history/NotificationStation;->createFromSbn(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    iget-object v4, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    if-nez v4, :cond_2

    iget-boolean v5, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    if-nez v5, :cond_2

    iget-object v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    iput-object v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->channel:Landroid/app/NotificationChannel;

    iget-object v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->text:Ljava/lang/CharSequence;

    iput-object v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->text:Ljava/lang/CharSequence;

    iget-wide v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iput-wide v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-boolean v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    iput-boolean v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    iput-boolean v4, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->alerted:Z

    iput-boolean v5, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->visuallyInterruptive:Z

    iget-object v0, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->notificationExtra:Ljava/lang/CharSequence;

    iput-object v0, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->notificationExtra:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->rankingExtra:Ljava/lang/CharSequence;

    iput-object p2, v3, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->rankingExtra:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    goto :goto_2

    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    new-instance p2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    invoke-direct {p2, v0, v1, p0}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_2
    return-void
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    :goto_0
    sget v0, Lcom/android/settings/notification/history/NotificationStation;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/history/NotificationStation;->updateFromRanking(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    :goto_0
    sget v0, Lcom/android/settings/notification/history/NotificationStation;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    iput-object p2, v0, Lcom/android/settings/notification/history/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationStation;->mNotificationInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;

    iget-object v3, v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v0, v2, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;->active:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationPreference;->updatePreference(Lcom/android/settings/notification/history/NotificationStation$HistoricalNotificationInfo;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
