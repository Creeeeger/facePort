.class public Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
.super Ljava/lang/Object;
.source "ScpmDataSet.java"


# instance fields
.field public final rcode:I

.field public final result:I

.field public final rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "rcode",
            "rmsg"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    .line 37
    iput p2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    .line 38
    iput-object p3, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const v0, 0x55d4a80

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    const-string v2, "result"

    .line 46
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "rcode"

    .line 47
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "rmsg"

    .line 48
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "The returned value from SCPM is not correct(null or empty)."

    .line 50
    :goto_0
    new-instance v2, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    invoke-direct {v2, v1, v0, p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    return-object v2
.end method

.method public static create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an exception, please check  { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const v2, 0x55d4a80

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
