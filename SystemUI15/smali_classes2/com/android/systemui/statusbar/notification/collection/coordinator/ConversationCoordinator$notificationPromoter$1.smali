.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    const-string p1, "ConversationCoordinator"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldPromoteToTopLevel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->access$getPromotedEntriesToSummaryOfSameChannel$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v1
.end method
