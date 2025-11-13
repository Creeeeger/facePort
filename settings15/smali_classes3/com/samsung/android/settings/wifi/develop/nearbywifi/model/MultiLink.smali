.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAffiliatedLinks:Ljava/util/List;

.field public final mEmlCapabilities:S

.field public final mLinkId:I

.field public final mMldCapabilities:S

.field public final mMldMacAddress:Ljava/lang/String;

.field public final mPresent:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mPresent:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mLinkId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mMldMacAddress:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mAffiliatedLinks:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "Invalid Multi-Link IE len: "

    const-string v5, "NearbyWifi.MultiLink"

    if-ge v2, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v6, 0x7

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid/Unsupported Multi-Link IE type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    const/16 v7, 0x9

    if-ge v2, v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-ge v2, v6, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Common Info field length: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    const/4 v4, 0x3

    invoke-static {v4, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getMacAddressString(ILjava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mMldMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x10

    const-string v6, " Common info len: "

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v4, v7, :cond_5

    const/16 v4, 0x8

    if-ge v2, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mLinkId:I

    const/16 v7, 0xa

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid Multi-Link(1) IE len: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    add-int/lit8 v7, v7, 0x2

    :cond_8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v4, v7, :cond_a

    add-int/lit8 v4, v7, 0x2

    if-ge v2, v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    iput-short v7, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mEmlCapabilities:S

    move v7, v4

    goto :goto_3

    :cond_a
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid Multi-Link(2) IE len: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    :goto_3
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v4, v7, :cond_d

    if-ge v2, v7, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput-short p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mMldCapabilities:S

    goto :goto_5

    :cond_d
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid Multi-Link(3) IE len: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    :goto_5
    move v0, v2

    :goto_6
    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_10

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mLinkId:I

    iput v0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->linkId:I

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->bssid:Ljava/lang/String;

    iput p3, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->freq:I

    invoke-static {p3}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;->mPresent:Z

    :goto_7
    return-void
.end method
