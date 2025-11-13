.class public Lcom/samsung/android/knox/custom/WidgetItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCellX:I

.field public final mCellX_KEY:Ljava/lang/String;

.field public mCellY:I

.field public final mCellY_KEY:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public final mIntent_KEY:Ljava/lang/String;

.field public mMoreItems:I

.field public final mMoreItems_KEY:Ljava/lang/String;

.field public mParent:Ljava/lang/String;

.field public final mParent_KEY:Ljava/lang/String;

.field public mSizeX:I

.field public final mSizeX_KEY:Ljava/lang/String;

.field public mSizeY:I

.field public final mSizeY_KEY:Ljava/lang/String;

.field public mWidgetId:I

.field public final mWidgetId_KEY:Ljava/lang/String;

.field public mWidgetType:I

.field public final mmWidgetType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/WidgetItem$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/WidgetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;ILjava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    iput-object p4, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    iput p7, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    iput p8, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    iput p9, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCellX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    return p0
.end method

.method public getCellY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMoreItems()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return p0
.end method

.method public getParent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    return-object p0
.end method

.method public getSizeX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    return p0
.end method

.method public getSizeY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    return p0
.end method

.method public getWidgetId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    return p0
.end method

.method public getWidgetType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "descr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/WidgetItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
