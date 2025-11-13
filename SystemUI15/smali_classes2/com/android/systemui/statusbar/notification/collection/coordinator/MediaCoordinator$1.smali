.class Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->-$$Nest$fgetmIsMediaFeatureEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    sget-object p3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/Flags;->notificationsBackgroundIcons()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;->-$$Nest$minflateOrUpdateIcons(Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
