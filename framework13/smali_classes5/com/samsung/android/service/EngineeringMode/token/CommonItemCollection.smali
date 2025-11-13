.class public Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
.super Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.source "CommonItemCollection.java"


# instance fields
.field private blacklist mCommonItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/CommonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "magic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/CommonItem;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p2, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/service/EngineeringMode/token/CommonItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->setMagicString(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist addCommonItem(II[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "content"    # [B

    .line 27
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;-><init>(II[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public blacklist getCommonItem(I)Lcom/samsung/android/service/EngineeringMode/token/CommonItem;
    .locals 1
    .param p1, "index"    # I

    .line 19
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    return-object v0
.end method

.method public blacklist getItemsNum()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getMagicString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->getMagicString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setMagicString(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->setMagicString(Ljava/lang/String;)V

    return-void
.end method
