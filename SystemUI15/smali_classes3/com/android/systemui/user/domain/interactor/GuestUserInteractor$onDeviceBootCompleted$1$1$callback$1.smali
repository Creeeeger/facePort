.class public final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation;",
            "Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 2

    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1$1$callback$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
