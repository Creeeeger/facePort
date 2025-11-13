.class Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;->-$$Nest$fgetmDeviceProvisionedController(Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;->-$$Nest$mshowNotificationEvenIfUnprovisioned(Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
