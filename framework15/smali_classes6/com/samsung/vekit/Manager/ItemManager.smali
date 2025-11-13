.class public Lcom/samsung/vekit/Manager/ItemManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "ItemManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Item/Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->ITEM:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/ItemManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist create(Lcom/samsung/vekit/Common/Type/ItemType;Ljava/lang/String;)Lcom/samsung/vekit/Item/Item;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/ItemManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v2, Lcom/samsung/vekit/Manager/ItemManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ItemType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Item/PortraitVideoItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/PortraitVideoItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Item/EmptyItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/EmptyItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Item/ColorItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/ColorItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/vekit/Item/FragmentAudioItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/FragmentAudioItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/vekit/Item/AudioItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/AudioItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/vekit/Item/CaptionItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/CaptionItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/samsung/vekit/Item/DoodleItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/DoodleItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/vekit/Item/ImageItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/ImageItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/samsung/vekit/Item/VideoItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/VideoItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/ItemManager;->add(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
