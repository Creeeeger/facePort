.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->instanceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    invoke-direct {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method
