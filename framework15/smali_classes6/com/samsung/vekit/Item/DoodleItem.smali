.class public Lcom/samsung/vekit/Item/DoodleItem;
.super Lcom/samsung/vekit/Item/Item;
.source "DoodleItem.java"


# instance fields
.field private blacklist currentStrokeIndex:I

.field private blacklist doodleType:Lcom/samsung/vekit/Common/Type/DoodleType;

.field private blacklist isDrawing:Z

.field private blacklist strokeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->DOODLE:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->isDrawing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    sget-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->EDIT:Lcom/samsung/vekit/Common/Type/DoodleType;

    iput-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->doodleType:Lcom/samsung/vekit/Common/Type/DoodleType;

    return-void
.end method


# virtual methods
.method public blacklist attachStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachStroke currentStrokeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    return-void
.end method

.method public blacklist captureStaticDoodle(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
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

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->DOODLE:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set doodle(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearStrokeList()Lcom/samsung/vekit/Item/DoodleItem;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeList currentStrokeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist detachStroke()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    const-string v1, "strokeList is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachStroke stroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist drawDoodle(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->isDrawing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    const-string v1, "isDrawing is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStrokeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/DoodleStroke;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/DoodleStroke;->addDoodlePointList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStrokeIndex is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist finishDoodle()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->isDrawing:Z

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist getCurrentDoodleStroke()Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 3

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/DoodleStroke;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeIndex is invalid - index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentStrokeIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    return v0
.end method

.method public blacklist getDoodleType()Lcom/samsung/vekit/Common/Type/DoodleType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->doodleType:Lcom/samsung/vekit/Common/Type/DoodleType;

    return-object v0
.end method

.method public blacklist getStrokeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStrokeListSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist isDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->isDrawing:Z

    return v0
.end method

.method public blacklist loadDoodle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    const-string v1, "doodle content is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v1, Lcom/samsung/vekit/Content/Doodle;

    invoke-virtual {v1}, Lcom/samsung/vekit/Content/Doodle;->getStrokeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDoodle size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist saveDoodle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->content:Lcom/samsung/vekit/Content/Content;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    const-string v1, "doodle content is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    invoke-virtual {v0}, Lcom/samsung/vekit/Content/Doodle;->clearStrokeList()V

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->content:Lcom/samsung/vekit/Content/Content;

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Content/Doodle;->addStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDoodle size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/DoodleItem;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/DoodleItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/DoodleItem;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/DoodleItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/DoodleItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDoodleType(Lcom/samsung/vekit/Common/Type/DoodleType;)Lcom/samsung/vekit/Item/DoodleItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/DoodleItem;->doodleType:Lcom/samsung/vekit/Common/Type/DoodleType;

    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/DoodleItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/DoodleItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/DoodleItem;->setDuration(J)Lcom/samsung/vekit/Item/DoodleItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/DoodleItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/DoodleItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/DoodleItem;->setPadding(J)Lcom/samsung/vekit/Item/DoodleItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/DoodleItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/DoodleItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/DoodleItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/DoodleItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist startDoodle(Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDoodle currentStrokeIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/vekit/Item/DoodleItem;->currentStrokeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/vekit/Item/DoodleItem;->isDrawing:Z

    iget-object v0, p0, Lcom/samsung/vekit/Item/DoodleItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    return-void
.end method
