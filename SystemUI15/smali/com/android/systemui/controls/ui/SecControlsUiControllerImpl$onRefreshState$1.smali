.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onRefreshState: app="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, controls.size="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecControlsUiControllerImpl"

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/controls/Control;

    iget-object v9, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v10, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onRefreshState: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v12, :cond_0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v12, v12, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    check-cast v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v10, :cond_2a

    invoke-virtual {v7}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v9, ""

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    :cond_5
    move-object v6, v9

    :cond_6
    invoke-virtual {v7}, Landroid/service/controls/Control;->getStatus()I

    move-result v12

    iget-object v13, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    if-ne v12, v8, :cond_15

    iget-object v12, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v8

    if-eqz v12, :cond_15

    iget-object v12, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    move-object v9, v12

    :cond_8
    :goto_4
    iget-object v12, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    instance-of v5, v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v5, :cond_9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v15, v15, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v12, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    iget-object v14, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v8

    iget-object v15, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v2

    instance-of v2, v8, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v2, :cond_d

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v2, v17

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v17, v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v11, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    :goto_8
    check-cast v8, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v8, :cond_11

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v14

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v8, 0x1

    xor-int/2addr v2, v8

    if-eqz v2, :cond_12

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    if-le v12, v14, :cond_12

    add-int/lit8 v14, v14, 0x1

    :cond_12
    iput-object v9, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v2, :cond_13

    new-instance v11, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v5, v2, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-direct {v11, v5, v2, v7}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    goto :goto_9

    :cond_13
    const/4 v11, 0x0

    :goto_9
    iput-object v11, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v4, v12, v14}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->moveElement$1(II)V

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v2, :cond_14

    invoke-virtual {v2, v12, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    :cond_14
    invoke-virtual {v4, v14, v10}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "notifyItemMoved: from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_15
    move-object/from16 v17, v2

    iget-object v2, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v2, :cond_16

    new-instance v5, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v6

    invoke-direct {v5, v2, v6, v7}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_a
    iput-object v5, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v7}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v5, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$$inlined$filterIsInstance$1;

    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$1;

    invoke-direct {v5, v7}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$1;-><init>(Landroid/service/controls/Control;)V

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$2;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$2;

    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$3;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$3;

    new-instance v6, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v6, v2, v5}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {v2, v6}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    const/4 v5, 0x0

    :goto_b
    iget-object v6, v2, Lkotlin/sequences/TransformingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v2}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v6

    if-ltz v5, :cond_18

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v2, 0x0

    goto :goto_c

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_18
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v2, 0x0

    throw v2

    :cond_19
    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_c
    if-ltz v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_d

    :cond_1a
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_e

    :cond_1b
    const/4 v2, 0x0

    :cond_1c
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_28

    iget-object v5, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v5, :cond_29

    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_f

    :cond_1d
    move-object v9, v5

    :goto_f
    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v8, :cond_1e

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v8, v8, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_22
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v9, v11, :cond_22

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_23
    sget-object v7, Lkotlin/comparisons/NaturalOrderComparator;->INSTANCE:Lkotlin/comparisons/NaturalOrderComparator;

    new-instance v8, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$refreshOrdering$lambda$60$$inlined$compareBy$1;

    invoke-direct {v7, v8}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$refreshOrdering$lambda$60$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v8, :cond_27

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v9, v11, :cond_24

    move-object v11, v8

    goto :goto_13

    :cond_25
    move-object v11, v2

    :goto_13
    check-cast v11, Lcom/android/systemui/controls/management/model/MainModel;

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-interface {v6, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v7, v5}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->moveElement$1(II)V

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v2, :cond_26

    invoke-virtual {v2, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    invoke-virtual {v2, v5, v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_26
    const-string v2, "refreshOrdering: "

    const-string v6, " -> "

    invoke-static {v7, v5, v2, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v5

    :cond_27
    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v2, :cond_29

    invoke-virtual {v2, v7, v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_14

    :cond_28
    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2, v10}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    :cond_29
    :goto_14
    const/4 v6, 0x1

    goto :goto_15

    :cond_2a
    move-object/from16 v17, v2

    :goto_15
    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_2b
    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    if-eqz v6, :cond_2c

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    :cond_2c
    return-void
.end method
