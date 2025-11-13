.class Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateNotifications(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmNotifFilter(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V
    .locals 1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p3, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$misInterceptingDismissal(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmInterceptedDismissalEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;

    move-result-object p3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmOnEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmDismissInterceptor(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    move-result-object p0

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Cannot end dismiss interceptor for interceptor \"%s\" (%s)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmNotifPipeline(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object p3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmNotifCollection(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    :cond_4
    :goto_0
    return-void
.end method
