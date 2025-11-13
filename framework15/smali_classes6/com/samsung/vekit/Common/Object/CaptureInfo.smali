.class public Lcom/samsung/vekit/Common/Object/CaptureInfo;
.super Ljava/lang/Object;
.source "CaptureInfo.java"


# instance fields
.field private blacklist bitmap:Landroid/graphics/Bitmap;

.field private blacklist height:I

.field private blacklist listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    return v0
.end method

.method public blacklist getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    return-void
.end method

.method public blacklist setListener(Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    return-void
.end method
