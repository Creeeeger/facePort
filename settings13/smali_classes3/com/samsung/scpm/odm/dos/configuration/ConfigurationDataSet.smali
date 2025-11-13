.class public Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;
.super Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
.source "ConfigurationDataSet.java"


# instance fields
.field public final filterId:Ljava/lang/String;

.field public final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "filterId",
            "parcelFileDescriptor"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    .line 28
    iput-object p5, p0, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 29
    iput-object p4, p0, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;->filterId:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;
    .locals 8
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

    .line 33
    invoke-static {p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "filterId"

    .line 36
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v6, v1

    .line 39
    new-instance p0, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

    iget v3, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    iget v4, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    iget-object v5, v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public static create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 43
    new-instance v6, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

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

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v6
.end method
