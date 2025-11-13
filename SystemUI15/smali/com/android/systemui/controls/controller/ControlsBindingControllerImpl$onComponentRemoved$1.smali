.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;->$componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    :cond_0
    return-void
.end method
