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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 216
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 217
    .local v1, "wifiSsid":Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 218
    sget-object v2, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 220
    :cond_0
    new-instance v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-object v4, v2

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x0

    move-object v5, v1

    invoke-direct/range {v4 .. v21}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;-><init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 239
    .local v2, "sr":Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->-$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResult;I)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    .line 246
    sget-object v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .local v3, "n":I
    if-eqz v3, :cond_2

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    .line 251
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 252
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    .end local v4    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    if-eqz v3, :cond_3

    .line 257
    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    .line 258
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .local v5, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    .local v6, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 262
    .local v7, "len":I
    new-array v8, v7, [B

    .line 263
    .local v8, "payload":[B
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 264
    iget-object v9, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    new-instance v10, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    invoke-direct {v10, v5, v6, v8}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;-><init>(II[B)V

    aput-object v10, v9, v4

    .line 258
    .end local v5    # "vendorId":I
    .end local v6    # "elementId":I
    .end local v7    # "len":I
    .end local v8    # "payload":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 268
    .end local v4    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    if-eqz v3, :cond_4

    .line 270
    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    .line 271
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 272
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    new-instance v6, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    invoke-direct {v6}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;-><init>()V

    aput-object v6, v5, v4

    .line 273
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->id:I

    .line 274
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->level:I

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 277
    .end local v4    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    .line 278
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 1
    .param p1, "size"    # I

    .line 282
    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p1

    return-object p1
.end method
