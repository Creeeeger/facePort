.class Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$1;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResultAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 237
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 238
    .local v1, "wifiSsid":Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 239
    sget-object v2, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 241
    :cond_0
    new-instance v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    move-object v4, v2

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x0

    move-object v5, v1

    invoke-direct/range {v4 .. v21}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;-><init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 260
    .local v2, "sr":Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->-$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;I)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->seen:J

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->untrusted:Z

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->numUsage:I

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->venueName:Ljava/lang/CharSequence;

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 267
    sget-object v3, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    iput-object v3, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .local v3, "n":I
    if-eqz v3, :cond_2

    .line 271
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpLines:Ljava/util/List;

    .line 272
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 273
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v4    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    if-eqz v3, :cond_3

    .line 278
    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    .line 279
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 281
    .local v5, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 282
    .local v6, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .local v7, "len":I
    new-array v8, v7, [B

    .line 284
    .local v8, "payload":[B
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 285
    iget-object v9, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    new-instance v10, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    invoke-direct {v10, v5, v6, v8}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;-><init>(II[B)V

    aput-object v10, v9, v4

    .line 279
    .end local v5    # "vendorId":I
    .end local v6    # "elementId":I
    .end local v7    # "len":I
    .end local v8    # "payload":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    .end local v4    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    if-eqz v3, :cond_4

    .line 291
    new-array v4, v3, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    .line 292
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 293
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    new-instance v6, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    invoke-direct {v6}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;-><init>()V

    aput-object v6, v5, v4

    .line 294
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    .line 295
    iget-object v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    aget-object v5, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 298
    .end local v4    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->ifaceName:Ljava/lang/String;

    .line 300
    const-class v4, Landroid/net/MacAddress;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/MacAddress;

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->-$$Nest$fputmApMldMacAddress(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;Landroid/net/MacAddress;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->-$$Nest$fputmApMloLinkId(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;I)V

    .line 302
    sget-object v4, Landroid/net/wifi/MloLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->-$$Nest$fputmAffiliatedMloLinks(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;Ljava/util/List;)V

    .line 303
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
    .locals 1
    .param p1, "size"    # I

    .line 307
    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    move-result-object p1

    return-object p1
.end method
