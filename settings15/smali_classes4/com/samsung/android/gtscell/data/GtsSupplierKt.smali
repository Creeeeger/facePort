.class public final Lcom/samsung/android/gtscell/data/GtsSupplierKt;
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a9\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0016\u0008\u0004\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u0005H\u0086\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "gtsSupplier",
        "Lcom/samsung/android/gtscell/data/GtsSupplier;",
        "T",
        "R",
        "action",
        "Lkotlin/Function1;",
        "gtscell_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final gtsSupplier(Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/gtscell/data/GtsSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/samsung/android/gtscell/data/GtsSupplier<",
            "TT;TR;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/data/GtsSupplierKt$gtsSupplier$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
