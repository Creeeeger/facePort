.class public Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResultAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EID_BSS_LOAD:I = 0xb

.field public static final blacklist EID_ERP:I = 0x2a

.field public static final blacklist EID_EXTENDED_CAPS:I = 0x7f

.field public static final blacklist EID_EXTENDED_SUPPORTED_RATES:I = 0x32

.field public static final blacklist EID_EXTENSION_PRESENT:I = 0xff

.field public static final blacklist EID_EXT_HE_CAPABILITIES:I = 0x23

.field public static final blacklist EID_EXT_HE_OPERATION:I = 0x24

.field public static final blacklist EID_HT_CAPABILITIES:I = 0x2d

.field public static final blacklist EID_HT_OPERATION:I = 0x3d

.field public static final blacklist EID_INTERWORKING:I = 0x6b

.field public static final blacklist EID_ROAMING_CONSORTIUM:I = 0x6f

.field public static final blacklist EID_RSN:I = 0x30

.field public static final blacklist EID_SSID:I = 0x0

.field public static final blacklist EID_SUPPORTED_RATES:I = 0x1

.field public static final blacklist EID_TIM:I = 0x5

.field public static final blacklist EID_VHT_CAPABILITIES:I = 0xbf

.field public static final blacklist EID_VHT_OPERATION:I = 0xc0

.field public static final blacklist EID_VSA:I = 0xdd


# instance fields
.field public blacklist bytes:[B

.field public blacklist id:I

.field public blacklist idExt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1050
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;)V
    .locals 1
    .param p1, "rhs"    # Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    .line 1009
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    .line 1010
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    .line 1011
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 1067
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1072
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1074
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    .line 1075
    .local v1, "thatIE":Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    iget v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    iget v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    iget-object v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    .line 1077
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1075
    :goto_0
    return v0
.end method

.method public blacklist getBytes()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 1018
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    return v0
.end method

.method public blacklist getIdExt()I
    .locals 1

    .line 1026
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1085
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1044
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->idExt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1047
    return-void
.end method
