.class public final Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
.super Ljava/lang/Object;
.source "Tlv.java"


# static fields
.field public static final blacklist TAG_LENGTH_FIELD_LEN:I = 0x3

.field public static final blacklist TLV_TAG_DN_QUALIFIER:I = 0x6

.field public static final blacklist TLV_TAG_EXPONENT:I = 0x1

.field public static final blacklist TLV_TAG_EXT_KEYUSAGE:I = 0x7

.field public static final blacklist TLV_TAG_HASH_ALGO:I = 0x3

.field public static final blacklist TLV_TAG_ISSUER:I = 0x2

.field public static final blacklist TLV_TAG_KEYUSAGE:I = 0x5

.field private static final blacklist TLV_TAG_MAX:I = 0x1e

.field public static final blacklist TLV_TAG_SUBJECT:I = 0x4

.field public static final blacklist TLV_TAG_SUBJECT_ALTER_NAME:I = 0x1d


# instance fields
.field private blacklist mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mTotalLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method public static blacklist decodeTlv([BII)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .locals 9
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 121
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    .line 123
    .local v0, "lcTlv":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    const/4 v1, 0x0

    .line 124
    .local v1, "parsed":I
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge p2, v3, :cond_0

    .line 125
    return-object v2

    .line 128
    :cond_0
    aget-byte v3, p0, v1

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 129
    return-object v2

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 133
    add-int v2, p1, v1

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 134
    .local v2, "totLen":S
    add-int/2addr v1, v3

    .line 135
    invoke-virtual {v0, v2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTotalSize(I)V

    .line 137
    :goto_0
    if-ge v1, p2, :cond_2

    .line 138
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 139
    .local v4, "tlvTag":I
    add-int/lit8 v1, v1, 0x1

    .line 140
    add-int v5, p1, v1

    invoke-static {p0, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 141
    .local v5, "tlvLen":S
    add-int/2addr v1, v3

    .line 142
    new-array v6, v5, [B

    .line 143
    .local v6, "tlvValue":[B
    add-int v7, p1, v1

    const/4 v8, 0x0

    invoke-static {p0, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/2addr v1, v5

    .line 145
    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlvOnly(I[B)Z

    .line 146
    .end local v4    # "tlvTag":I
    .end local v5    # "tlvLen":S
    .end local v6    # "tlvValue":[B
    goto :goto_0

    .line 147
    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist encodeTlv()[B
    .locals 11

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "offset":I
    iget v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 94
    .local v1, "result":[B
    const/4 v2, -0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 97
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 98
    .local v4, "totLen":[B
    array-length v5, v4

    invoke-static {v4, v3, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/2addr v0, v2

    .line 102
    iget-object v5, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 103
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 104
    .local v7, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 105
    .local v8, "tlvValue":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    array-length v10, v8

    int-to-short v10, v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 107
    .local v9, "tlvLen":[B
    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    aput-byte v10, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    array-length v10, v9

    invoke-static {v9, v3, v1, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    add-int/2addr v0, v2

    .line 113
    array-length v10, v8

    invoke-static {v8, v3, v1, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    array-length v10, v8

    add-int/2addr v0, v10

    .line 115
    .end local v7    # "key":Ljava/lang/Integer;
    .end local v8    # "tlvValue":[B
    .end local v9    # "tlvLen":[B
    goto :goto_0

    .line 116
    :cond_0
    return-object v1
.end method

.method public blacklist getTlvValue(I)[B
    .locals 2
    .param p1, "tlvTag"    # I

    .line 81
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTotalSize()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    return v0
.end method

.method public blacklist setTlv(I[B)Z
    .locals 3
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    array-length v2, p2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    .line 62
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTlvOnly(I[B)Z
    .locals 3
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .line 70
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTotalSize(I)V
    .locals 0
    .param p1, "len"    # I

    .line 53
    iput p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    .line 54
    return-void
.end method
