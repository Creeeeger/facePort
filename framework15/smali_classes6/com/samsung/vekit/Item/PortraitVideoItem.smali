.class public Lcom/samsung/vekit/Item/PortraitVideoItem;
.super Lcom/samsung/vekit/Item/VideoItem;
.source "PortraitVideoItem.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;


# instance fields
.field blacklist blurStrength:I

.field blacklist frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

.field blacklist keyFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field blacklist portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Item/VideoItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    iput-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist changePortraitVideoFocus(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void
.end method

.method public blacklist changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V

    return-void
.end method

.method public blacklist changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V

    return-void
.end method

.method public blacklist changePortraitVideoKeyFrameList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set portraitVideo(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist deleteKeyFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void
.end method

.method public blacklist getBlurStrength()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    return v0
.end method

.method public blacklist getFrameInfo()Lcom/samsung/vekit/Common/Object/PVFrameInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    return-object v0
.end method

.method public blacklist getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPortraitVideoStatusListener()Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    return-object v0
.end method

.method public blacklist onPortraitVideoError(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoError -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoError(I)V

    :cond_0
    return-void
.end method

.method public blacklist onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoFrameInfoUpdated -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->getBlurLevel()I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V

    :cond_0
    return-void
.end method

.method public blacklist onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoKeyFrameUpdated -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public blacklist setBlurStrength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    return-void
.end method

.method public blacklist setFrameInfo(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    return-void
.end method

.method public blacklist setKeyFrameList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    return-void
.end method

.method public blacklist setPortraitVideoStatusListener(Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    return-void
.end method
