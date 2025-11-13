.class public final Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl$isDeviceProvisioned$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl$isDeviceProvisioned$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl$isDeviceProvisioned$1$listener$1;->this$0:Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl$isDeviceProvisioned$1$listener$1;->this$0:Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/data/repository/DeviceProvisioningRepositoryImpl$isDeviceProvisioned$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
