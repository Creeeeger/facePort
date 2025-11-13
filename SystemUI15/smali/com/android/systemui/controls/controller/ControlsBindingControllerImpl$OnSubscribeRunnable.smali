.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;
.super Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final requestLimit:J

.field public final subscription:Landroid/service/controls/IControlsSubscription;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/service/controls/IControlsSubscription;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    iput-wide p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->requestLimit:J

    return-void
.end method


# virtual methods
.method public final doRun()V
    .locals 4

    const-string v0, "ControlsBindingControllerImpl"

    const-string v1, "LoadSubscription: Starting subscription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    iget-wide v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->requestLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->startSubscription(Landroid/service/controls/IControlsSubscription;J)V

    :cond_0
    return-void
.end method
