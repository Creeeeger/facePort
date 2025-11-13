.class public final Landroidx/compose/runtime/AtomicInt;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/AtomicInt;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# virtual methods
.method public final byteValue()B
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public final shortValue()S
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
