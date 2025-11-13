.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/service/controls/ControlsProviderInfo;

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->isAutoRemove:Z

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadControlsProviderInfo$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object p1

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateLaunchingAppButton$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
