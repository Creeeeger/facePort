.class public Lcom/samsung/vekit/Manager/Manager;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/vekit/Common/Object/Element;"
    }
.end annotation


# instance fields
.field protected blacklist index:I

.field protected blacklist managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

.field protected blacklist map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->MANAGER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Manager"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    iput v2, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    return-void
.end method

.method private blacklist getTargetElementType(Lcom/samsung/vekit/Common/Type/ManagerType;)Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Manager/Manager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ManagerType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ManagerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected manager type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Element;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method protected blacklist generateUniqueId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v1, 0x7ffffffe

    if-ge v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Map is full"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, v0}, Lcom/samsung/vekit/Manager/Manager;->getTargetElementType(Lcom/samsung/vekit/Common/Type/ManagerType;)Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Manager/Manager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to remove item["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with managerType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/vekit/Manager/Manager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V

    return-void
.end method

.method public blacklist size()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
