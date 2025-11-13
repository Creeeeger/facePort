.class public Landroidx/picker/loader/select/AllAppsSelectableItem;
.super Landroidx/picker/loader/select/SelectableItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u0008H\u0002J\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0014\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004J\u0008\u0010\u0010\u001a\u00020\u0008H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/picker/loader/select/AllAppsSelectableItem;",
        "Landroidx/picker/loader/select/SelectableItem;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "selectableItemList",
        "",
        "onUpdated",
        "Lkotlin/Function1;",
        "",
        "",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "disposableHandle",
        "",
        "bindSelectableItemList",
        "dispose",
        "reset",
        "dataList",
        "updateAllAppsStatus",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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
.method public static synthetic $r8$lambda$yDGyVr1G5pXGS_v1rg4q-rrDPC4(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList$lambda$4(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

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

    const-string/jumbo v0, "selectableItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/picker/loader/select/AllAppsSelectableItem$1;->INSTANCE:Landroidx/picker/loader/select/AllAppsSelectableItem$1;

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/loader/select/AllAppsSelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getSelectableItemList$p(Landroidx/picker/loader/select/AllAppsSelectableItem;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$updateAllAppsStatus(Landroidx/picker/loader/select/AllAppsSelectableItem;)V
    .locals 0

    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->updateAllAppsStatus()V

    return-void
.end method

.method private final bindSelectableItemList()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    new-instance v0, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposable1$1;

    invoke-direct {v0, p0}, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposable1$1;-><init>(Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    invoke-virtual {p0, v0}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

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

    new-instance v4, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;

    invoke-direct {v4, p0}, Landroidx/picker/loader/select/AllAppsSelectableItem$bindSelectableItemList$disposableHandleList$1$1;-><init>(Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    invoke-virtual {v3, v4}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/picker/loader/select/AllAppsSelectableItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroidx/picker/loader/select/AllAppsSelectableItem$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V

    iput-object v1, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method private static final bindSelectableItemList$lambda$4(Lkotlinx/coroutines/DisposableHandle;Ljava/util/List;)V
    .locals 1

    const-string v0, "$disposable1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$disposableHandleList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

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

    iget-object p0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method

.method public final reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/loader/select/SelectableItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/loader/select/AllAppsSelectableItem;->selectableItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->bindSelectableItemList()V

    return-void
.end method
