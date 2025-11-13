.class Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetDEBUG(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onEntryAdded :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v1, "SummarizeCoordinator"

    invoke-static {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflateDone:Z

    return-void
.end method

.method public bridge synthetic onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetDEBUG(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onEntryUpdated :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v1, "SummarizeCoordinator"

    invoke-static {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflateDone:Z

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public bridge synthetic onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRankingApplied()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
