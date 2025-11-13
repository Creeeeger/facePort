.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cancelWrapper:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $dataCallback:Ljava/util/function/Consumer;

.field public final synthetic $providerInfoCallback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$dataCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$cancelWrapper:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$providerInfoCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$dataCallback:Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$cancelWrapper:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$3;->$providerInfoCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
