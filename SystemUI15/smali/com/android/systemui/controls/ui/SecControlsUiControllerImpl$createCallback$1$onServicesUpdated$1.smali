.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $lastItems:Ljava/util/List;

.field public final synthetic $onResult:Lkotlin/jvm/functions/Function2;

.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SecSelectionItem;",
            ">;",
            "Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$onResult:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$lastItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/android/systemui/controls/util/ControlsUtil;->getListOfServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
