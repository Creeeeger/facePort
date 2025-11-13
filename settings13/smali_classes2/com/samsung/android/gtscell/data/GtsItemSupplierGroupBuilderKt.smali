.class public final Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilderKt;
.super Ljava/lang/Object;
.source "GtsItemSupplierGroupBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsItemSupplierGroupBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsItemSupplierGroupBuilder.kt\ncom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilderKt\n*L\n1#1,39:1\n16#1:40\n*E\n*S KotlinDebug\n*F\n+ 1 GtsItemSupplierGroupBuilder.kt\ncom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilderKt\n*L\n35#1:40\n*E\n"
.end annotation


# direct methods
.method public static final group(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final group(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final groupNotNull(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$groupNotNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    if-eqz p1, :cond_0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final gtsItemSupplierGroup(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final gtsItemSupplierGroups(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final item(Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0    # Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplier;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->add(Ljava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsListBuilder;

    return-void
.end method
