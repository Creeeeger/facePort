.class public final Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final abandoning:Ljava/util/Set;

.field public final afters:Landroidx/collection/MutableIntList;

.field public final leaving:Ljava/util/List;

.field public final pending:Ljava/util/List;

.field public final priorities:Landroidx/collection/MutableIntList;

.field public releasing:Landroidx/collection/MutableScatterSet;

.field public final remembering:Ljava/util/List;

.field public final sideEffects:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    new-instance p1, Landroidx/collection/MutableIntList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    new-instance p1, Landroidx/collection/MutableIntList;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    return-void
.end method


# virtual methods
.method public final dispatchAbandons()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 5

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->processPendingLeaving(I)V

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Compose:onForgotten"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/RememberObserver;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v4}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    instance-of v4, v3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v3}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_2

    :cond_1
    check-cast v3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v3}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    :cond_2
    :goto_2
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Compose:onRemembered"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/RememberObserver;

    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :goto_6
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_6
    :goto_7
    return-void
.end method

.method public final dispatchSideEffects()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Compose:sideeffects"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->sideEffects:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final processPendingLeaving(I)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_0
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    iget v8, v7, Landroidx/collection/IntList;->_size:I

    if-ge v3, v8, :cond_2

    invoke-virtual {v7, v3}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    if-gt p1, v8, :cond_1

    iget-object v8, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v3}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v7

    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {v9, v3}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v9

    if-nez v4, :cond_0

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Landroidx/collection/MutableIntList;

    invoke-direct {v6, v1, v0, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v7}, Landroidx/collection/MutableIntList;->add(I)V

    new-instance v5, Landroidx/collection/MutableIntList;

    invoke-direct {v5, v1, v0, v2}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v9}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Landroidx/collection/MutableIntList;->add(I)V

    invoke-virtual {v5, v9}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    if-ge v1, p1, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_5

    invoke-virtual {v6, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    if-lt v8, v9, :cond_3

    if-ne v9, v8, :cond_4

    invoke-virtual {v5, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    invoke-virtual {v5, v7}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    if-ge v8, v9, :cond_4

    :cond_3
    sget-object v8, Landroidx/compose/runtime/CompositionKt;->PendingApplyNoModifications:Ljava/lang/Object;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    invoke-virtual {v5, v7}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    invoke-virtual {v5, v1, v9}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v5, v7, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v6, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    invoke-virtual {v6, v1, v9}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v6, v7, v8}, Landroidx/collection/MutableIntList;->set(II)V

    :cond_4
    add-int/2addr v7, v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public final recordLeaving(IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->processPendingLeaving(I)V

    if-ltz p3, :cond_0

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableIntList;->add(I)V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    invoke-virtual {p0, p3}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
