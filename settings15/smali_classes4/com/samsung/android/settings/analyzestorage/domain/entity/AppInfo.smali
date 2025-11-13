.class public interface abstract Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
