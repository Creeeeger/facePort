.class public Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/configuration/DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DM_FIELD_INFO"
.end annotation


# instance fields
.field private final mIndex:I

.field private mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mIndex:I

    iput p2, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mType:I

    if-nez p2, :cond_0

    const-string p1, "./3GPP_IMS/"

    invoke-static {p1, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "omadm/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mType:I

    return p0
.end method
