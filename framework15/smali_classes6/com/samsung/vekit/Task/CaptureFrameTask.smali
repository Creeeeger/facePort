.class public Lcom/samsung/vekit/Task/CaptureFrameTask;
.super Ljava/lang/Object;
.source "CaptureFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    }
.end annotation


# instance fields
.field private blacklist captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field private blacklist item:Lcom/samsung/vekit/Item/Item;

.field private blacklist listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

.field private blacklist outputCenterX:I

.field private blacklist outputCenterY:I

.field private blacklist outputHeight:I

.field private blacklist outputWidth:I


# direct methods
.method public constructor blacklist <init>(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    iput p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput-object p6, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    iput-object p5, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    iput p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    return-void
.end method

.method public constructor blacklist <init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    iput p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    iput-object p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    iput-object p5, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    iput-object p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-void
.end method


# virtual methods
.method public blacklist getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method

.method public blacklist getItem()Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public blacklist getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-object v0
.end method

.method public blacklist getOutputCenterX()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    return v0
.end method

.method public blacklist getOutputCenterY()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    return v0
.end method

.method public blacklist getOutputHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    return v0
.end method

.method public blacklist getOutputWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    return v0
.end method
