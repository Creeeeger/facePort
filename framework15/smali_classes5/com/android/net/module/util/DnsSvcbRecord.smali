.class public final Lcom/android/net/module/util/DnsSvcbRecord;
.super Lcom/android/net/module/util/DnsPacket$DnsRecord;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;
    }
.end annotation


# static fields
.field private static final blacklist KEY_ALPN:I = 0x1

.field private static final blacklist KEY_DOHPATH:I = 0x7

.field private static final blacklist KEY_ECH:I = 0x5

.field private static final blacklist KEY_IPV4HINT:I = 0x4

.field private static final blacklist KEY_IPV6HINT:I = 0x6

.field private static final blacklist KEY_MANDATORY:I = 0x0

.field private static final blacklist KEY_NO_DEFAULT_ALPN:I = 0x2

.field private static final blacklist KEY_PORT:I = 0x3

.field private static final blacklist MINSVCPARAMSIZE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAllSvcParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSvcPriority:I

.field private final blacklist mTargetName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoKeyName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->toKeyName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/net/module/util/DnsSvcbRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsSvcbRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/nio/ByteBuffer;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsType:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsClass:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->getRR()[B

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    iput v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    invoke-static {v2, v0, v0}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_4

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    invoke-static {v2}, Lcom/android/net/module/util/DnsSvcbRecord;->parseSvcParam(Ljava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->getKey()I

    move-result v3

    iget-object v4, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DnsSvcbRecord, key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is repeated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DnsSvcbRecord. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remaining bytes after parsing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse SVCB target name, name size is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "SVCB rdata is empty"

    invoke-direct {v0, v2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incorrect nsClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incorrect nsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseSvcParam(Ljava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    invoke-direct {v1, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;-><init>(Ljava/nio/ByteBuffer;Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory-IA;)V

    return-object v1

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Malformed packet"

    invoke-direct {v1, v2, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method private static blacklist toKeyName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "dohpath"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ipv6hint"

    return-object v0

    :pswitch_2
    const-string v0, "ech"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ipv4hint"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "port"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "no-default-alpn"

    return-object v0

    :pswitch_6
    const-string v0, "alpn"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "mandatory"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public blacklist getAlpns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->getValue()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getDohPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public blacklist getPort()I
    .locals 2

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public blacklist getTargetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->rType:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN SVCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->dName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->ttl:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN SVCB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
