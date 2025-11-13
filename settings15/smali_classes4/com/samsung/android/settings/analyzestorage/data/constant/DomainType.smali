.class public abstract Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final isCloud(I)Z
    .locals 1

    const/16 v0, 0x65

    if-eq v0, p0, :cond_1

    const/16 v0, 0x66

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isInternalStorage(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isLocalStorage(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isUsb(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isSd(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isUsb(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq v0, p0, :cond_1

    const/16 v0, 0xb

    if-eq v0, p0, :cond_1

    const/16 v0, 0xc

    if-eq v0, p0, :cond_1

    const/16 v0, 0xd

    if-eq v0, p0, :cond_1

    const/16 v0, 0xe

    if-eq v0, p0, :cond_1

    const/16 v0, 0xf

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
