.class public final Lcom/android/systemui/controls/management/model/AllStructureModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# instance fields
.field public final controls:Ljava/util/List;

.field public final elements:Ljava/util/List;

.field public final favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

.field public final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

.field public final favoriteIds:Ljava/util/Map;

.field public final isLoading:Z

.field public final removedString:Ljava/lang/String;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    move/from16 v3, p5

    iput-boolean v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    const v3, 0x7f131067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v6}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    iget-object v7, v7, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v3, Ljava/util/List;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;-><init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V

    iput-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    iget-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    const v6, 0x7f13043c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    const v7, 0x7f130423

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v9, v9, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    if-eqz v9, :cond_8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    iget-object v8, v8, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v8}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_a

    move-object v8, v5

    :cond_a
    invoke-virtual {v15, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-boolean v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    invoke-direct {v1, v6}, Lcom/android/systemui/controls/management/model/LoadingWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_d
    new-instance v1, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    invoke-direct {v1, v6}, Lcom/android/systemui/controls/management/model/SubtitleWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    const/16 v6, 0xa

    if-eqz v1, :cond_f

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    iget-object v7, v7, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v18, Lcom/android/systemui/controls/management/model/AllControlsModel;

    iget-object v8, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    iget-object v14, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    iget-object v9, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v7, v18

    move-object v12, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    new-instance v1, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v1, v3}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    move-object v14, v7

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13, v15}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/util/List;

    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_11

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move-object v11, v8

    goto :goto_a

    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v7

    :goto_a
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v5, :cond_13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    move/from16 v16, v7

    goto :goto_c

    :cond_13
    :goto_b
    move/from16 v16, v5

    :goto_c
    new-instance v18, Lcom/android/systemui/controls/management/model/AllControlsModel;

    iget-object v8, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    move-object/from16 v7, v18

    move-object/from16 v17, v12

    move-object v12, v4

    move-object/from16 v19, v13

    move/from16 v13, v16

    move-object v5, v14

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v14, v18

    :goto_d
    const/4 v5, 0x1

    goto :goto_8

    :cond_14
    new-instance v7, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v7, v3}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/systemui/controls/management/model/ControlWrapper;

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v19

    move-object/from16 v19, v8

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v5

    goto :goto_d

    :cond_15
    move-object v5, v14

    if-eqz v5, :cond_1b

    iget-object v1, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    const v6, 0x7f070257

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v9, :cond_16

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_18

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_f

    :cond_18
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    iget-object v7, v7, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v7}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_19

    new-instance v3, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v3, v1}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1a
    :goto_f
    new-instance v1, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v1, v3}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    new-instance v1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v3, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    iget-boolean v6, v5, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_11
    iput-object v2, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public final getFavorites()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    iget-object v6, v6, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method
