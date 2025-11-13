.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic $uiExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/SecAppAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v1, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v2, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/systemui/controls/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "onServiceUpdated listOfServices = "

    const-string v2, "SecAppAdapter"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->$uiExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    new-instance v1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$callback$1$onServicesUpdated$1$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
