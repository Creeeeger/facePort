.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public accountId:Ljava/lang/String;

.field public cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

.field public quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-ne v2, v0, :cond_4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
