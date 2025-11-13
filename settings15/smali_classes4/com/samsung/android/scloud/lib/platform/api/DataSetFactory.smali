.class public abstract Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "filterId"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance p0, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    iget v4, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    iget v5, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    iget-object v6, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rmsg:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public static newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .locals 7

    new-instance v6, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is an exception, please check  { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v2, 0x55d4a80

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v6
.end method

.method public static newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const v2, 0x55d4a80

    if-eqz p0, :cond_0

    const-string/jumbo v3, "result"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "token"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rcode"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "rmsg"

    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const-string p0, "The returned value from SCPM is not correct(null or empty)."

    :goto_0
    new-instance v3, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    invoke-direct {v3, v0, v2, p0, v1}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
