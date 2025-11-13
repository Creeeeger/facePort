.class public Lcom/samsung/vekit/Layer/MediaLayer;
.super Lcom/samsung/vekit/Layer/Layer;
.source "MediaLayer.java"


# instance fields
.field private blacklist volume:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Layer/Layer;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/LayerType;ILjava/lang/String;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Layer/MediaLayer;->volume:I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/vekit/Layer/MediaLayer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    return-void
.end method


# virtual methods
.method public blacklist getVolume()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Layer/MediaLayer;->volume:I

    return v0
.end method

.method public blacklist setVolume(I)Lcom/samsung/vekit/Layer/MediaLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Layer/MediaLayer;->volume:I

    return-object p0
.end method
