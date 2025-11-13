.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
.super Ljava/lang/Object;
.source "GtsItemSupplierGroup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsItemSupplierGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsItemSupplierGroup.kt\ncom/samsung/android/gtscell/data/GtsItemSupplierGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1418#2,9:48\n1648#2,2:57\n1427#2:59\n1418#2,9:60\n1648#2,2:69\n1427#2:71\n1418#2,9:72\n1648#2,2:81\n1427#2:83\n1418#2,9:84\n1648#2,2:93\n1427#2:95\n*E\n*S KotlinDebug\n*F\n+ 1 GtsItemSupplierGroup.kt\ncom/samsung/android/gtscell/data/GtsItemSupplierGroup\n*L\n9#1,9:48\n9#1,2:57\n9#1:59\n17#1,9:60\n17#1,2:69\n17#1:71\n27#1,9:72\n27#1,2:81\n27#1:83\n35#1,9:84\n35#1,2:93\n35#1:95\n*E\n"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suppliers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final expressions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getExpression()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 56
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final filterExpressions(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 18
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getExpression()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    if-eqz v4, :cond_0

    .line 68
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final filterItems(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 36
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItem()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsItem;

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    if-eqz v4, :cond_0

    .line 92
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuppliers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    return-object p0
.end method

.method public final items()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItem()Lcom/samsung/android/gtscell/data/GtsSupplier;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/gtscell/data/GtsSupplier;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsItem;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItemSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "$this$verify"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected key("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") but key("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
