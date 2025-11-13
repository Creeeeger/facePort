.class public final Lcom/android/systemui/controls/management/model/AllControlsModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final categoryHeader:Ljava/lang/CharSequence;

.field public final controls:Ljava/util/List;

.field public final elements:Ljava/util/List;

.field public final emptyStructureZoneString:Ljava/lang/CharSequence;

.field public final favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

.field public final favoriteIds:Ljava/util/List;

.field public final needCategoryHeader:Z

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    iput-object p5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    iput-object p7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    check-cast p3, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/controls/ControlStatus;

    iget-object p3, p3, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p4, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    const p5, 0x7f070258

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iget-object p5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    const p6, 0x7f07027e

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    move-object p6, p1

    check-cast p6, Ljava/lang/Iterable;

    new-instance p7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p6, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    iget-object v2, v2, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-static {p7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p7

    check-cast p7, Ljava/lang/Iterable;

    invoke-static {p7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p7

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p7, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p7

    if-eqz p7, :cond_4

    move p7, v5

    goto :goto_3

    :cond_4
    move p7, v4

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    const v2, 0x7f131067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v6, v6, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    if-eqz v6, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    :goto_5
    new-instance v3, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-object v6, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    iget-boolean v7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    invoke-direct {v3, v6, p7, v2, v7}, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;-><init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/controls/ControlStatus;

    new-instance p6, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    invoke-direct {p6, p5}, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;-><init>(Lcom/android/systemui/controls/ControlStatus;)V

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    invoke-direct {p1, p4}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_9
    new-instance p1, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;

    new-instance p7, Landroid/util/ArrayMap;

    invoke-direct {p7}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p1, p7}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_7
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_c

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    move-object v0, p7

    check-cast v0, Lcom/android/systemui/controls/ControlStatus;

    iget-object v0, v0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object p6, p1, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->orderedKeys:Ljava/util/List;

    check-cast p6, Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    move p7, v5

    :goto_8
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;

    new-instance v3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v3, v2, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p3, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_8

    :cond_d
    if-nez p7, :cond_e

    new-instance v1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    invoke-direct {v1, p5}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move p7, v4

    :goto_9
    new-instance v1, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_8

    :cond_f
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_13

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_10
    :goto_a
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_11

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    instance-of p7, p6, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;

    if-eqz p7, :cond_10

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_12

    new-instance p1, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;

    iget-object p5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    invoke-direct {p1, p5}, Lcom/android/systemui/controls/management/model/SecZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    new-instance p1, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    invoke-direct {p1, p4}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object v3, v3, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of v3, v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-object v1, v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    :cond_3
    check-cast v2, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of v4, v4, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_2
    if-ne v3, v5, :cond_6

    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    sub-int/2addr v3, v0

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    if-eqz v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_a

    :cond_9
    move v1, v3

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    iget-object v0, v0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v0, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    if-nez v0, :cond_b

    :goto_4
    iput-boolean v1, v2, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_c

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v1, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, p2}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    iput-boolean p2, v0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    iget-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_4

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method
