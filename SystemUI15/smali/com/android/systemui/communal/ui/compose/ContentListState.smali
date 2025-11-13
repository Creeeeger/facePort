.class public final Lcom/android/systemui/communal/ui/compose/ContentListState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final onAddWidget:Lkotlin/jvm/functions/Function3;

.field public final onDeleteWidget:Lkotlin/jvm/functions/Function1;

.field public final onReorderWidgets:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onAddWidget:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onDeleteWidget:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onReorderWidgets:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/util/Collection;

    new-instance p2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-void
.end method


# virtual methods
.method public final onRemove(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;->getAppWidgetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onDeleteWidget:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onSaveList(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    if-ltz v3, :cond_2

    check-cast v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    instance-of v7, v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    if-eqz v7, :cond_0

    check-cast v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    invoke-interface {v4}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;->getAppWidgetId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_3
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onReorderWidgets:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/ContentListState;->onAddWidget:Lkotlin/jvm/functions/Function3;

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
