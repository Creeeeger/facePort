.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005J#\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110\u0010H\u0086\u0008J#\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110\u0010H\u0086\u0008J\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0005J\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        "",
        "name",
        "",
        "suppliers",
        "",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "getName",
        "()Ljava/lang/String;",
        "getSuppliers",
        "()Ljava/util/List;",
        "expressions",
        "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
        "filterExpressions",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "filterItems",
        "Lcom/samsung/android/gtscell/data/GtsItem;",
        "items",
        "verify",
        "",
        "key",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final suppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

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

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final filterExpressions(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

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

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final filterItems(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->getSuppliers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

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

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

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

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->suppliers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

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

    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;->verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final verify(Lcom/samsung/android/gtscell/data/GtsItemSupplier;Ljava/lang/String;)V
    .locals 2

    const-string p0, "$this$verify"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;->getItemKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
