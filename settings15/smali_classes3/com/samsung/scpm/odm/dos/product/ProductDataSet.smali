.class public final Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
.super Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    iput-object p4, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 3

    invoke-static {p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "modelCode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "modelName"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "modifiedDate"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "division"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "marketingName"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "keySpec"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    iget-object v1, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    iget v0, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;-><init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public static create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 4

    new-instance v0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is an exception, please check  { "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const v2, 0x55d4a80

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;-><init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method
