.class public final Landroidx/picker/controller/strategy/task/LimitedSelectableTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public disposableHandle:Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;

.field public final limited:I

.field public selectedSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->limited:I

    return-void
.end method


# virtual methods
.method public final execute(Ljava/util/List;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v3, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/model/viewdata/AppInfoViewData;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/picker/loader/select/SelectableItem;

    iget-object v5, v5, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v5}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    iget-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->disposableHandle:Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;->dispose()V

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/loader/select/SelectableItem;

    new-instance v4, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;

    invoke-direct {v4, p0}, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;-><init>(Landroidx/picker/controller/strategy/task/LimitedSelectableTask;)V

    invoke-virtual {v2, v4}, Landroidx/picker/loader/select/SelectableItem;->registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    new-instance v5, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;

    invoke-direct {v5, p0, v3, v2, v0}, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableAfter$1;-><init>(Landroidx/picker/controller/strategy/task/LimitedSelectableTask;Landroidx/picker/model/viewdata/AppInfoViewData;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    filled-new-array {v4, v2}, [Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_5

    :cond_a
    new-instance v0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->disposableHandle:Landroidx/picker/controller/strategy/task/LimitedSelectableTask$$ExternalSyntheticLambda0;

    return-void
.end method
