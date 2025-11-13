.class public Lcom/samsung/vekit/Item/Item;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Item.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/ItemStatusListener;


# instance fields
.field protected blacklist animationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected blacklist content:Lcom/samsung/vekit/Content/Content;

.field protected blacklist duration:J

.field protected blacklist isVisible:Z

.field protected blacklist itemType:Lcom/samsung/vekit/Common/Type/ItemType;

.field blacklist listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

.field protected blacklist meshType:Lcom/samsung/vekit/Common/Type/MeshType;

.field protected blacklist padding:J

.field protected blacklist panel:Lcom/samsung/vekit/Panel/Panel;

.field protected blacklist parent:Lcom/samsung/vekit/Layer/Layer;

.field protected blacklist regionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/Region;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist speed:F


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    sget-object v0, Lcom/samsung/vekit/Common/Type/MeshType;->PLANE:Lcom/samsung/vekit/Common/Type/MeshType;

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    iput-object p2, p0, Lcom/samsung/vekit/Item/Item;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to getAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private blacklist getRegionIndex(Lcom/samsung/vekit/Common/Object/Region;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to get Region Index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct Animation(not TransitionAnimation) to Item."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public blacklist clearAnimations()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist clearRegions()Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public blacklist detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist getAbsoluteEndTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/vekit/Item/Item;->getAbsoluteStartTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getAbsoluteStartTime()J
    .locals 7

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    iget-object v2, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {v2}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vekit/Item/Item;

    if-ne v4, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/vekit/Item/Item;->getItemEndTime()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public blacklist getAnimation(I)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to get animation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContent()Lcom/samsung/vekit/Content/Content;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->content:Lcom/samsung/vekit/Content/Content;

    return-object v0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    return-wide v0
.end method

.method public blacklist getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFilterIntensity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getItemEndTime()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    iget-wide v2, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getItemStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0
.end method

.method public blacklist getItemType()Lcom/samsung/vekit/Common/Type/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    return-object v0
.end method

.method public blacklist getOpacity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPadding()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0
.end method

.method public blacklist getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public blacklist getParent()Lcom/samsung/vekit/Layer/Layer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    return-object v0
.end method

.method public blacklist getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegion(I)Lcom/samsung/vekit/Common/Object/Region;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/Region;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get region (invalid index) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpeed()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    return v0
.end method

.method public blacklist getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    return v0
.end method

.method public blacklist onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    :cond_0
    return-void
.end method

.method public blacklist removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->content:Lcom/samsung/vekit/Content/Content;

    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    return-object p0
.end method

.method public blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    return-object p0
.end method

.method public blacklist setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->setOpacity(F)Lcom/samsung/vekit/Item/Item;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    return-object p0
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-object p0
.end method

.method public blacklist setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Item/Item;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    return-object p0
.end method

.method public blacklist setSpeed(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    return-object p0
.end method

.method public blacklist setStatusListener(Lcom/samsung/vekit/Listener/ItemStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    return-void
.end method

.method public blacklist setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 0

    return-object p0
.end method

.method public blacklist setVisible(Z)Lcom/samsung/vekit/Item/Item;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    return-object p0
.end method
