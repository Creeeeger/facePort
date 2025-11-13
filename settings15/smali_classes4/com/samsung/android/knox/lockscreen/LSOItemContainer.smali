.class public Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    }
.end annotation


# static fields
.field public static final LSO_FIELD_BG:I = 0x100

.field public static final LSO_FIELD_ORIENTATION:I = 0x80


# instance fields
.field public bgImagePath:Ljava/lang/String;

.field public childObj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBGImagePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    return-object p0
.end method

.method public getNumItems()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readByteFromParcel(Landroid/os/Parcel;I)B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "Parcel format exception"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public setBGImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BG_IMAGE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v1, v2, :cond_0

    const-string v1, "VERTICAL"

    goto :goto_0

    :cond_0
    const-string v1, "HORIZONTAL"

    :goto_0
    const-string v2, "Orientation:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IB)V

    const/16 v0, 0x100

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
