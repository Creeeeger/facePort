.class public Lcom/samsung/android/knox/custom/WidgetItem;
.super Ljava/lang/Object;
.source "WidgetItem.java"

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
.field private final TAG:Ljava/lang/String;

.field private mCellX:I

.field private final mCellX_KEY:Ljava/lang/String;

.field private mCellY:I

.field private final mCellY_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mMoreItems:I

.field private final mMoreItems_KEY:Ljava/lang/String;

.field private mParent:Ljava/lang/String;

.field private final mParent_KEY:Ljava/lang/String;

.field private mSizeX:I

.field private final mSizeX_KEY:Ljava/lang/String;

.field private mSizeY:I

.field private final mSizeY_KEY:Ljava/lang/String;

.field private mWidgetId:I

.field private final mWidgetId_KEY:Ljava/lang/String;

.field private mWidgetType:I

.field private final mmWidgetType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/knox/custom/WidgetItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/WidgetItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/WidgetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    .line 53
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    .line 56
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 65
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 68
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 71
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    .line 77
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 80
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/WidgetItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/WidgetItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 182
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 187
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
