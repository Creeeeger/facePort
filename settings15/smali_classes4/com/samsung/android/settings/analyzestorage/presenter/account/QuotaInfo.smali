.class public final Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public additionalUsageInfo:[J

.field public totalSize:J

.field public usedSize:J


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    iget-wide v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    array-length v0, p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    array-length v1, p0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QuotaInfo{mTotalSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mUsedSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", mAdditionalUsageInfo="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
