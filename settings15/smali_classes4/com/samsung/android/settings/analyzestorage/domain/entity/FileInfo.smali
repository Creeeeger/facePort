.class public interface abstract Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public getUniqueId()Ljava/lang/String;
    .locals 0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getFileId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
