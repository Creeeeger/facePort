.class final Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->this$0:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Collection;

    check-cast p2, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->this$0:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;-><init>(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->label:I

    if-nez v0, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->this$0:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/panel/domain/model/ComponentModel;

    new-instance v3, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v4, v2, Lcom/android/systemui/volume/panel/domain/model/ComponentModel;->key:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelComponent:Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

    invoke-interface {v5}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->componentsFactory()Lcom/android/systemui/volume/panel/ui/composable/ComponentsFactory;

    move-result-object v5

    iget-object v6, v5, Lcom/android/systemui/volume/panel/ui/composable/ComponentsFactory;->componentByKey:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/systemui/volume/panel/domain/model/ComponentModel;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/android/systemui/volume/panel/ui/composable/ComponentsFactory;->componentByKey:Ljava/util/Map;

    invoke-static {v7, v5}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/panel/shared/model/VolumePanelUiComponent;

    iget-boolean v2, v2, Lcom/android/systemui/volume/panel/domain/model/ComponentModel;->isAvailable:Z

    invoke-direct {v3, v4, v5, v2}, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;-><init>(Ljava/lang/String;Lcom/android/systemui/volume/panel/shared/model/VolumePanelUiComponent;Z)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Component for key="

    const-string p1, " is not bound."

    invoke-static {p0, v7, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;->this$0:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelComponent:Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

    invoke-interface {p0}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->componentsLayoutManager()Lcom/android/systemui/volume/panel/ui/layout/ComponentsLayoutManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->bottomBar:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v5, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->headerComponents:Ljava/util/Collection;

    iget-object v6, v4, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->footerComponents:Ljava/util/Collection;

    iget-object v4, v4, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v6, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->headerComponents:Ljava/util/Collection;

    iget-object v5, v5, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$1;-><init>(Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v7, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->footerComponents:Ljava/util/Collection;

    iget-object v6, v6, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;-><init>(Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;)V

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$3;

    invoke-direct {v2}, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$3;-><init>()V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v4, v4, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    check-cast v2, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    if-eqz v2, :cond_a

    new-instance v1, Lcom/android/systemui/volume/panel/ui/layout/ComponentsLayout;

    invoke-direct {v1, v0, p1, p0, v2}, Lcom/android/systemui/volume/panel/ui/layout/ComponentsLayout;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;)V

    return-object v1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VolumePanelComponents.BOTTOM_BAR must be present in the default components layout."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
