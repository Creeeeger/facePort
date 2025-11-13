.class public final Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->structureName:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->controlId:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->favorite:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    return-void
.end method
