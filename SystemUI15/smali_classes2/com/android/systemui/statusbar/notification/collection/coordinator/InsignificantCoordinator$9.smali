.class Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "INSIGNIFICANT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onNotifInflationError mWaitingForGroupSummary = false "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fputmWaitingForGroupSummary(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmNotificationManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 v1, 0x7b

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$mupdateInsignificantSummary(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNotifInflationErrorCleared(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method
