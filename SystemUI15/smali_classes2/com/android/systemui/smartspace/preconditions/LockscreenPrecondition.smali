.class public final Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/smartspace/SmartspacePrecondition;


# instance fields
.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final deviceProvisionedListener:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;

.field public deviceReady:Z

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/util/concurrency/Execution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p2, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->execution:Lcom/android/systemui/util/concurrency/Execution;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->listeners:Ljava/util/Set;

    new-instance p2, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;)V

    iput-object p2, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedListener:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->updateDeviceReadiness()V

    return-void
.end method


# virtual methods
.method public final updateDeviceReadiness()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceReady:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->deviceProvisionedListener:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->listeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$preconditionListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->$r8$clinit:I

    iget-object v1, v1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$preconditionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object v1, v1, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
