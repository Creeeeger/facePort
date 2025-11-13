.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final synthetic val$deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;->val$deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSetupChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;->val$deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
