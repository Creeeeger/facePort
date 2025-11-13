.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $control:Landroid/service/controls/Control;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->$control:Landroid/service/controls/Control;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->$componentName:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRefreshState app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removeControl:  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecControlsUiControllerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v5, v5, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v5, :cond_3

    iget-object v4, v5, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    :cond_4
    check-cast v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v4, :cond_6

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_5
    const-string v1, "notifyItemRemoved: "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    :cond_6
    return-void
.end method
