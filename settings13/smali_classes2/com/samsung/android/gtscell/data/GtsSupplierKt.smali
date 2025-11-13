.class public final Lcom/samsung/android/gtscell/data/GtsSupplierKt;
.super Ljava/lang/Object;
.source "GtsSupplier.kt"


# direct methods
.method public static final gtsSupplier(Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsSupplier;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "TT;TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
