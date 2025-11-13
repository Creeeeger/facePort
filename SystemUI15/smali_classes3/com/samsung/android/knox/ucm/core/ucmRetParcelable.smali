.class public Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mData:[B

.field public mDataLength:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz p2, :cond_0

    array-length p1, p2

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCMERRORTESTING: @ucmRetParcelable readFromParcel: dateLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    const-string/jumbo v2, "ucmRetParcelable"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
