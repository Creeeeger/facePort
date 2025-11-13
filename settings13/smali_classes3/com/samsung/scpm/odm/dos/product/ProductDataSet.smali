.class public Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
.super Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
.source "ProductDataSet.java"


# instance fields
.field public final color:Ljava/lang/String;

.field public final division:Ljava/lang/String;

.field public final keySpec:Ljava/lang/String;

.field public final marketingName:Ljava/lang/String;

.field public final modelCode:Ljava/lang/String;

.field public final modelName:Ljava/lang/String;

.field public final modifiedDate:Ljava/lang/String;

.field public final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "rcode",
            "rmsg",
            "modelCode",
            "modelName",
            "modifiedDate",
            "division",
            "color",
            "marketingName",
            "keySpec",
            "parcelFileDescriptor"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    .line 72
    iput-object p4, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->modelCode:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->modelName:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->modifiedDate:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->division:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->color:Ljava/lang/String;

    .line 77
    iput-object p9, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->marketingName:Ljava/lang/String;

    .line 78
    iput-object p10, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->keySpec:Ljava/lang/String;

    .line 79
    iput-object p11, p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "parcelFileDescriptor"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "modelCode"

    .line 93
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "modelName"

    .line 94
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "modifiedDate"

    .line 95
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "division"

    .line 96
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "color"

    .line 97
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "marketingName"

    .line 98
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "keySpec"

    .line 99
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_0

    :cond_0
    move-object v13, v2

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    .line 102
    :goto_0
    new-instance v0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    iget v10, v1, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    iget v11, v1, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    iget-object v12, v1, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v20, p1

    invoke-direct/range {v9 .. v20}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 107
    new-instance v12, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is an exception, please check  { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    const v2, 0x55d4a80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v12
.end method
