.class public Lcom/samsung/vekit/Content/Content;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Content.java"


# instance fields
.field protected blacklist colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field protected blacklist contentType:Lcom/samsung/vekit/Common/Type/ContentType;

.field protected blacklist duration:J

.field protected blacklist height:I

.field protected blacklist width:I


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Content;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    iput v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-void
.end method


# virtual methods
.method public blacklist getColorType()Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method

.method public blacklist getContentType()Lcom/samsung/vekit/Common/Type/ContentType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    return-object v0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    return-wide v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    return v0
.end method

.method public blacklist setColorType(Lcom/samsung/vekit/Common/Type/ContentColorType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-void
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    return-object p0
.end method

.method public blacklist setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Content;->height:I

    return-object p0
.end method

.method public blacklist setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Content;->width:I

    return-object p0
.end method
