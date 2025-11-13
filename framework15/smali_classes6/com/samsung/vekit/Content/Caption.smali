.class public Lcom/samsung/vekit/Content/Caption;
.super Lcom/samsung/vekit/Content/Content;
.source "Caption.java"


# instance fields
.field private blacklist filePath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->CAPTION:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Caption;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Content/Caption;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Caption;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Caption;->setDuration(J)Lcom/samsung/vekit/Content/Caption;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFilePath(Ljava/lang/String;)Lcom/samsung/vekit/Content/Caption;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Caption;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setHeight(I)Lcom/samsung/vekit/Content/Caption;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Caption;

    return-object v0
.end method

.method public bridge synthetic blacklist setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Caption;->setHeight(I)Lcom/samsung/vekit/Content/Caption;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setWidth(I)Lcom/samsung/vekit/Content/Caption;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Caption;

    return-object v0
.end method

.method public bridge synthetic blacklist setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Caption;->setWidth(I)Lcom/samsung/vekit/Content/Caption;

    move-result-object p1

    return-object p1
.end method
