.class public final Lcom/samsung/android/gtscell/data/GtsExpressionGroupKt;
.super Ljava/lang/Object;
.source "GtsExpressionGroup.kt"


# direct methods
.method public static final of(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/gtscell/data/GtsExpressionGroup;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw;",
            ">;)",
            "Lcom/samsung/android/gtscell/data/GtsExpressionGroup;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionGroup;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/gtscell/data/GtsExpressionGroup;-><init>(Ljava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
