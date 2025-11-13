.class public final Lcom/samsung/android/wifi/SemWifiSsid;
.super Ljava/lang/Object;
.source "SemWifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HEX_RADIX:I = 0x10

.field public static final greylist NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiSsid"


# instance fields
.field public final greylist octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Lcom/samsung/android/wifi/SemWifiSsid$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiSsid$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiSsid-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>()V

    return-void
.end method

.method private blacklist convertToBytes(Ljava/lang/String;)V
    .locals 7
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    const/4 v1, 0x0

    .line 106
    .local v1, "val":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 108
    .local v2, "c":C
    packed-switch v2, :pswitch_data_0

    .line 180
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 110
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 176
    goto/16 :goto_3

    .line 137
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 139
    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v1, -0x1

    goto :goto_2

    .line 140
    .end local v3    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .line 144
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    nop

    .line 145
    :goto_2
    if-gez v1, :cond_1

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 147
    if-gez v1, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 152
    add-int/lit8 v0, v0, 0x2

    .line 154
    goto/16 :goto_3

    .line 129
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    goto/16 :goto_3

    .line 125
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    goto :goto_3

    .line 121
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_3

    .line 133
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    goto :goto_3

    .line 113
    :sswitch_5
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_3

    .line 163
    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    sub-int/2addr v3, v4

    .line 164
    .end local v1    # "val":I
    .local v3, "val":I
    add-int/lit8 v0, v0, 0x1

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x37

    if-lt v1, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v5, :cond_2

    .line 166
    mul-int/lit8 v1, v3, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v1, -0x30

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 169
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    .line 170
    mul-int/lit8 v1, v3, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v1, -0x30

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    move v1, v3

    goto :goto_3

    .line 117
    .end local v3    # "val":I
    .restart local v1    # "val":I
    :sswitch_7
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    nop

    .line 184
    .end local v2    # "c":C
    :goto_3
    goto/16 :goto_0

    .line 185
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x5c -> :sswitch_5
        0x65 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist createFromAsciiEncoded(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 1
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/samsung/android/wifi/SemWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>()V

    .line 77
    .local v0, "a":Lcom/samsung/android/wifi/SemWifiSsid;
    invoke-direct {v0, p0}, Lcom/samsung/android/wifi/SemWifiSsid;->convertToBytes(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method public static blacklist createFromByteArray([B)Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 4
    .param p0, "ssid"    # [B

    .line 67
    new-instance v0, Lcom/samsung/android/wifi/SemWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>()V

    .line 68
    .local v0, "wifiSsid":Lcom/samsung/android/wifi/SemWifiSsid;
    if-eqz p0, :cond_0

    .line 69
    iget-object v1, v0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 71
    :cond_0
    return-object v0
.end method

.method public static blacklist createFromHex(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 4
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/samsung/android/wifi/SemWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>()V

    .line 83
    .local v0, "a":Lcom/samsung/android/wifi/SemWifiSsid;
    if-nez p0, :cond_0

    return-object v0

    .line 85
    :cond_0
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 92
    add-int/lit8 v2, v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v2, "val":I
    goto :goto_1

    .line 93
    .end local v2    # "val":I
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move v2, v3

    .line 96
    .local v2, "val":I
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    .end local v2    # "val":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private blacklist isArrayAllZeroes([B)Z
    .locals 2
    .param p1, "ssidBytes"    # [B

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 232
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 215
    if-ne p0, p1, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiSsid;

    if-nez v0, :cond_1

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiSsid;

    .line 222
    .local v0, "that":Lcom/samsung/android/wifi/SemWifiSsid;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public blacklist getHexString()Ljava/lang/String;
    .locals 7

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiSsid;->getOctets()[B

    move-result-object v1

    .line 252
    .local v1, "ssidbytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 253
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02x"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public greylist getOctets()[B
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist isHidden()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemWifiSsid;->isArrayAllZeroes([B)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 197
    .local v0, "ssidBytes":[B
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemWifiSsid;->isArrayAllZeroes([B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 200
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 201
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 202
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 203
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 205
    .local v3, "out":Ljava/nio/CharBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 206
    .local v4, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    const-string v5, "<unknown ssid>"

    return-object v5

    .line 210
    :cond_1
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 197
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v3    # "out":Ljava/nio/CharBuffer;
    .end local v4    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 269
    return-void
.end method
