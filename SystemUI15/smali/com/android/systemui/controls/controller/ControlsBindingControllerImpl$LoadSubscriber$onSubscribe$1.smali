.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onSubscribe$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

.field final synthetic this$1:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onSubscribe$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onSubscribe$1;->this$1:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onSubscribe$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onSubscribe$1;->this$1:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->cancelSubscription(Landroid/service/controls/IControlsSubscription;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
