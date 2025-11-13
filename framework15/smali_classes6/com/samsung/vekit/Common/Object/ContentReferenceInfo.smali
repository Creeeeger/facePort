.class public Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;
.super Ljava/lang/Object;
.source "ContentReferenceInfo.java"


# instance fields
.field private blacklist bitrate:I

.field private blacklist height:I

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    iput p3, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    return-void
.end method


# virtual methods
.method public blacklist getBitrate()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    return v0
.end method

.method public blacklist setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    return-void
.end method
