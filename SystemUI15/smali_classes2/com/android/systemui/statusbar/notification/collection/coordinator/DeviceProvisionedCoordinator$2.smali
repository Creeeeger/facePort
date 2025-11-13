.class Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;->-$$Nest$fgetmNotifFilter(Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p0

    const-string v0, "onDeviceProvisionedChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onUserSetupChanged()V
    .locals 0

    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    return-void
.end method
