.class Landroid/service/controls/ControlsProviderService$1;
.super Landroid/service/controls/IControlsProvider$Stub;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/controls/ControlsProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/controls/ControlsProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/service/controls/ControlsProviderService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-direct {p0}, Landroid/service/controls/IControlsProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V
    .locals 3

    new-instance v0, Landroid/service/controls/ControlsProviderService$ActionMessage;

    invoke-virtual {p2}, Landroid/service/controls/actions/ControlActionWrapper;->getWrappedAction()Landroid/service/controls/actions/ControlAction;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Landroid/service/controls/ControlsProviderService$ActionMessage;-><init>(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)V

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/service/controls/ControlsProviderService$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist load(Landroid/service/controls/IControlsSubscriber;)V
    .locals 2

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist loadControlsProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)V
    .locals 2

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist loadSuggested(Landroid/service/controls/IControlsSubscriber;)V
    .locals 2

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;

    invoke-direct {v0, p1, p2}, Landroid/service/controls/ControlsProviderService$SubscribeMessage;-><init>(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$1;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/service/controls/ControlsProviderService$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
