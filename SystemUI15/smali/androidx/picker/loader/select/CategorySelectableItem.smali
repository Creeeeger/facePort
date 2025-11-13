.class public Landroidx/picker/loader/select/CategorySelectableItem;
.super Landroidx/picker/loader/select/SelectableItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final selectableItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VMmMJ05zjjJcTcAvXCxt9G-kB2w(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/loader/select/CategorySelectableItem;->bindSelectableItemList$lambda$3(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v1}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    new-instance v0, Landroidx/picker/features/observable/BooleanState;

    invoke-direct {v0, v2}, Landroidx/picker/features/observable/BooleanState;-><init>(Z)V

    invoke-direct {p0, v0, p2}, Landroidx/picker/loader/select/SelectableItem;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Ljava/util/Collection;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroidx/picker/loader/select/CategorySelectableItem;->selectableItemList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/picker/loader/select/CategorySelectableItem;->bindSelectableItemList()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/picker/loader/select/CategorySelectableItem$1;->INSTANCE:Landroidx/picker/loader/select/CategorySelectableItem$1;

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/CategorySelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getSelectableItemList$p(Landroidx/picker/loader/select/CategorySelectableItem;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/picker/loader/select/CategorySelectableItem;->selectableItemList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$updateAllAppsStatus(Landroidx/picker/loader/select/CategorySelectableItem;)V
    .locals 0

    invoke-direct {p0}, Landroidx/picker/loader/select/CategorySelectableItem;->updateAllAppsStatus()V

    return-void
.end method

.method private final bindSelectableItemList()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/loader/select/CategorySelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    new-instance v0, Landroidx/picker/loader/select/CategorySelectableItem$bindSelectableItemList$disposable1$1;

    invoke-direct {v0, p0}, Landroidx/picker/loader/select/CategorySelectableItem$bindSelectableItemList$disposable1$1;-><init>(Landroidx/picker/loader/select/CategorySelectableItem;)V

    invoke-virtual {p0, v0}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/loader/select/CategorySelectableItem;->selectableItemList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/loader/select/SelectableItem;

    new-instance v4, Landroidx/picker/loader/select/CategorySelectableItem$bindSelectableItemList$disposableHandleList$1$1;

    invoke-direct {v4, p0}, Landroidx/picker/loader/select/CategorySelectableItem$bindSelectableItemList$disposableHandleList$1$1;-><init>(Landroidx/picker/loader/select/CategorySelectableItem;)V

    invoke-virtual {v3, v4}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/picker/loader/select/CategorySelectableItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroidx/picker/loader/select/CategorySelectableItem$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

    iput-object v1, p0, Landroidx/picker/loader/select/CategorySelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method private static final bindSelectableItemList$lambda$3(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateAllAppsStatus()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/loader/select/CategorySelectableItem;->selectableItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/loader/select/CategorySelectableItem;->selectableItemList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v1}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/picker/loader/select/CategorySelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
