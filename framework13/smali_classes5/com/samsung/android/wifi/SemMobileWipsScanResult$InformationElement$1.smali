.class Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement$1;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 980
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;-><init>()V

    .line 981
    .local v0, "informationElement":Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    .line 984
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 978
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
    .locals 1
    .param p1, "size"    # I

    .line 988
    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 978
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    move-result-object p1

    return-object p1
.end method
