.class public Lcom/samsung/vekit/Item/CaptionItem;
.super Lcom/samsung/vekit/Item/Item;
.source "CaptionItem.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->CAPTION:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/CaptionItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/CaptionItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/CaptionItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/CaptionItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/CaptionItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/CaptionItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/CaptionItem;->setDuration(J)Lcom/samsung/vekit/Item/CaptionItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/CaptionItem;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/CaptionItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/CaptionItem;->setPadding(J)Lcom/samsung/vekit/Item/CaptionItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/CaptionItem;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/CaptionItem;

    return-object v0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/CaptionItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/CaptionItem;

    move-result-object p1

    return-object p1
.end method
