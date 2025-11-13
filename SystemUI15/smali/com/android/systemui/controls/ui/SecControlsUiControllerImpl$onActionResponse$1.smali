.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controlId:Ljava/lang/String;

.field public final synthetic $response:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;->$response:I

    new-instance v2, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;-><init>(Ljava/lang/String;I)V

    iget-object p0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
