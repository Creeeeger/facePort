.class public final Landroidx/picker/controller/strategy/task/SingleSelectableTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public disposableHandle:Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;


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

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask;->disposableHandle:Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;->dispose()V

    :cond_5
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v3}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/loader/select/SelectableItem;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    new-instance v4, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableBefore$1;

    invoke-direct {v4, v3, v0}, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableBefore$1;-><init>(Landroidx/picker/loader/select/SelectableItem;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v3, v4}, Landroidx/picker/loader/select/SelectableItem;->registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v4

    new-instance v5, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;

    invoke-direct {v5, v0, v3, p1}, Landroidx/picker/controller/strategy/task/SingleSelectableTask$execute$disposableHandleList$1$disposableAfter$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    filled-new-array {v4, v3}, [Lkotlinx/coroutines/DisposableHandle;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/loader/select/SelectableItem;

    if-eqz p1, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    :cond_9
    new-instance p1, Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/SingleSelectableTask;->disposableHandle:Landroidx/picker/controller/strategy/task/SingleSelectableTask$$ExternalSyntheticLambda0;

    return-void
.end method
