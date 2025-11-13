.class public abstract Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 1

    instance-of v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/common/base/Supplier;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
