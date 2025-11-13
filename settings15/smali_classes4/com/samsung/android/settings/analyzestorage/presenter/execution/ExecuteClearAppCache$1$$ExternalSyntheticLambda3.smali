.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getSize()J

    move-result-wide p0

    return-wide p0
.end method
