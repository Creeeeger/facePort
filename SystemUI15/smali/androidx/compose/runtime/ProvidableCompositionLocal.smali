.class public abstract Landroidx/compose/runtime/ProvidableCompositionLocal;
.super Landroidx/compose/runtime/CompositionLocal;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final updatedStateOf$runtime_release(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;
    .locals 2

    instance-of p0, p2, Landroidx/compose/runtime/DynamicValueHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    if-eqz p0, :cond_3

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/DynamicValueHolder;

    iget-object p0, v0, Landroidx/compose/runtime/DynamicValueHolder;->state:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getEffectiveValue$runtime_release()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of p0, p2, Landroidx/compose/runtime/StaticValueHolder;

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    if-eqz p0, :cond_3

    :cond_1
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getEffectiveValue$runtime_release()Ljava/lang/Object;

    move-result-object p0

    check-cast p2, Landroidx/compose/runtime/StaticValueHolder;

    iget-object v1, p2, Landroidx/compose/runtime/StaticValueHolder;->value:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_2
    instance-of p0, p2, Landroidx/compose/runtime/ComputedValueHolder;

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    check-cast p2, Landroidx/compose/runtime/ComputedValueHolder;

    iget-object v1, p2, Landroidx/compose/runtime/ComputedValueHolder;->compute:Lkotlin/jvm/functions/Function1;

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_9

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    iget-object p2, p1, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_6

    new-instance p0, Landroidx/compose/runtime/DynamicValueHolder;

    if-nez p2, :cond_5

    iget-object p2, p1, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez p2, :cond_4

    sget-object p2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_4
    iget-object p1, p1, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    :cond_5
    invoke-direct {p0, p2}, Landroidx/compose/runtime/DynamicValueHolder;-><init>(Landroidx/compose/runtime/MutableState;)V

    :goto_2
    move-object v0, p0

    goto :goto_3

    :cond_6
    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_7

    new-instance p1, Landroidx/compose/runtime/ComputedValueHolder;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/ComputedValueHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v0, p1

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    new-instance p0, Landroidx/compose/runtime/DynamicValueHolder;

    invoke-direct {p0, p2}, Landroidx/compose/runtime/DynamicValueHolder;-><init>(Landroidx/compose/runtime/MutableState;)V

    goto :goto_2

    :cond_8
    new-instance p0, Landroidx/compose/runtime/StaticValueHolder;

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->getEffectiveValue$runtime_release()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    :goto_3
    return-object v0
.end method
