.class public Lcom/samsung/vekit/Layer/ImageLayer;
.super Lcom/samsung/vekit/Layer/Layer;
.source "ImageLayer.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/LayerType;->IMAGE:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Layer/Layer;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/LayerType;ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/vekit/Layer/ImageLayer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    return-void
.end method
