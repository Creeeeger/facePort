.class public Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;
.super Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.source "ModeItemCollection.java"


# instance fields
.field private blacklist mModeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/ModeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/ModeItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->setMagicString(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addAttrToModeItem(III[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->pushAttribute(II[B)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist addModeItemCollection(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getItemsNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getMagicString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->getMagicString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getModeItem(I)Lcom/samsung/android/service/EngineeringMode/token/ModeItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;

    return-object v0
.end method

.method public blacklist getModeItemByIndex(I)Lcom/samsung/android/service/EngineeringMode/token/ModeItem;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist setMagicString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->setMagicString(Ljava/lang/String;)V

    return-void
.end method
