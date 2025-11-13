.class public Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final rcode:I

.field public final result:I

.field public final rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    iput p2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    iput-object p3, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
    .locals 4

    const/4 v0, 0x2

    const v1, 0x55d4a80

    if-eqz p0, :cond_0

    const-string/jumbo v2, "result"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "rcode"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "rmsg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "The returned value from SCPM is not correct(null or empty)."

    :goto_0
    new-instance v2, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
