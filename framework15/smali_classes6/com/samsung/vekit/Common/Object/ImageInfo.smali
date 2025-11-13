.class public Lcom/samsung/vekit/Common/Object/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private final blacklist height:I

.field private final blacklist orientation:I

.field private final blacklist width:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->width:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->height:I

    iput p3, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->orientation:I

    return-void
.end method


# virtual methods
.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->height:I

    return v0
.end method

.method public blacklist getImageInfo()Lcom/samsung/vekit/Common/Object/ImageInfo;
    .locals 0

    return-object p0
.end method

.method public blacklist getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->orientation:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->width:I

    return v0
.end method
