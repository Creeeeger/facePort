.class public Lcom/samsung/vekit/Content/Doodle;
.super Lcom/samsung/vekit/Content/Content;
.source "Doodle.java"


# instance fields
.field private blacklist capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

.field private blacklist capturedImagePath:Ljava/lang/String;

.field private blacklist capturedStrokeCount:I

.field private blacklist hasCapturedMask:Z

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

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->DOODLE:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist addStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist clearStrokeList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getCapturedImagePanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public blacklist getCapturedImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCapturedStrokeCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    return v0
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

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isHasCapturedMask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    return v0
.end method

.method public blacklist removeStroke(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeIndex is invalid - index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist removeStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist setCapturedImageInfo(Ljava/lang/String;III)Lcom/samsung/vekit/Content/Doodle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    const-string v1, "setCapturedImageInfo(Legacy)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Content/Doodle;->width:I

    iput p3, p0, Lcom/samsung/vekit/Content/Doodle;->height:I

    iput p4, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    :cond_0
    return-object p0
.end method

.method public blacklist setCapturedImageInfo(Ljava/lang/String;IIILcom/samsung/vekit/Common/Type/ContentColorType;Z)Lcom/samsung/vekit/Content/Doodle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    const-string v1, "setCapturedImageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Content/Doodle;->width:I

    iput p3, p0, Lcom/samsung/vekit/Content/Doodle;->height:I

    iput p4, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    iput-object p5, p0, Lcom/samsung/vekit/Content/Doodle;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-boolean p6, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    :cond_0
    return-object p0
.end method

.method public blacklist setCapturedImagePanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Content/Doodle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist setCapturedImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    return-void
.end method

.method public blacklist setCapturedStrokeCount(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    return-object p0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Doodle;->setDuration(J)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Content/Doodle;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public blacklist setHasCapturedMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    return-void
.end method

.method public bridge synthetic blacklist setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setHeight(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHeight(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public blacklist setStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setWidth(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setWidth(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method
