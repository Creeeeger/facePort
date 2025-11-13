.class Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 2

    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmSubscreenController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmSubscreenController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_NOW_BAR_DEMO:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockVisible:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$mneedLockScreenExpandPanel(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p3

    :cond_2
    if-eqz p2, :cond_3

    return p3

    :cond_3
    return v0

    :cond_4
    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p2, p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$mneedLockScreenExpandPanel(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Z

    move-result p0

    if-eqz p0, :cond_5

    return p3

    :cond_5
    return v0

    :cond_6
    return p3
.end method
