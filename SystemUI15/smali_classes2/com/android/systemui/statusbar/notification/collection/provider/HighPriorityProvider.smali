.class public final Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    return-void
.end method


# virtual methods
.method public final isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_8

    if-eqz p2, :cond_4

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    check-cast v2, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const-class v3, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v2, v3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eq v3, p1, :cond_6

    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->semPriority:I

    if-lez p0, :cond_9

    :cond_8
    :goto_2
    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final isHighPriorityConversation(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    check-cast p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method
