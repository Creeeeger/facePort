.class Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement$1;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResultAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1053
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;-><init>()V

    .line 1054
    .local v0, "informationElement":Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    .line 1057
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
    .locals 1
    .param p1, "size"    # I

    .line 1061
    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    move-result-object p1

    return-object p1
.end method
