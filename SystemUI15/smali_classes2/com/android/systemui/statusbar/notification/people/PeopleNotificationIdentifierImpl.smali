.class public final Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;


# instance fields
.field public final groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    return-void
.end method


# virtual methods
.method public final getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-ne v0, v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;

    check-cast v1, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;->isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v1, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;)V

    new-instance p0, Lkotlin/sequences/TransformingSequence;

    invoke-direct {p0, v1, p1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {p1, p0}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    :cond_7
    invoke-virtual {p1}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v3, :cond_7

    :cond_8
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    return v3
.end method
