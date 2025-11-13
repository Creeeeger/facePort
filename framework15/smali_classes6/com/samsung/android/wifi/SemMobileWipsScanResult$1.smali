.class Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 22

    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    :cond_0
    new-instance v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-object v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x0

    move-object v5, v1

    invoke-direct/range {v4 .. v21}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;-><init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->-$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResult;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    sget-object v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    iget-object v9, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    new-instance v10, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    invoke-direct {v10, v5, v6, v8}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;-><init>(II[B)V

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    new-instance v6, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    invoke-direct {v6}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;-><init>()V

    aput-object v6, v5, v4

    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->id:I

    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->level:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p1

    return-object p1
.end method
