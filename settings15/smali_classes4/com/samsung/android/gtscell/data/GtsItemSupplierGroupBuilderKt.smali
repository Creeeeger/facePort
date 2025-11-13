.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a,\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a0\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0018\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\t\u0012\u0004\u0012\u00020\u00040\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a(\u0010\u000e\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a*\u0010\u0010\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\t2\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u000f\u001a6\u0010\u000e\u001a\u00020\u0011*\u0008\u0012\u0004\u0012\u00020\u00060\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u0012\u001a\"\u0010\u0014\u001a\u00020\u0004*\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00130\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "",
        "groupName",
        "Lkotlin/Function1;",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
        "",
        "action",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        "gtsItemSupplierGroup",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
        "",
        "",
        "gtsItemSupplierGroups",
        "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;",
        "Lkotlin/Function0;",
        "group",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V",
        "groupNotNull",
        "",
        "(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z",
        "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
        "item",
        "(Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;Lkotlin/jvm/functions/Function0;)V",
        "gtscell_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final group(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final group(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")Z"
        }
    .end annotation

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final groupNotNull(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$groupNotNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final gtsItemSupplierGroup(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;"
        }
    .end annotation

    const-string v0, "groupName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final gtsItemSupplierGroups(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final item(Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->add(Ljava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsListBuilder;

    return-void
.end method
