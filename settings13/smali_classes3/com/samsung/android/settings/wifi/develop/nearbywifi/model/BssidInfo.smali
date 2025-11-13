.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;
.super Ljava/lang/Object;
.source "BssidInfo.java"


# instance fields
.field public bssid:Ljava/lang/String;

.field public channelWidth:I

.field public cu:I

.field public extra11e:Z

.field public extra11k:Z

.field public extra11r:Z

.field public extra11v:Z

.field public freq:I

.field public pmfCapable:Z

.field public pmfRequired:Z

.field public rssi:I

.field public security:Ljava/lang/String;

.field public sta:I

.field public wifiStandard:I


# direct methods
.method constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    .line 53
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    .line 54
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    .line 56
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->parseIEs(Landroid/net/wifi/ScanResult;)V

    .line 60
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    .line 61
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->parseBandwidth(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    .line 62
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->parseSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    return-void
.end method

.method private getPmfString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    if-eqz v0, :cond_0

    const-string p0, "Required"

    return-object p0

    .line 132
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z

    if-eqz p0, :cond_1

    const-string p0, "Capable"

    return-object p0

    :cond_1
    const-string p0, "X"

    return-object p0
.end method

.method private parseBandwidth(I)I
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x140

    return p0

    :cond_1
    const/16 p0, 0xa0

    return p0

    :cond_2
    const/16 p0, 0x50

    return p0

    :cond_3
    const/16 p0, 0x28

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0
.end method

.method private parseIEs(Landroid/net/wifi/ScanResult;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x2

    if-eq v2, v3, :cond_7

    const/16 v3, 0x30

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x46

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_3

    const/16 v0, 0xdd

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt v0, v5, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x50f2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    .line 91
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt v0, v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-ne v0, v6, :cond_0

    const/4 v0, 0x6

    .line 98
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    mul-int/2addr v0, v5

    add-int/lit8 v2, v0, 0x8

    .line 99
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    add-int/lit8 v0, v0, 0xa

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 100
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    .line 102
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    :cond_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v0, "NearbyWifi.BssidInfo"

    const-string v1, "Couldn\'t parse RSNE, buffer underflow"

    .line 107
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 72
    :cond_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    .line 74
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    mul-int/lit8 v0, v0, 0x64

    .line 76
    div-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private parseSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\["

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 159
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 161
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "WPA"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "RSN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "WEP"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "\n"

    .line 163
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, "["

    .line 164
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "FT"

    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 167
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "[OPEN]"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private wifiStandardToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "11ad"

    return-object p0

    :cond_1
    const-string p0, "11ax"

    return-object p0

    :cond_2
    const-string p0, "11ac"

    return-object p0

    :cond_3
    const-string p0, "11n"

    return-object p0

    :cond_4
    const-string p0, "legacy"

    return-object p0
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 7

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MHz\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    const/16 v4, 0x4f

    const/16 v5, 0x58

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    .line 123
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    .line 124
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 125
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->getPmfString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "11e(%c) 11k(%c) 11v(%c) 11r(%c) 11w(%s)"

    .line 121
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
