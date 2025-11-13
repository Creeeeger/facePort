.class public final Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mDidRun:Z

.field public mDidSystemServerCancel:Z

.field public final mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mLabel:Ljava/lang/String;

.field public final mStatsCreator:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;

.field public final mSummaryToDismiss:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mStatsCreator:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, p4, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p4, v2, v4

    if-nez p4, :cond_0

    iget-object p4, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, p4, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p4, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;->nonDismissableEntryKeys:Ljava/util/Set;

    iget-object v0, p4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    move-object v1, p4

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mSummaryToDismiss:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "<FutureDismissal@"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " entry="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLoggerKt;->cancellationReasonDebugString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " summary="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mDidRun:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalDoubleRun(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mDidRun:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFutureDismissals:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mStatsCreator:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;->createDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mSummaryToDismiss:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mSummaryToDismiss:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string/jumbo v4, "summary"

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v2, p0, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalDismissing(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mSummaryToDismiss:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mStatsCreator:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl$$ExternalSyntheticLambda0;->createDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalMismatchedEntry(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mDidSystemServerCancel:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalAlreadyCancelledByServer(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v3, "entry"

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalDismissing(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    invoke-virtual {v1, p0, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalMismatchedEntry(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_1
    return-void
.end method
