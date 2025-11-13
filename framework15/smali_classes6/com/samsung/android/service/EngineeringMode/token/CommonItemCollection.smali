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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/CommonItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->setMagicString(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addCommonItem(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;-><init>(II[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getCommonItem(I)Lcom/samsung/android/service/EngineeringMode/token/CommonItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    return-object v0
.end method

.method public blacklist getItemsNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->mCommonItem:Ljava/util/ArrayList;

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
