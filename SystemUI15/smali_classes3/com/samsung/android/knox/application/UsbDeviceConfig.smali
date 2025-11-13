.class public Lcom/samsung/android/knox/application/UsbDeviceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public productId:I

.field public vendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    iput p2, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v1, p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-lez v1, :cond_3

    iget p1, p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-ne v2, v1, :cond_3

    iget p0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
