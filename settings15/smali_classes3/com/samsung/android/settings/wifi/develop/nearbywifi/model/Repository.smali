.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final freqCuMap:Ljava/util/HashMap;

.field public final ssidList:Ljava/util/ArrayList;

.field public final ssidMap:Ljava/util/HashMap;

.field public final supportedFreqs:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    return-void
.end method

.method public static createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    iget v3, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getStaticAngleFrom(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getMacAddressString(ILjava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 8

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    add-int/lit8 v1, p0, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    add-int/lit8 v1, p0, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    add-int/lit8 p0, p0, 0x5

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStaticAngleFrom(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v2

    const v2, 0xfff1

    rem-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit16 v1, v1, 0xa5

    const/16 p0, 0x52

    if-lt v1, p0, :cond_1

    add-int/lit8 v1, v1, 0x10

    :cond_1
    return v1
.end method

.method public static toBand(I)I
    .locals 1

    const/16 v0, 0x96c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x1428

    if-lt p0, v0, :cond_1

    const/16 v0, 0x16fd

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x1743

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1bcb

    if-gt p0, v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final createRadarUnitBySsid()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    if-eqz v2, :cond_2

    iget v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget v5, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    if-le v4, v5, :cond_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    iget v3, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getStaticAngleFrom(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final getCuInfo()Ljava/util/Map;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eq v6, v1, :cond_1

    if-eq v6, v2, :cond_1

    if-eq v6, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    new-instance v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v5

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput v9, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->frequency:I

    iput v5, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->channel:I

    iput v7, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;->cu:I

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final isRecommendable(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x32

    if-gt p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    if-ne v4, p1, :cond_3

    iget v3, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move v1, v2

    :cond_4
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final isRecommendableBasedOnAdjacentFreqs([I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final update(Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v2, Landroid/net/wifi/ScanResult;->level:I

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    if-nez v8, :cond_2

    new-instance v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    invoke-direct {v8, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v9, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget v9, v2, Landroid/net/wifi/ScanResult;->frequency:I

    iput v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    iget v9, v2, Landroid/net/wifi/ScanResult;->level:I

    iput v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iput v4, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    iput v4, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x4

    const/4 v13, 0x0

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v9}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v9}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v15

    const/16 v10, 0xb

    const/16 v12, 0xff

    if-eq v15, v10, :cond_c

    const/16 v10, 0x30

    if-eq v15, v10, :cond_a

    const/16 v10, 0x46

    if-eq v15, v10, :cond_9

    const/16 v10, 0x7f

    if-eq v15, v10, :cond_8

    const/16 v10, 0xc9

    if-eq v15, v10, :cond_7

    const/16 v10, 0xdd

    if-eq v15, v10, :cond_5

    if-eq v15, v12, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult$InformationElement;->getIdExt()I

    move-result v9

    const/16 v10, 0x6b

    if-ne v9, v10, :cond_3

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    iget-object v10, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget v11, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-direct {v9, v14, v10, v11}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    iput-object v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    goto :goto_1

    :cond_5
    iget-boolean v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    if-nez v9, :cond_3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-lt v9, v11, :cond_3

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/2addr v9, v12

    shl-int/lit8 v9, v9, 0x10

    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/2addr v10, v12

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/2addr v10, v12

    or-int/2addr v9, v10

    const/16 v10, 0x50f2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x3

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-ne v9, v3, :cond_6

    move v13, v6

    :cond_6
    iput-boolean v13, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    goto :goto_1

    :cond_7
    new-instance v9, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;

    invoke-direct {v9, v14}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rnr:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iput-boolean v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    iput-boolean v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-lt v9, v3, :cond_3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    if-ne v9, v6, :cond_3

    const/4 v9, 0x6

    :try_start_0
    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    mul-int/2addr v9, v11

    add-int/lit8 v10, v9, 0x8

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    add-int/lit8 v9, v9, 0xa

    mul-int/2addr v10, v11

    add-int/2addr v10, v9

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_b

    iput-boolean v6, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    :cond_b
    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    iput-boolean v6, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string v9, "NearbyWifi.BssidInfo"

    const-string v10, "Couldn\'t parse RSNE, buffer underflow"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    const v10, 0xffff

    and-int/2addr v9, v10

    iput v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/2addr v9, v12

    mul-int/lit8 v9, v9, 0x64

    div-int/lit16 v9, v9, 0x100

    iput v9, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v4

    iput v4, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    iget v4, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    if-eqz v4, :cond_12

    if-eq v4, v6, :cond_11

    if-eq v4, v3, :cond_10

    const/4 v3, 0x3

    if-eq v4, v3, :cond_f

    if-eq v4, v11, :cond_f

    const/4 v3, 0x5

    if-eq v4, v3, :cond_e

    move v3, v13

    goto :goto_2

    :cond_e
    const/16 v3, 0x140

    goto :goto_2

    :cond_f
    const/16 v3, 0xa0

    goto :goto_2

    :cond_10
    const/16 v3, 0x50

    goto :goto_2

    :cond_11
    const/16 v3, 0x28

    goto :goto_2

    :cond_12
    const/16 v3, 0x14

    :goto_2
    iput v3, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\["

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v13

    :goto_3
    if-ge v5, v4, :cond_16

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_15

    const-string v10, "WPA"

    invoke-virtual {v9, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "RSN"

    invoke-virtual {v9, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "WEP"

    invoke-virtual {v9, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_14

    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "FT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-boolean v6, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "[OPEN]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    iget-object v2, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v7, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v8

    if-eq v8, v6, :cond_1b

    if-eq v8, v3, :cond_1a

    if-eq v8, v5, :cond_19

    goto :goto_5

    :cond_19
    iput-boolean v6, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand6:Z

    goto :goto_5

    :cond_1a
    iput-boolean v6, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand5:Z

    goto :goto_5

    :cond_1b
    iput-boolean v6, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand24:Z

    goto :goto_5

    :cond_1c
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_4

    :cond_1d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget v6, v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    if-ne v6, v4, :cond_1f

    goto :goto_6

    :cond_1f
    iget v6, v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget v5, v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_20
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
