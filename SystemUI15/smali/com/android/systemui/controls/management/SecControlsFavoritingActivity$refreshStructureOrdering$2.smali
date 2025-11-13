.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $model:Lcom/android/systemui/controls/management/model/AllStructureModel;

.field public final synthetic $orderList:Ljava/util/List;

.field public final synthetic $update:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;",
            "Lcom/android/systemui/controls/management/model/AllStructureModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iput-object p2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    iput-object p3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$model:Lcom/android/systemui/controls/management/model/AllStructureModel;

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$orderList:Ljava/util/List;

    iget-object v3, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v6, v6, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    iget-object v7, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v8, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v6, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    check-cast v2, Ljava/util/Collection;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v8, v8, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v7, "StructureModel"

    const/4 v8, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v9, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    iget-object v9, v9, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/controls/ControlStatus;

    iget-object v10, v10, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v10}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v3, "changeStructureOrder SmallType Reorder"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v3, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    iget-object v9, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v8, v10

    goto :goto_6

    :cond_c
    iget-object v1, v1, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v4, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeStructureOrder after="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->$update:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
