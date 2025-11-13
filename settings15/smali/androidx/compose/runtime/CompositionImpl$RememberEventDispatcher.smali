.class public final Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
    .locals 0

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

    invoke-direct {p1}, Landroidx/collection/MutableIntList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    new-instance p1, Landroidx/collection/MutableIntList;

    invoke-direct {p1}, Landroidx/collection/MutableIntList;-><init>()V

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 5

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->processPendingLeaving(I)V

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string v0, "Compose:onForgotten"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/runtime/RememberObserver;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->abandoning:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {v3}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v2}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_2

    :cond_1
    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v2}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :goto_6
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final processPendingLeaving(I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    iget v6, v5, Landroidx/collection/MutableIntList;->_size:I

    const-string v7, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    if-ge v4, v6, :cond_2

    invoke-virtual {v5, v4}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v6

    if-gt p1, v6, :cond_1

    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v5

    iget-object v8, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {v8, v4}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result v8

    if-nez v1, :cond_0

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroidx/collection/MutableIntList;

    invoke-direct {v3}, Landroidx/collection/MutableIntList;-><init>()V

    invoke-virtual {v3, v5}, Landroidx/collection/MutableIntList;->add(I)V

    new-instance v2, Landroidx/collection/MutableIntList;

    invoke-direct {v2}, Landroidx/collection/MutableIntList;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Landroidx/collection/MutableIntList;->add(I)V

    invoke-virtual {v2, v8}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ge v0, p1, :cond_6

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v3, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_3

    if-ne v8, v7, :cond_4

    invoke-virtual {v2, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    if-ge v7, v8, :cond_4

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    invoke-virtual {v2, v0, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v2, v6, v7}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v3, v0}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v7

    invoke-virtual {v3, v6}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v8

    invoke-virtual {v3, v0, v8}, Landroidx/collection/MutableIntList;->set(II)V

    invoke-virtual {v3, v6, v7}, Landroidx/collection/MutableIntList;->set(II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public final recordLeaving(Ljava/lang/Object;III)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->processPendingLeaving(I)V

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->pending:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->priorities:Landroidx/collection/MutableIntList;

    invoke-virtual {p1, p3}, Landroidx/collection/MutableIntList;->add(I)V

    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->afters:Landroidx/collection/MutableIntList;

    invoke-virtual {p0, p4}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->leaving:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
