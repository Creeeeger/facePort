.class public Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->$r8$classId:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/net/module/util/DnsSvcbRecord;->sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [S

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "mandatory value must be non-empty"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Can\'t parse whole byte array"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:Ljava/lang/Object;

    check-cast v1, [S

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-short v4, v1, v3

    invoke-static {v4}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    invoke-static {v1}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    sget-object v2, Lcom/android/net/module/util/HexDump;->HEX_DIGITS:[C

    mul-int/lit8 v3, v1, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_1

    aget-byte v6, p0, v4

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v3, v5

    add-int/lit8 v5, v5, 0x2

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
