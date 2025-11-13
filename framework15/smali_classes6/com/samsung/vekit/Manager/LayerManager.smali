.class public Lcom/samsung/vekit/Manager/LayerManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->LAYER:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist create(Lcom/samsung/vekit/Common/Type/LayerType;Ljava/lang/String;)Lcom/samsung/vekit/Layer/Layer;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/LayerManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v2, Lcom/samsung/vekit/Manager/LayerManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$LayerType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/LayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Layer/CaptionLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/CaptionLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Layer/DoodleLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/DoodleLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Layer/ImageLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/ImageLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/vekit/Layer/AudioLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/AudioLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/vekit/Layer/MediaLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/MediaLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/LayerManager;->add(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
